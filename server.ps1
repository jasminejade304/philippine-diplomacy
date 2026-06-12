$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add('http://localhost:8888/')
$listener.Start()
Write-Host 'Server running on http://localhost:8888'
Write-Host 'Press Ctrl+C to stop'

while ($listener.IsListening) {
    try {
        $context = $listener.GetContext()
        $request = $context.Request
        $response = $context.Response
        
        $path = $request.Url.LocalPath
        Write-Host "Request: $path"
        
        if ($path -eq '/') {
            $path = '/新建 文本文档新版.html'
        }
        
        $filePath = Join-Path (Get-Location) $path
        
        if (Test-Path $filePath) {
            $content = [System.IO.File]::ReadAllBytes($filePath)
            $response.ContentLength64 = $content.Length
            
            $ext = [System.IO.Path]::GetExtension($filePath).ToLower()
            switch ($ext) {
                '.html' { $response.ContentType = 'text/html; charset=utf-8' }
                '.css' { $response.ContentType = 'text/css; charset=utf-8' }
                '.js' { $response.ContentType = 'application/javascript; charset=utf-8' }
                default { $response.ContentType = 'application/octet-stream' }
            }
            
            $response.OutputStream.Write($content, 0, $content.Length)
        } else {
            $response.StatusCode = 404
            $notFound = [System.Text.Encoding]::UTF8.GetBytes('404 Not Found')
            $response.ContentLength64 = $notFound.Length
            $response.OutputStream.Write($notFound, 0, $notFound.Length)
        }
        
        $response.Close()
    } catch {
        Write-Host "Error: $_"
    }
}
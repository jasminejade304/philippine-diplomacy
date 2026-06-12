# 菲律宾对冲策略分析页面

一个交互式的静态网页，展示菲律宾对冲策略的深度分析。

## 功能特性

- 🎨 文字逐字动画效果
- 🃏 卡片翻转展示概念解释
- 📅 时间线案例剖析
- 📊 选项卡切换（国内视角/区域视角）
- 🗳️ 模拟投票交互功能
- 📱 响应式设计，适配手机端

## 本地预览

### 方法一：直接打开（推荐）
```bash
# 直接双击 HTML 文件或在浏览器中打开
start "新建 文本文档新版.html"
```

### 方法二：使用 Python 服务器
```bash
cd e:\做网页2
python -m http.server 8000
# 然后访问 http://localhost:8000/新建%20文本文档新版.html
```

### 方法三：使用 serve.bat
```bash
.\serve.bat
```

## GitHub Pages 部署指南

### 前置条件
1. 安装 Git：https://git-scm.com/downloads
2. 拥有 GitHub 账号：https://github.com/

### 步骤 1：创建 GitHub 仓库

1. 登录 GitHub：https://github.com
2. 点击右上角 "New" 创建新仓库
3. 仓库名称建议：`philippines-analysis` 或自定义名称
4. 选择 "Public"（公开）
5. 不要勾选 "Initialize this repository with a README"

### 步骤 2：配置本地 Git

打开终端，执行以下命令：

```bash
# 进入项目目录
cd e:\做网页2

# 初始化 Git 仓库
git init

# 配置用户名和邮箱（替换为你的信息）
git config user.name "Your Name"
git config user.email "your.email@example.com"
```

### 步骤 3：添加并提交文件

```bash
# 添加所有文件
git add .

# 提交更改
git commit -m "Initial commit: Philippines analysis page"
```

### 步骤 4：关联远程仓库

```bash
# 添加远程仓库（替换为你的仓库 URL）
git remote add origin https://github.com/your-username/your-repo-name.git

# 验证远程仓库配置
git remote -v
```

### 步骤 5：推送到 GitHub

```bash
# 推送到 main 分支
git push -u origin main
```

### 步骤 6：启用 GitHub Pages

1. 打开你的 GitHub 仓库页面
2. 点击 "Settings"（设置）
3. 在左侧菜单中选择 "Pages"
4. 在 "Source" 部分：
   - Branch: 选择 `main`
   - Folder: 选择 `/root`（根目录）
5. 点击 "Save"

### 步骤 7：访问网站

配置完成后，GitHub 会显示你的网站地址，格式如下：
```
https://your-username.github.io/your-repo-name/
```

**注意**：可能需要等待几分钟让页面生效。

## 文件结构

```
├── 新建 文本文档新版.html    # 主页面（包含 HTML、CSS、JavaScript）
├── .gitignore               # Git 忽略配置
├── README.md               # 项目说明文档
└── serve.bat               # 本地服务器启动脚本
```

## 技术栈

- HTML5
- CSS3
- JavaScript (ES6+)
- GitHub Pages

## 自定义配置

### 修改页面标题
编辑 `新建 文本文档新版.html` 文件，修改 `<title>` 标签内容。

### 修改内容
直接编辑 HTML 文件中的文本内容即可。

## 浏览器兼容性

- Chrome (推荐)
- Firefox
- Safari
- Edge

## License

MIT License

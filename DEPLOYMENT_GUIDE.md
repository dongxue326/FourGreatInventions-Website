# 网站部署指南 - 免费静态网站托管方案

## 方案一：Netlify（最简单，推荐新手）

### 步骤：
1. 访问 https://www.netlify.com/
2. 点击 "Sign up" 注册账号（可以用GitHub账号登录）
3. 登录后，将整个项目文件夹拖拽到 Netlify 的部署区域
4. 等待部署完成，Netlify 会自动给你一个网址（如：your-site.netlify.app）
5. 完成！网站已上线

**优点**：最简单，无需命令行，拖拽即可

---

## 方案二：GitHub Pages（最常用，推荐）

### 步骤：

#### 1. 创建GitHub仓库
- 访问 https://github.com
- 注册/登录账号
- 点击右上角 "+" → "New repository"
- 仓库名：`multiculturefestive-China-2025-barbieri`（或任何你喜欢的名字）
- 选择 Public（公开）
- 点击 "Create repository"

#### 2. 上传代码到GitHub
在项目文件夹中运行以下命令：

```bash
# 初始化Git仓库
git init

# 添加所有文件
git add .

# 提交文件
git commit -m "Initial commit: Four Great Inventions website"

# 添加GitHub远程仓库（替换YOUR_USERNAME为你的GitHub用户名）
git remote add origin https://github.com/YOUR_USERNAME/multiculturefestive-China-2025-barbieri.git

# 推送到GitHub
git branch -M main
git push -u origin main
```

#### 3. 启用GitHub Pages
- 在GitHub仓库页面，点击 "Settings"
- 左侧菜单找到 "Pages"
- 在 "Source" 下选择 "Deploy from a branch"
- Branch 选择 "main"，文件夹选择 "/ (root)"
- 点击 "Save"
- 等待几分钟，GitHub会给你一个网址：`https://YOUR_USERNAME.github.io/multiculturefestive-China-2025-barbieri/`

**优点**：免费、可靠、可以自定义域名

---

## 方案三：Vercel（快速，适合开发者）

### 步骤：
1. 访问 https://vercel.com/
2. 用GitHub账号登录
3. 点击 "Add New Project"
4. 导入你的GitHub仓库（需要先上传到GitHub）
5. 点击 "Deploy"，自动完成

**优点**：部署速度快，自动HTTPS

---

## 方案四：Cloudflare Pages（免费且快速）

### 步骤：
1. 访问 https://pages.cloudflare.com/
2. 用邮箱注册账号
3. 点击 "Create a project"
4. 选择 "Upload assets"（直接上传）
5. 将项目文件夹拖拽上传
6. 点击 "Deploy site"

**优点**：全球CDN加速，访问速度快

---

## 推荐流程

**如果你有GitHub账号**：使用方案二（GitHub Pages）
**如果你想要最简单的方式**：使用方案一（Netlify拖拽部署）

---

## 注意事项

1. 确保所有图片文件都在 `images` 文件夹中
2. HTML文件中的图片路径是相对路径（`images/four-1-paper.jpg`），这样部署后也能正常显示
3. 部署后如果图片不显示，检查图片文件名是否完全匹配（区分大小写）


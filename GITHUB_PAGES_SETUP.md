# GitHub Pages 部署步骤指南

## ✅ 第一步：代码已准备好
本地Git仓库已初始化，代码已提交完成。

---

## 📝 第二步：在GitHub上创建仓库

1. **访问 GitHub**：打开 https://github.com
2. **登录账号**：使用你的GitHub账号登录（如果没有账号，先注册）
3. **创建新仓库**：
   - 点击右上角的 **"+"** 按钮
   - 选择 **"New repository"**
   - 填写仓库信息：
     - **Repository name**: `multiculturefestive-China-2025-barbieri`（或任何你喜欢的名字）
     - **Description**: `中国四大发明文化节网站`（可选）
     - **选择 Public**（公开，GitHub Pages免费版需要公开仓库）
     - **不要**勾选 "Initialize this repository with a README"（我们已经有了代码）
   - 点击 **"Create repository"**

---

## 🚀 第三步：连接并推送代码到GitHub

创建仓库后，GitHub会显示一个页面，上面有仓库地址。然后**在项目文件夹中运行以下命令**：

### 方法A：使用HTTPS（推荐新手）

```bash
# 将 YOUR_USERNAME 替换为你的GitHub用户名
# 将 REPO_NAME 替换为你创建的仓库名
git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git
git branch -M main
git push -u origin main
```

**示例**（如果你的用户名是 `dongxue326`，仓库名是 `multiculturefestive-China-2025-barbieri`）：
```bash
git remote add origin https://github.com/dongxue326/multiculturefestive-China-2025-barbieri.git
git branch -M main
git push -u origin main
```

**注意**：推送时可能会要求输入GitHub用户名和密码（或Personal Access Token）

---

## 🌐 第四步：启用GitHub Pages

1. 在GitHub仓库页面，点击 **"Settings"**（设置）
2. 在左侧菜单中找到 **"Pages"**
3. 在 **"Source"** 部分：
   - 选择 **"Deploy from a branch"**
   - Branch 选择 **"main"**
   - Folder 选择 **"/ (root)"**
4. 点击 **"Save"**（保存）
5. 等待1-2分钟，GitHub会显示你的网站地址：
   - 格式：`https://YOUR_USERNAME.github.io/REPO_NAME/`
   - 例如：`https://dongxue326.github.io/multiculturefestive-China-2025-barbieri/`

---

## ✨ 完成！

你的网站现在应该可以通过GitHub Pages的网址访问了！

---

## 🔧 如果遇到问题

### 问题1：推送时要求输入密码
- GitHub现在不支持密码登录，需要使用 **Personal Access Token**
- 创建Token：GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic) → Generate new token
- 权限选择：至少勾选 `repo`
- 复制Token，推送时密码处粘贴Token

### 问题2：图片不显示
- 检查图片路径是否正确（相对路径：`images/four-1-paper.jpg`）
- 确保所有图片文件都已上传到GitHub仓库

### 问题3：网站显示404
- 确保仓库是Public（公开）
- 等待几分钟让GitHub Pages生效
- 检查Settings → Pages中的配置是否正确

---

## 📝 快速命令参考

```bash
# 查看当前状态
git status

# 查看远程仓库
git remote -v

# 如果远程仓库地址错了，可以删除后重新添加
git remote remove origin
git remote add origin https://github.com/YOUR_USERNAME/REPO_NAME.git

# 推送代码
git push -u origin main
```


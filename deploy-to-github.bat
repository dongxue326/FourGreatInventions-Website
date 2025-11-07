@echo off
echo ========================================
echo GitHub Pages 部署脚本
echo ========================================
echo.

echo 请先确保你已经在GitHub上创建了仓库！
echo 仓库名建议：multiculturefestive-China-2025-barbieri
echo.
pause

echo.
echo 正在连接GitHub仓库...
git remote add origin https://github.com/dongxue326/multiculturefestive-China-2025-barbieri.git

echo.
echo 正在切换到main分支...
git branch -M main

echo.
echo 正在推送代码到GitHub...
echo 注意：如果提示输入用户名和密码，请使用：
echo - 用户名：dongxue326
echo - 密码：使用Personal Access Token（不是GitHub密码）
echo.
git push -u origin main

echo.
echo ========================================
echo 推送完成！
echo ========================================
echo.
echo 接下来请：
echo 1. 访问 https://github.com/dongxue326/multiculturefestive-China-2025-barbieri
echo 2. 点击 Settings - Pages
echo 3. Source 选择 main branch，文件夹选择 / (root)
echo 4. 保存后等待1-2分钟
echo 5. 访问：https://dongxue326.github.io/multiculturefestive-China-2025-barbieri/
echo.
pause


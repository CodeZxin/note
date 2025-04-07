# 定义仓库路径
$repoPath = "C:\Users\zx\Desktop\note"

# 切换到仓库目录
Set-Location $repoPath

# 检查是否有文件变化
$changes = git status --porcelain
if ($changes -ne $null)
{
    # 添加所有变化的文件
    git add .
    
    # 提交更改
    git commit -m "$(Get-Date)"
    
    # 推送到 GitHub
    git push origin main
}
else
{
    Write-Output "No changes detected."
}
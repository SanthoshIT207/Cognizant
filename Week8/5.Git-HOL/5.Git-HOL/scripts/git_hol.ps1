<#
.SYNOPSIS
Git HOL Helper (PowerShell)
#>

param(
    [string]$TargetBranch = "Git-T03-HOL_002",
    [string]$Remote = "origin",
    [string]$Master = "master"
)

Write-Host "== Git HOL Helper (PowerShell) =="

# Check git
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Error "git not found in PATH. Install Git or add to PATH."
    exit 2
}

Write-Host "`nRemote repositories:"
git remote -v

$curr = git rev-parse --abbrev-ref HEAD 2>$null
Write-Host "`nCurrent branch: $curr"

Write-Host "`nChecking working tree status..."
$status = git status --porcelain
if ($status) {
    Write-Warning "Working tree is NOT clean. Uncommitted changes:"
    git status --short
    Write-Host "`nRecommended actions:"
    Write-Host "  1) Review and commit: git add <files> ; git commit -m 'message'"
    Write-Host "  2) Or stash: git stash push -m 'work-in-progress'"
    Write-Host "After cleaning the working tree re-run this script."
    exit 3
} else {
    Write-Host "Working tree is clean."
}

Write-Host "`nListing branches (local and remote):"
git branch -a

Write-Host "`nEnsuring local $Master exists..."
$hasMaster = git show-ref --verify --quiet refs/heads/$Master; if ($LASTEXITCODE -eq 0) { $true } else { $false }
if (-not $hasMaster) {
    Write-Host "Local $Master not found. Attempting to fetch from $Remote..."
    git fetch $Remote $Master
    $hasRemoteMaster = git show-ref --verify --quiet refs/remotes/$Remote/$Master; if ($LASTEXITCODE -eq 0) { $true } else { $false }
    if ($hasRemoteMaster) {
        git checkout -b $Master "$Remote/$Master"
    } else {
        Write-Warning "Could not find $Master locally or on $Remote. Skipping master pull."
    }
}

if (git show-ref --verify --quiet refs/heads/$Master) {
    Write-Host "`nChecking out $Master and pulling from $Remote/$Master..."
    git checkout $Master
    git pull $Remote $Master
} else {
    Write-Host "Skipping pull: $Master branch not available."
}

Write-Host "`nAttempting to push branch '$TargetBranch' to $Remote (if present locally)..."
$hasTarget = git show-ref --verify --quiet refs/heads/$TargetBranch; if ($LASTEXITCODE -eq 0) { $true } else { $false }
if ($hasTarget) {
    Write-Host "Found local branch $TargetBranch. Switching..."
    git checkout $TargetBranch
    git status --short
    Write-Host "Pushing $TargetBranch to $Remote..."
    git push $Remote $TargetBranch
} else {
    Write-Warning "Local branch $TargetBranch not found. To push, create it or fetch it from remote."
    Write-Host "You can create it from master (if desired): git checkout -b $TargetBranch $Master"
}

Write-Host "`nOperation completed. Inspect the remote repository to verify changes."

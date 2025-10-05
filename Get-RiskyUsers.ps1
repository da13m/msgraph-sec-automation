param([switch]$Remediate)
Connect-MgGraph -Scopes "IdentityRiskEvent.Read.All,User.ReadWrite.All"
Select-MgProfile beta
$risky = Invoke-MgGraphRequest -Method GET -Uri "https://graph.microsoft.com/beta/identityProtection/riskyUsers"
$risky.value | ForEach-Object {
  Write-Host "Risky:" $_.userPrincipalName "level:" $_.riskLevel
  if ($Remediate) {
    try { Invoke-MgInvalidateUserRefreshToken -UserId $_.id } catch { Write-Warning $_ }
  }
}

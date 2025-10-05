# Microsoft Graph – Security Automation Toolkit

PowerShell scripts that automate identity protection, token revocation, and reporting.

## Scripts
- `Get-RiskyUsers.ps1` – list risky users, optional remediation
- `Revoke-UserTokens.ps1` – invalidate refresh tokens for a user
- `Rotate-AppSecret.ps1` – rotate a client secret (demo flow)
- `Reports/PIM-Assignments.ps1` – export PIM activation/audit report

## Usage
```pwsh
Connect-MgGraph -Scopes "IdentityRiskEvent.Read.All,User.ReadWrite.All,AuditLog.Read.All"
./Get-RiskyUsers.ps1 -Remediate
```

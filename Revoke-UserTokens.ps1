param([Parameter(Mandatory)] [string]$UserId)
Connect-MgGraph -Scopes "User.ReadWrite.All"
Invoke-MgInvalidateUserRefreshToken -UserId $UserId

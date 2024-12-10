if (-not (Get-Module -Name NetSecurity -ErrorAction SilentlyContinue)) {
    Import-Module NetSecurity
}
$ruleName = "AnyDesk"
$firewallRule = Get-NetFirewallRule -DisplayName $ruleName
if ($firewallRule) {
    Disable-NetFirewallRule -DisplayName $ruleName
    Write-Output "Firewall rule '$ruleName' has been disabled."
} else {
    Write-Warning "Firewall rule '$ruleName' not found."
}

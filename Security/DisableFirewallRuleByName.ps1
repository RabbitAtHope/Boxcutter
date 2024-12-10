# Check if the module is available, if not, import it
if (-not (Get-Module -Name NetSecurity -ErrorAction SilentlyContinue)) {
    Import-Module NetSecurity
}

# Specify the name of the firewall rule to disable
$ruleName = "YourFirewallRuleName"

# Get the firewall rule by name
$firewallRule = Get-NetFirewallRule -DisplayName $ruleName

# Check if the rule exists and disable it if found
if ($firewallRule) {
    Disable-NetFirewallRule -DisplayName $ruleName
    Write-Output "Firewall rule '$ruleName' has been disabled."
} else {
    Write-Warning "Firewall rule '$ruleName' not found."
}

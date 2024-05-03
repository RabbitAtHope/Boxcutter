try {
	"⏳ Checking requirements..."
	& "$PSScriptRoot/check-smart-devices.ps1"
	& "$PSScriptRoot/check-drive-space.ps1" C
	& "$PSScriptRoot/check-swap-space.ps1"
	& "$PSScriptRoot/check-pending-reboot.ps1"
	Start-Sleep -seconds 3
	"⏳ Installing updates..."
	& winget upgrade --all --include-unknown
	"✅ Updates installed."
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
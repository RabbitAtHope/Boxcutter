try {
	Write-Output "⏳ Installing updates..."
	& winget upgrade --all --include-unknown
	Write-Output "✅ Updates installed."
	exit 0
} catch {
	Write-Output "⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($_.Exception.Message)"
	exit 1
}
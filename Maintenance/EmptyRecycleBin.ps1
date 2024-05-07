try {
    Write-Output "⏳ Cleaning recycle bin on all drives..."
	Clear-RecycleBin -Confirm:$false
	Write-Output "✅ Recycle bin emptied."
	exit 0
} catch {
	Write-Output "⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($_.Exception.Message)"
	exit 1
}
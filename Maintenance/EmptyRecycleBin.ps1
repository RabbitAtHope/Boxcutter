try {
    Write-Output "⏳ Checking if the recycle bin has any items..."
    $recycleBinItems = Get-RecycleBin
    if ($recycleBinItems.Count -eq 0) {
        Write-Output "✅️ Recycle bin is already empty."
        exit 0
    }
	
	Write-Output "⏳ Cleaning recycle bin on all drives..."
	Clear-RecycleBin -Confirm:$false
	Write-Output "✅ Recycle bin emptied."
	exit 0
} catch {
	Write-Output "⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($_.Exception.Message)"
	exit 1
}
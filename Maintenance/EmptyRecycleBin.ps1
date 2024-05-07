try {
	"⏳ Cleaning recycle bin on all drives..."
	Clear-RecycleBin -Confirm:$false
	"✅ Recycle bin emptied."
	exit 0
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
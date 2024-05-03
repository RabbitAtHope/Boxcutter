try {
	"⏳ Installing updates..."
	& winget upgrade --all --include-unknown
	"✅ Updates installed."
	exit 0 # success
} catch {
	"⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
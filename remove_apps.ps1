$ProvisionedAppPackageNames = @(
	"Microsoft.BingWeather",
	"Microsoft.Microsoft3DViewer",
	"Microsoft.MicrosoftOfficeHub",
	"Microsoft.MixedReality.Portal",
	"Microsoft.WindowsCamera",
	"Microsoft.ZuneMusic",
	"Microsoft.MicrosoftSolitaireCollection",
	"Microsoft.MicrosoftStickyNotes",
	"Microsoft.SkypeApp",
	"Microsoft.ZuneVideo",
	"Microsoft.Office.OneNote",
	"Microsoft.WindowsMaps",
	"Microsoft.WindowsAlarms",
	"Microsoft.YourPhone",
	"Microsoft.Getstarted"
)

foreach ($ProvisionedAppName in $ProvisionedAppPackageNames) {
	Get-AppxPackage -Name $ProvisionedAppName -AllUsers | Remove-AppxPackage
	Get-AppxProvisionedPackage -Online | Where-Object DisplayName -EQ $ProvisionedAppName | Remove-AppxProvisionedPackage -Online
}

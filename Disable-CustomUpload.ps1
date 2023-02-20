# user variables
$siteURL = "https://contoso.sharepoint.com/sites/ASPXSite"

# running code
Connect-PnPOnline $siteURL -Interactive
Set-PnPSite -Identity $siteURL -NoScriptSite $true
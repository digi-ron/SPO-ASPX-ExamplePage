# SPO-ASPXExamplePage
Simple example of implementing a viewable ASPX page into a SharePoint Online Document Library. SHOULD NOT BE USED IN A PRODUCTION ENVIRONMENT!!

## DO NOT USE THIS IN A PRODUCTION ENVIRONMENT
This is only made possible by the fact that Microsoft allows this functionality currently, however there should be no circumstance where a SPFx component would not serve the same purpose with more maintainability. I am not responsible for you making a production system reliant on a ASPX page that Microsoft removes your ability to use one day

## Prerequisites
- PnP PowerShell Library
- Basic knowledge of what you're doing, or a environment where it doesn't matter if you do break it at least

## Installation
1. Edit as required and run the Enable-CustomUpload.ps1 script
1. make an ASPX file, noting the following:
    - while the extension is .aspx, the file should realistically be treated as a .html file which needs to be renamed before upload, as server-side code blocks (<@ "C# code here" @>) are blocked by SPO
    - any external files such as .js files and .css files are permitted, and will work relative to the document library the page is in (for simplicity the example aspx page included is all one file)
1. Upload the file to the document library as per normal method (Web UI)
1. (optional for security) edit and run the Disable-CustomUpload.ps1 file
1. fin

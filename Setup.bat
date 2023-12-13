@if exist .\TemplateScripts\RenameTemplate.ps1 (
	@Powershell.exe -executionpolicy remotesigned -File .\TemplateScripts\RenameTemplate.ps1
	@if exist .\TemplateScripts\Marker (
	  @RD /S /Q ".\TemplateScripts"
	)
)


call premake\Windows\premake5.exe vs2022 || (
	pause
)

param (
    [Parameter(Mandatory=$true)][string]$packageName,
	[Parameter(Mandatory=$true)][string]$newVersion
)

Get-ChildItem $Path -Filter "*.csproj" -Recurse | 
	Where-Object { $_.Attributes -ne "Directory"} | 
      ForEach-Object { 
         If (Get-Content $_.FullName | Select-String -Pattern ('<PackageReference Include="' + $packageName + '"')) {
			Write-Host ("Updating the package in a csproj " + $_.FullName) -ForegroundColor green
			dotnet add $_.FullName package $packageName --version $newVersion
         }
	}
# Set-ExecutionPolicy RemoteSigned -Confirm:$false -Force
Invoke-WebRequest https://chocolatey.org/install.ps1 -UseBasicParsing | Invoke-Expression
Install-PackageProvider -Name Nuget -Force

$software = @(
    'git',
    'googlechrome',
    'notepadplusplus',
    'firefox'
)

foreach ($s in  $software) {
    choco install $s -yes
}

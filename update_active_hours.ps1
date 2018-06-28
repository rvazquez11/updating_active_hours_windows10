$registryPath = "HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings"

if (Test-Path -Path "${registryPath}") {
  $activeHoursStart = 7
  $activeHoursEnd = $activeHoursStart + 9
  if ($activeHoursEnd -gt 23) {
    $activeHoursEnd = $activeHoursEnd - 24
  }
  Set-ItemProperty -Path "${registryPath}" -Name "ActiveHoursStart" -Value "${activeHoursStart}"
  Set-ItemProperty -Path "${registryPath}" -Name "ActiveHoursEnd" -Value "${activeHoursEnd}"
}
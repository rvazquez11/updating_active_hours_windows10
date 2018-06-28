$registryPath = "HKLM:\SOFTWARE\Microsoft\WindowsUpdate\UX\Settings"

if (Test-Path -Path "${registryPath}") {
  $activeHoursStart = 15
  $activeHoursEnd = $activeHoursStart + 17
  if ($activeHoursEnd -gt 23) {
    $activeHoursEnd = $activeHoursEnd - 24
  }
  Set-ItemProperty -Path "${registryPath}" -Name "ActiveHoursStart" -Value "${activeHoursStart}"
  Set-ItemProperty -Path "${registryPath}" -Name "ActiveHoursEnd" -Value "${activeHoursEnd}"
}
Set-Location $PSScriptRoot\..
$intDir = 'int'
$rutDir = 'rut'
$out = @()
Get-ChildItem -Path $intDir -Filter '*.int' | ForEach-Object {
  $base = $_.BaseName
  $rutPath = Join-Path $rutDir ($base + '.rut')
  $hasRut = Test-Path $rutPath
  $status = 'No .rut'
  if ($hasRut) {
    $content = Get-Content $rutPath -Raw -ErrorAction SilentlyContinue
    if ($content) {
      $hasSpanish = $content -match '[ñáéíóúü¿¡]|ción| está | para | con | los | las | del | una | por | que | como | más | sus | este | esta | hay | tiene | puede | sería | fueron | cada | otros | mismo | después | hasta | donde | cuando | todo | bien | solo | según | entre | durante | sin | sobre | también | nos | les | des | uno '
      $hasCyrillic = $content -match '[\u0400-\u04FF]'
      $hasEN = $content -match '; EN:'
      if ($hasSpanish) { $status = 'Spanish!!!' }
      elseif (-not $hasEN -and -not $hasCyrillic) { $status = 'Untranslated' }
      elseif ($hasCyrillic -and $hasEN -and -not $hasSpanish) { $status = 'Done' }
      elseif ($hasCyrillic -and -not $hasSpanish) { $status = 'In Progress' }
      else { $status = 'Untranslated' }
    }
  }
  $out += [PSCustomObject]@{ Base = $base; Status = $status }
}
$out | Sort-Object Base | Export-Csv -Path 'status_temp.csv' -NoTypeInformation -Encoding UTF8

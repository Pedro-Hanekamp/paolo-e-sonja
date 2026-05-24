$base = "C:\Users\pedro\Desktop\paolo e sonja"
$errors = @()
$ok = @()

$files = @(
  # root
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/legenda.pdf"; dest="falesie_lecco\legenda.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/capitolouno.pdf"; dest="falesie_lecco\capitolouno.pdf"},
  # lariobloc
  @{url="http://larioclimb.paolo-sonja.net/cimganda_bloc_guide.pdf"; dest="lariobloc\cimganda_bloc_guide.pdf"},
  # individual crags
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/mago/mago.pdf"; dest="falesie_lecco\mago\mago.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/sassnegher/sassnegher_CAI_colico.pdf"; dest="falesie_lecco\sassnegher\sassnegher_CAI_colico.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/antimedale/antimedale.pdf"; dest="falesie_lecco\antimedale\antimedale.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/placchesanmartino/bagaidelecch.pdf"; dest="falesie_lecco\placchesanmartino\bagaidelecch.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/placchesanmartino/picett.pdf"; dest="falesie_lecco\placchesanmartino\picett.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/placchesanmartino/sanmartinoplacc.pdf"; dest="falesie_lecco\placchesanmartino\sanmartinoplacc.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/muronascosto/muronascosto.pdf"; dest="falesie_lecco\muronascosto\muronascosto.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/palasanmartino/palasanmartino.pdf"; dest="falesie_lecco\palasanmartino\palasanmartino.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/ernasorprese/ernasorprese.pdf"; dest="falesie_lecco\ernasorprese\ernasorprese.pdf"},
  @{url="http://www.paolo-sonja.net/larioclimb/falesie_lecco/magnodeno/maggiociondolo.pdf"; dest="falesie_lecco\magnodeno\maggiociondolo.pdf"},
  @{url="https://larioclimb.paolo-sonja.net/falesie_lecco/pasqua/pasqua.pdf"; dest="falesie_lecco\pasqua\pasqua.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/stoppani/stoppani_new.pdf"; dest="falesie_lecco\stoppani\stoppani_new.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/passdelfo/passdelfo.pdf"; dest="falesie_lecco\passdelfo\passdelfo.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/pizzoderna/pizzoderna.pdf"; dest="falesie_lecco\pizzoderna\pizzoderna.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/valboazzo/valboazzo.pdf"; dest="falesie_lecco\valboazzo\valboazzo.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/versasio/versasio.pdf"; dest="falesie_lecco\versasio\versasio.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/bastionatalago/bastionatalago.pdf"; dest="falesie_lecco\bastionatalago\bastionatalago.pdf"},
  @{url="http://www.paolo-sonja.net/larioclimb/falesie_lecco/branciosauro/branchiosauro.pdf"; dest="falesie_lecco\branciosauro\branchiosauro.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/discoteca/discoteca.pdf"; dest="falesie_lecco\discoteca\discoteca.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/grottamandello/grottamandello.pdf"; dest="falesie_lecco\grottamandello\grottamandello.pdf"},
  @{url="http://www.paolo-sonja.net/larioclimb/falesie_lecco/lariosauro/lariosauro.pdf"; dest="falesie_lecco\lariosauro\lariosauro.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/promessenelsole/passididanza.pdf"; dest="falesie_lecco\promessenelsole\passididanza.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/pilastrorosso/pilastrorosso.pdf"; dest="falesie_lecco\pilastrorosso\pilastrorosso.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/varenna/varenna.pdf"; dest="falesie_lecco\varenna\varenna.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/pradello/pradello.pdf"; dest="falesie_lecco\pradello\pradello.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/promessenelsole/promessenelsole.pdf"; dest="falesie_lecco\promessenelsole\promessenelsole.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/pungitopo/pungitopo.pdf"; dest="falesie_lecco\pungitopo\pungitopo.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/realba/realba.pdf"; dest="falesie_lecco\realba\realba.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/solarium/solarium.pdf"; dest="falesie_lecco\solarium\solarium.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/strapiombomandello/strapiombomandello.pdf"; dest="falesie_lecco\strapiombomandello\strapiombomandello.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/bucodelpiombo/bucodelpiombo.pdf"; dest="falesie_lecco\bucodelpiombo\bucodelpiombo.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/leves/leves.pdf"; dest="falesie_lecco\leves\leves.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/cornidicanzo/cornidicanzo.pdf"; dest="falesie_lecco\cornidicanzo\cornidicanzo.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/tramonto/tramonto.pdf"; dest="falesie_lecco\tramonto\tramonto.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/gajum/gajumalta.pdf"; dest="falesie_lecco\gajum\gajumalta.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/sprofondo/sprofondo.pdf"; dest="falesie_lecco\sprofondo\sprofondo.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/sassoderba/sassoderba.pdf"; dest="falesie_lecco\sassoderba\sassoderba.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/sassogiallo/sassogiallo.pdf"; dest="falesie_lecco\sassogiallo\sassogiallo.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/valbrona/valbrona.pdf"; dest="falesie_lecco\valbrona\valbrona.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/ceppovirale/ceppovirale.pdf"; dest="falesie_lecco\ceppovirale\ceppovirale.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/civate/civate.pdf"; dest="falesie_lecco\civate\civate.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/cornarossa/cornarossa.pdf"; dest="falesie_lecco\cornarossa\cornarossa.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/cornorat/cornorat.pdf"; dest="falesie_lecco\cornorat\cornorat.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/galbiate/galbiate.pdf"; dest="falesie_lecco\galbiate\galbiate.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/occhiolo/occhiolo.pdf"; dest="falesie_lecco\occhiolo\occhiolo.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/eretico/eretico.pdf"; dest="falesie_lecco\eretico\eretico.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/santomas/santomas.pdf"; dest="falesie_lecco\santomas\santomas.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/torremarina/torremarina.pdf"; dest="falesie_lecco\torremarina\torremarina.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/valcepelline/valcepelline.pdf"; dest="falesie_lecco\valcepelline\valcepelline.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/valdelloro/valdelloro.pdf"; dest="falesie_lecco\valdelloro\valdelloro.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/amicizia/amicizia.pdf"; dest="falesie_lecco\amicizia\amicizia.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/ballabiot/ballabiot.pdf"; dest="falesie_lecco\ballabiot\ballabiot.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/biomuro/biomuro.pdf"; dest="falesie_lecco\biomuro\biomuro.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/cainallo/cainallo.pdf"; dest="falesie_lecco\cainallo\cainallo.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/esino/esino.pdf"; dest="falesie_lecco\esino\esino.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/campelli/campelli.pdf"; dest="falesie_lecco\campelli\campelli.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/campiano/campiano.pdf"; dest="falesie_lecco\campiano\campiano.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/lares/lares.pdf"; dest="falesie_lecco\lares\lares.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/eco/eco.pdf"; dest="falesie_lecco\eco\eco.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/fusinetta/fusinetta.pdf"; dest="falesie_lecco\fusinetta\fusinetta.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/ilmurodelbutch/ilmurodelbutch.pdf"; dest="falesie_lecco\ilmurodelbutch\ilmurodelbutch.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/introbio/introbio.pdf"; dest="falesie_lecco\introbio\introbio.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/masone/masone.pdf"; dest="falesie_lecco\masone\masone.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/murodelpianto/murodelpianto.pdf"; dest="falesie_lecco\murodelpianto\murodelpianto.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/shakespeare/shakespeare.pdf"; dest="falesie_lecco\shakespeare\shakespeare.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/nibbio/nibbio.pdf"; dest="falesie_lecco\nibbio\nibbio.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/roccadibaiedo/baiedo.pdf"; dest="falesie_lecco\roccadibaiedo\baiedo.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/sassoalippi/sassoalippi.pdf"; dest="falesie_lecco\sassoalippi\sassoalippi.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/sassocarlano/sassocarlano.pdf"; dest="falesie_lecco\sassocarlano\sassocarlano.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/valgrande/valgrande.pdf"; dest="falesie_lecco\valgrande\valgrande.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/grifone/grifone.pdf"; dest="falesie_lecco\grifone\grifone.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/torrette/torrette.pdf"; dest="falesie_lecco\torrette\torrette.pdf"},
  @{url="http://larioclimb.paolo-sonja.net/falesie_lecco/vaccarese/vaccarese.pdf"; dest="falesie_lecco\vaccarese\vaccarese.pdf"}
)

foreach ($f in $files) {
  $destPath = Join-Path $base $f.dest
  $destDir = Split-Path $destPath -Parent
  if (-not (Test-Path $destDir)) {
    New-Item -ItemType Directory -Force -Path $destDir | Out-Null
  }
  try {
    Invoke-WebRequest -Uri $f.url -OutFile $destPath -UseBasicParsing -TimeoutSec 30
    $size = (Get-Item $destPath).Length
    if ($size -lt 100) {
      $errors += "TINY($size B) $($f.url)"
      Remove-Item $destPath -Force
    } else {
      $ok += "$($f.dest) ($size B)"
    }
  } catch {
    $errors += "FAIL: $($f.url) - $($_.Exception.Message)"
  }
}

Write-Host "=== SUCCESS ($($ok.Count)) ==="
$ok | ForEach-Object { Write-Host "  OK: $_" }
Write-Host ""
Write-Host "=== FAILED ($($errors.Count)) ==="
$errors | ForEach-Object { Write-Host "  !! $_" }

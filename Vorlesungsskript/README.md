# Vorlesungsskript „Grundlagen der Testtheorie“

Im Verzeichnis `Vorlesungsskript` ausführen:

```powershell
quarto render
```

Die fertige PDF liegt unter `_book/Grundlagen-der-Testtheorie-2027.pdf`.
Benötigt werden Quarto, R mit den in den Kapiteln verwendeten Paketen und XeLaTeX.

## Quellen und Konfiguration

- `_quarto.yml` legt Kapitel, PDF-Format und den Post-Render-Schritt fest.
- `index.qmd`, `Referenzen.qmd` und `_anhang/` enthalten die lokalen Texte.
- `_src` ist eine Verzeichnis-Junction auf
  `C:\Home\Home\pdwp-online\dirk-ostwald.github.io`. Die fünf Kapitel aus
  `_part_9`, die Literaturdaten und die Kapitelabbildungen werden direkt dort
  gelesen. Änderungen über `_src` ändern die Originaldateien.
- `_texheader.tex`, `_titelseite.tex`, `_abbildungen.tex` und `_logo.png`
  bestimmen Makros, Layout und Titelseite.
- `_verweise.lua` ordnet frühere Anhangsbezeichnungen zu und verlinkt ausgewählte
  Inhalte außerhalb des Skripts mit dem PDWP-Onlinelehrbuch.
- `.Renviron` setzt die UTF-8-Locale für R unter Windows.
- `_aufraeumen.ps1` verschiebt die fertige PDF nach `_book`. Quarto rendert zuvor
  im Projektordner, damit Ressourcen nicht über die externe Junction verschoben
  werden. LaTeX-Zwischendateien werden automatisch entfernt. `keep-tex: true`
  verhindert dabei Quartos Bereinigung im externen Quellprojekt. Die lokale
  TeX-Datei entfernt der Post-Render-Schritt.

Abbildungen werden als feste PDF-Dateien aus `_src/_part_9/_figures` eingebunden.
Die Erzeugungsblöcke haben `eval = FALSE`. Bei Änderungen an einer Abbildung
den zugehörigen R-Block per „Run Cell“ ausführen, danach rendern. Für die
interaktive Ausführung zuerst `efa-setup` beziehungsweise `cfa-setup`, danach
die weiteren Zellen des jeweiligen Kapitels von oben nach unten ausführen.
Das CFA-Beispiel verwendet die Datendatei aus der EFA-Simulation. Beim Rendern
steht das EFA-Kapitel deshalb vor dem CFA-Kapitel.

## Lokale Hilfsdateien

`.quarto/` wird von Quarto automatisch erzeugt und kann bei geschlossenem
Renderprozess gelöscht werden. `.gitignore`, `.sync-exclude.lst` und `.vscode/`
dienen der Versionsverwaltung, Synchronisation beziehungsweise dem Editor.
Bei Verwendung eines Synchronisationsclients muss `_src` ausgeschlossen sein,
damit das externe Quellprojekt nicht doppelt synchronisiert wird.

Falls die Junction nach einem Umzug fehlt, lässt sie sich im Skriptordner so
neu anlegen:

```powershell
New-Item -ItemType Junction -Path _src -Target 'C:\Home\Home\pdwp-online\dirk-ostwald.github.io'
```

Die Lizenz ist CC BY 4.0.

R-Caching ist für dieses Buch deaktiviert. Das Rendering benötigt keine
kapitelbezogenen _cache- oder _files-Ordner.

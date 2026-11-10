# Vorlesungsskript „Grundlagen der Testtheorie“

Das Quarto-Buch begleitet die Veranstaltung von Dirk Ostwald an der
Otto-von-Guericke-Universität Magdeburg im Wintersemester 2026/2027.

## Inhalte und Quellen

Die aktuelle [PDF-Ausgabe](_book/Grundlagen-der-Testtheorie-2027.pdf) enthält
Vorbemerkungen, **Psychologische Tests** (PDWP-Kapitel 901), **Modelle der
klassischen Testtheorie** (903), **Reliabilität und interne Konsistenz**
(904), die Referenzen und einen Anhang mit den
**Wahrscheinlichkeitstheoretischen Ergänzungen**.

Kapitel 903 umfasst einen historischen Abriss sowie die Modelle multipler,
paralleler und kongenerischer Testmessungen. Der lokal gepflegte Anhang
`_anhang/A-Wahrscheinlichkeitstheoretische-Ergaenzungen.qmd` gliedert sich in
Erwartungswerte, Varianzen und Kovarianzen sowie Normalverteilungen. Seine
Definitionen, Sätze und Beweise stammen aus den entsprechenden PDWP-Kapiteln.
Die Einträge folgen innerhalb der Abschnitte der Reihenfolge ihrer Verwendung
im Haupttext. Die Ergänzungsfolien stehen im
[zugehörigen Themenordner](../A-Wahrscheinlichkeitstheoretische-Ergänzungen/).

Die Verzeichnis-Junction `_src` bindet das Quellprojekt unter
`C:\Home\Home\pdwp-online\dirk-ostwald.github.io` direkt ein. Kapitel,
Abbildungen, Literatur und LaTeX-Makros werden dort gepflegt. Änderungen über
`_src` ändern unmittelbar die Originaldateien.

Quarto liest die drei Kapitel direkt über `_src/_part_9` aus dem
Quellprojekt. Es gibt keine zusätzlichen Quellkopien. Die Verknüpfung `_src`
ist lediglich ein weiterer Zugriffspfad auf dieselben Originaldateien.

## Einrichtung und Rendern

`Setup.cmd` legt die Verzeichnisverknüpfung bei Bedarf neu an. `Rendern.cmd`
oder `quarto render --to pdf` im Skriptordner erzeugt die PDF unter
`_book/Grundlagen-der-Testtheorie-2027.pdf`. Benötigt werden Quarto, R und
XeLaTeX. Die `.Rprofile` verwendet die R-Paketumgebung des PDWP-Quellprojekts.

Die Datei `.Renviron` setzt eine Windows-kompatible UTF-8-Locale.
`_aufraeumen.ps1` entfernt nach erfolgreichem Rendern die erzeugte Datei
`Grundlagen-der-Testtheorie-2027.tex` automatisch.

`_quarto.yml` bestimmt Titel und Kapitelreihenfolge. `_texheader.tex` enthält
die aus dem Quellprojekt übernommenen Makros mit KOMA-kompatiblen Kopfzeilen.
`_templates/fonts.latex` kombiniert Unicode-Text mit AMS-Mathematik. `_titelseite.tex` passt
Cover und Fußzeile an. `_abbildungen.tex` steuert die Abbildungsplatzierung und unterstützt das Layout
des Anhangs. `Referenzen.qmd` platziert das Literaturverzeichnis vor dem Anhang.
Logo und Gestaltung entsprechen den anderen Vorlesungsskripten. Die Lizenz
ist CC BY 4.0.

`_verweise.lua` leitet Verweise auf Inhalte außerhalb der Kapitelauswahl zu den
entsprechenden Stellen im PDWP-Onlinelehrbuch weiter. Verweise auf die im
Anhang aufgenommenen Grundlagen werden innerhalb des Skripts aufgelöst.

Das externe PDWP-Quellprojekt wird nicht in diesem Repository versioniert.
Für das erneute Rendern werden dessen aktuelle Kapitel, Literaturdaten und
Abbildungen benötigt. Die fertige PDF ist unabhängig davon direkt lesbar.

Bei Verwendung von Nextcloud sollte `_src` als ignoriertes Muster eingetragen
sein, damit die Quellen nicht doppelt synchronisiert werden.

# Vorlesungsskript „Grundlagen der Testtheorie“

Das Quarto-Buch begleitet die Veranstaltung von Dirk Ostwald an der
Otto-von-Guericke-Universität Magdeburg im Wintersemester 2026/2027.

## Inhalte und Quellen

Die aktuelle [PDF-Ausgabe](_book/Skript-Grundlagen-der-Testtheorie.pdf) enthält
Vorbemerkungen, das Kapitel **Psychologische Tests** (PDWP-Kapitel 901) und die
Referenzen. Weitere Kapitel werden im Verlauf der Veranstaltung ergänzt.

Die Verzeichnis-Junction `_src` bindet das Quellprojekt unter
`C:\Home\Home\pdwp-online\dirk-ostwald.github.io` direkt ein. Kapitel,
Abbildungen, Literatur und LaTeX-Makros werden dort gepflegt. Änderungen über
`_src` ändern unmittelbar die Originaldateien.

## Einrichtung und Rendern

`Setup.cmd` legt die Verzeichnisverknüpfung bei Bedarf neu an. `Rendern.cmd`
oder `quarto render --to pdf` im Skriptordner erzeugt die PDF unter
`_book/Skript-Grundlagen-der-Testtheorie.pdf`. Benötigt werden Quarto, R und
XeLaTeX. Die `.Rprofile` verwendet die R-Paketumgebung des PDWP-Quellprojekts.

`_quarto.yml` bestimmt Titel und Kapitelreihenfolge. `_titelseite.tex` passt
Cover und Fußzeile an. `_abbildungen.tex` steuert die Abbildungsplatzierung. Logo und Gestaltung entsprechen den anderen
Vorlesungsskripten. Die Lizenz ist CC BY 4.0.

`_verweise.lua` leitet Verweise auf Inhalte außerhalb der Kapitelauswahl zu den
entsprechenden Stellen im PDWP-Onlinelehrbuch weiter.

Bei Verwendung von Nextcloud sollte `_src` als ignoriertes Muster eingetragen
sein, damit die Quellen nicht doppelt synchronisiert werden.

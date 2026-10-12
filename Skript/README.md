# Vorlesungsskript „Grundlagen der Testtheorie“

Das Quarto-Buch begleitet die Veranstaltung von Dirk Ostwald an der
Otto-von-Guericke-Universität Magdeburg im Wintersemester 2026/2027.

## Inhalte und Quellen

Enthalten sind Vorbemerkungen, die Originalkapitel 900–905 aus dem PDWP-Lehrbuch
in aufsteigender Reihenfolge und die Referenzen:

- 900: Psychometrische Verfahren
- 901: Psychologische Tests
- 902: Repräsentationstheorie
- 903: Klassische Testtheorie
- 904: Faktorenanalyse
- 905: Item-Response-Theorie

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
Cover und Fußzeile an. Logo und Gestaltung entsprechen den anderen
Vorlesungsskripten. Die Lizenz ist CC BY 4.0.

`_verweise.lua` leitet Verweise auf Inhalte außerhalb der Kapitelauswahl zu den
entsprechenden Stellen im PDWP-Onlinelehrbuch weiter.

Bei Verwendung von Nextcloud sollte `_src` als ignoriertes Muster eingetragen
sein, damit die Quellen nicht doppelt synchronisiert werden.

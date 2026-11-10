-- Frühere Anhangsbezeichnungen auf die aktuelle Fassung abbilden.
local aliases = {
  ['thm-kovarianz-von-linearkombinationen'] = 'thm-kovarianz-von-linearkombinationen-von-zufallsvariablen',
  ['thm-symmetrie-der-kovarianz'] = 'thm-symmetrie-von-kovarianz-und-korrelation',
  ['thm-verschiebungssatz-der-bedingten-varianz'] = 'thm-kovarianzverschiebungssatz-der-bedingten-varianz',
}
-- Verweise auf Inhalte außerhalb der Kapitelauswahl.
local refs = {
  ['def-funktion'] = {ttl = 'Funktion (PDWP)', url = 'https://dirk-ostwald.github.io/_part_1/104-Funktionen.html#def-funktion'},
  ['sec-funktionen'] = {ttl = 'Funktionen (PDWP)', url = 'https://dirk-ostwald.github.io/_part_1/104-Funktionen.html#sec-funktionen'},
}
return {{
  Cite = function(el)
    local changed = false
    for _, citation in ipairs(el.citations) do
      if aliases[citation.id] then
        citation.id = aliases[citation.id]
        changed = true
      end
    end
    if changed then return el end
    if #el.citations ~= 1 then return nil end
    local ref = refs[el.citations[1].id]
    if ref then return pandoc.Link(ref.ttl, ref.url) end
  end
}}

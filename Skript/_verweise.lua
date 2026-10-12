-- Verweise auf Inhalte außerhalb der Kapitelauswahl.
local refs = {
  ['def-funktion'] = {ttl = 'Funktion (PDWP)', url = 'https://dirk-ostwald.github.io/_part_1/104-Funktionen.html#def-funktion'},
  ['sec-funktionen'] = {ttl = 'Funktionen (PDWP)', url = 'https://dirk-ostwald.github.io/_part_1/104-Funktionen.html#sec-funktionen'},
  ['thm-gemeinsame-normalverteilungen'] = {ttl = 'Gemeinsame Normalverteilungen (PDWP)', url = 'https://dirk-ostwald.github.io/_part_3/311-Normalverteilungen.html#thm-gemeinsame-normalverteilungen'},
  ['thm-linear-affine-transformation'] = {ttl = 'Linear-affine Transformation eines normalverteilten Zufallsvektors (PDWP)', url = 'https://dirk-ostwald.github.io/_part_3/311-Normalverteilungen.html#thm-linear-affine-transformation'},
  ['thm-marginale-normalverteilungen'] = {ttl = 'Marginale Normalverteilungen (PDWP)', url = 'https://dirk-ostwald.github.io/_part_3/311-Normalverteilungen.html#thm-marginale-normalverteilungen'},
}
return {{
  Cite = function(el)
    if #el.citations ~= 1 then return nil end
    local ref = refs[el.citations[1].id]
    if ref then return pandoc.Link(ref.ttl, ref.url) end
  end
}}

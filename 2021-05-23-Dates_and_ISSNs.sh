#!/bin/bash
# Hinweis auf verwendete Shell

# Spaltenbereinigung durch Löschung z.T. vorangestellter Spalten
# Suchen und Ersetzen -substitute- von IMPORTANT sowie IMPORTANT! und zwei Tabs durch nichts in der Datei 2021-05-23-Article_list_dirty.tsv
sed s/"IMPORTANT[\!]*[\t][\t]"// 2021-05-23-Article_list_dirty.tsv |

# Extrahierung der Spalten 5 (ISSN) und 12 (Date)
cut -f 5,12 |

# Bereinigung der ISSN Einträge durch Löschung von Zusätzen
# Suchen und Ersetzen von beliebig vielen Buchstabenfolgen zwischen I-S in Groß- und Kleinbuchstaben, möglichen Doppelpunkten und möglichen Leerzeichen durch nichts
sed s/[I-S]*[i-s]*[\:]*[" "]*// |

# Ausschluss unrelevanter Zeilen
# Suche und Anzeige von Zeilen mit Werten von genau vier Zeichen/Jahreszahlen
# Abkehr von 199., um theoretisch mögliche Werte wie 1984 oder 2023 nicht auszuschließen
grep .... |

# Suchen und Ersetzen der ersten Zeile durch nichts
# Aufsteigende Sortierung
# Ausschluss von Dopplungen
# Ausgabe des Ergebnisses in einer TSV-Datei mit Dateinamen 2021-05-23-Dates_and_ISSNs
sed '1d' | sort | uniq >2021-05-23-Dates_and_ISSNs.tsv

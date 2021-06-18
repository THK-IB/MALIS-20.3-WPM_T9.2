#!/bin/bash
# Hinweis auf die verwendete Shell

# Die Datei 2021-05-23-Article_list_dirty.tsv weist eine Tabelle auf, deren Zelleninhalte nicht immer den richtigen Spalten zugeordnet sind. Acht der Zeilen beinhalten zwei zusätzliche vorgelagerte Spalten mit einem Vermerk (Important) und eine leeren Zelle. Diese zusätzlichen Einträge beeinflussen die Spaltenzuordnung der nachfolgenden Zellinhalte. Im ersten Schritt wird die Tabelle deshalb dahingehend korrigieren, dass entsprechende Angaben gelöscht und alle Zelleninhalte den richtigen Spalten zugeordnet sind.

# Spaltenbereinigung durch Löschung z.T. vorangestellter Spalten
# Suchen und Ersetzen -substitute- (sed s/) von IMPORTANT mit möglicherweise anschließendem ! und zwei Tabs durch nichts in der Datei 2021-05-23-Article_list_dirty.tsv
sed s/"IMPORTANT[\!]*[\t][\t]"// 2021-05-23-Article_list_dirty.tsv |

# Um alle unrelevanten Daten auszublenden und besser Unstimmigkeiten bzw. Abweichungen zu erkennen, wird die Tabelle anschließend auf die erforderlichen Spalten mit den Angaben zu ISSN und Jahr reduziert.

# Extrahierung der Spalten (cut) 5 (ISSN) und 12 (Date)
cut -f 5,12 |

# Die erste Spalte mit den ISSN-Angaben enthält neben der eindeutigen Nummer z.T. auch vorangestellte Zusätze in verschiedenen Schreibweisen sowie Sonder- und Leerzeichen. Weil diese nicht zur Seriennummer gehören, werden sie entfernt. Da die erste Zeile statt der gesuchten Daten als Kopfzeile fungiert und für das gewünschte Ergebnis irrelevant ist, wird sie ebenfalls gelöscht.

# Bereinigung der ISSN-Einträge durch Löschung von Zusätzen sowie Löschung der ersten Zeile
# Suchen und Ersetzen (sed) von beliebig vielen Buchstabenfolgen zwischen I-S in Groß- und Kleinbuchstaben, möglichen Doppelpunkten und möglichen Leerzeichen durch nichts
# Suchen und Ersetzen (sed) der ersten Zeile (Adressierung durch 1d) durch nichts
# Verbindung beider Kommandos durch Einleitung mit -e und Setzen der einzelnen Kommandos in ''
sed -e 's/[I-S]*[i-s]*[\:]*[" "]*//' -e '1d' |

# Nach der Spaltenbereinigung, erfolgt die Bereinigung der Zeilen durch die Beschränkung auf Zeilen mit ISSN und Date-Angaben. Da jeder Datensatz sowohl eine neunstellige ISSN als auch eine vierstellige Jahresangabe enthält, kann die Filterung über die Zeichenanzahl erfolgen.

# Ausschluss unrelevanter Zeilen
# Suche und Anzeige (grep) von Zeilen mit Werten von genau vier Zeichen
# Abkehr von 199., um theoretisch mögliche Werte wie 1984 oder 2023 nicht auszuschließen
grep .... |


# In den letzten Schritten werden die Daten nach den ISSN-Einträgen sortiert. Dabei werden identische Datensätze nur einmal ausgegeben. Das Ergebnis wird in einer TSV-Datei mit der Bezeichnung 2021-05-23-Dates_and_ISSNs ausgegeben und gespeichert. 

# Aufsteigende Sortierung (sort)
# Ausschluss von Dopplungen (uniq)
# Ausgabe des Ergebnisses in einer TSV-Datei mit Dateinamen 2021-05-23-Dates_and_ISSNs (>)
sort | uniq >2021-05-23-Dates_and_ISSNs.tsv


# Als Ergebnis liegt eine TSV-Datei vor, welche in der ersten Spalte die neunstelligen ISSN und in der zweiten Spalte die vierstelligen Jahreszahlen der Datensätze sortiert nach ISSN und ohne Mehrfacheinträge aufweist.



# Achtung: Bei der Überprüfung des Ergebnisses tauchen vier Zeilen auf, welche in der Musterlösung nicht vorhanden sind.
# Unklar: Überlesene Filteranweisung? Andere Datengrundlage der Musterlösung? Unbemerkte/versehentliche Anreicherung der Ausgangsdatei?

#$ diff ib_2021-05-23-Dates_and_ISSNs.tsv 2021-05-23-Dates_and_ISSNs.tsv
#16d15
#< 0018-2745     1996
#35d33
#< 0044-2828     1996
#38d35
#< 0080-4401     1995
#48d44
#< 0306-8374     1996

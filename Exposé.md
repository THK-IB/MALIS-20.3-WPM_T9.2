# Exposé T9.2.1 Python

## Erstellung von Listen für die Aussonderung im Zentralen Aktenmagazin mittels Python

#### Hintergrund
Das Zentrale Aktenmagazin verwaltet als Altregistratur und Zwischenarchiv die geschlossenen und im täglichen Betrieb nicht mehr benötigten Akten der Deutschen Welle. Diese werden nach Ablauf der Aufbewahrungsfrist ausgesondert, bewertet und falls archivwürdig, an das Bundesarchiv oder das Historische Archiv der Deutschen Welle abgegeben.

Da für die Einhaltung der gesetzlichen Aufbewahrungsfristen der im ZAM verwalteten Akten die registraturbildenden Stellen verantwortlich sind, sind diese in den Aussonderungsprozess eingebunden. Um entscheiden zu können, ob Akten zur Kassation freigegeben werden können, werden die registraturbildenden Stellen bzw. deren Funktionsnachfolger angeschrieben und über die anstehende Aussonderung ihrer Akten informiert. Beigefügt erhalten sie Kopien der jeweiligen Abgabelisten (von bis 2012 abgegebenen Akten) bzw. ausgedruckte Einträge einer Exceltabelle (seit der digitalen Eingangserfassung im Jahr 2012).

Das aufwendige Papierverfahren erfordert auch durch den Weg über die Hauspost viel Zeit. Durch die Erstellung von Eingangskopien ist es außerdem nicht nachhaltig. Durch die aktuell überwiegend ins Homeoffice ausgelagerte Arbeitssituation und die laufenden Planungen zu New Work ist die Umstellung auf ein digitales Verfahren ebenfalls sinnvoll. Von Vorteil ist an dieser Stelle, dass vor 2012 eingegangene und noch im Bestand befindliche Akten bereits mit den Angaben aus dem Eingangsbuch im digitalen Findbuch (Excel) nachgetragen wurden. Die Aufnahme von Aktentiteln fand nicht statt, da diese nicht im Eingangsbuch vermerkt wurden. Sie könnten in den Übersichten ggf. nachgetragen oder durch verlinkte gescannte oder abfotografierte Abgabelisten ergänzt werden.

#### Anforderungen und Umsetzung
Die Daten der Akten liegen bis Mitte 2014 in Form einer _Exceltabelle_ vor. Diese soll Grundlage der zu erstellenden Übersichten sein aber in diesem Rahmen _nicht verändert_ werden. Es werden _zwei Übersichten_ definiert.

Die Erste verschafft den _zuständigen Stellen_ einen Überblick über die betreffenden Akten. Mithilfe dieser Übersichtstabelle wird geprüft, ob die Akten möglicherweise doch noch benötigt werden. Dies könnte im Falle von personellen Veränderungen nötig sein, sollte eine neue Abteilungsleitung alte, ihr unbekannte Akten, noch eine Zeit aufbewahren wollen, um sich über wichtige Vorgänge der letzten Jahre ein Bild zu verschaffen. Weiter muss die Aufbewahrungsfrist geprüft werden, die sich beispielsweise bei Verzögerungen mehrjähriger Projekte ebenfalls entsprechend ändern kann.

Die zweite Übersichtstabelle erleichtert die _interne Weiterbearbeitung_, indem sie die für die Aussonderung relevanten Informationen wie Standort und mögliche Archivwürdigkeit bündelt und außerdem Raum für Notizen lässt. Letzterer ist wichtig, damit Mitarbeitende in den Magazinräumen die Kassation bzw. die Übergabe der Akten an das Historische Archiv vermerken aber auch  Verweise auf Fehlen von Akten notieren können.

Die Daten aus dem Findbuch werden dahingehend gefiltert, dass nur _unbearbeitete Akten_ angezeigt werden, deren Aufbewahrungsfrist im letzten Jahr oder früher _abgelaufen_ ist. Anschließend werden die _Provenienzangaben_ der betroffenen Akten ohne Mehrfachnennung ausgegeben. Diese Angaben müssen gesichtet und zugeordnet werden. Da Abteilungen im Laufe der Jahre umbenannt, zusammengeführt, geteilt oder gar aufgelöst wurden, ist an dieser Stelle eine intellektuelle Prüfung  auf die aktuelle Zuständigkeit erforderlich.

Aus den bereits gefilterten Daten (unbearbeitet und mit abgelaufener Aufbewahrungsfrist) werden anschließend _alle einem Zuständigkeitsbereich zugeordneten Datensätze_ herausgegriffen und in den beiden vorab definierten _Übersichten als Exceldateien_ ausgegeben. Während erstere an die zuständige Stelle versandt wird, kommt die zweite Übersicht erst im Anschluss an den Eingang der Rückmeldung, bei der physischen Umsetzung der Aussonderung im Magazin zum Einsatz.

Diese physische Aussonderung von Akten wird später mit Datum und Kassationsvermerk durch die Mitarbeitenden im Findbuch dokumentiert. Die Erstellung zukünftiger Listen erfordert durch die Änderung der Ursprungsdatei folglich die gleichen Schritte:
1. Findbuch (Exceldatei) öffnen
2. Übersichten definieren
3. Datensätze auf noch zu bearbeitende Objekte filtern
4. Intellektuelle Zuordnung von Aktenprovenienz und aktuell zuständiger Stelle
5. Auswahl entsprechender Datensätze und Ausgabe in den zwei Übersichtstabellen in Excel

Änderungen sind lediglich bei der intellektuellen Zuordnung und  Auswahl der Datensätze nötig, die von der jeweils zu bearbeitenden Stelle abhängt. Die Erstellung der zwei Übersichten soll im Rahmen der Kursaufgabe _beispielhaft für die drei Abteilungen_ Indonesian Service, Editorial Lead, Information and News und DW Akademie durchgeführt werden. Die Umsetzung erfolgt in einem _Jupyter Notebook_. 

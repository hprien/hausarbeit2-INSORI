#import "@preview/fine-lncs:0.6.5": author, institute, lncs, proof, theorem

#let inst_princ = institute(
  "Hochschule Darmstadt",
  addr: "Schöfferstraße 3 64295 Darmstadt",
  url: "h-da.de"
)

#show cite: it => {
  if it.supplement != none {
    [#cite(it.key) (#it.supplement)] // ergibt: [1] (S. 15)
  } else {
    it
  }
}

#show: lncs.with(
  title: "Contribution Title",
  // Opt.: Set this, if the title is too long to avoid linebreaks in the header of odd pages
  // running-title: "Short version of contribution title",
  // running-author: "Override the default author shortening",
  // thanks: "Supported by organization x.",
  authors: (
    author(
      "Henning Prien",
      insts: (inst_princ),
    ),
  ),
  abstract: [
    Wirkung und Folgen Informatischen Handelns für Gesellschaft im gesellschaftlichen Zusammenhang reflektieren.
  ],
  keywords: ("Technikforschung", "Technikfolgenabschätzung", "Technikethik", "Soziologie", "Philosophie"),
  bibliography: bibliography("refs.bib"),
  // optional configuration of page (takes all page parameter)
  // page_config: (paper: "a4")
)

= Forschungsfrage
Kann man ethisch vertreten die Verzögerung eines Notrufes bei einer vermissten Person an einem Badesee mit einer Maschine zu bestimmen?

= Einführung
Jeden Sommer leisten Ehrenamtliche Rettungsschwimmer der DLRG an deutschen Stränden millionen Stunden Wasseraufsicht @dlrg-jahresbericht-2025. Hierbei kommt es immer wieder vor, dass Badegäste von ihren Begleitpersonen vermisst werden. Ein klassisches Beispiel sind hier Eltern, die ihr Kind aus den Augen verloren. Nach Eingang einer Personensuchmelung beginnt die Wachmannschaft der DLRG mit Kajaks, Fußstreifen und einem Motorrettungsboot umgehend mit der Suche des vermissten Badegasts.

== Problemstellung
Die Wachleiterin der DLRG koordiniert die DLRG Einsatzkräfte vorort und entscheidet wann per Notruf weitere Einsatzkräfte von DLRG, Feuerwehr sowie Polizei und Rettungsdienst hinzugezogen werden. Die initiale Suche mit den Kompetenzen vor Ort und ohne Hinzuziehen von externen Einsatzkräften dient dazu, weitere Einsatzkräft nicht zu überlasten. Oft werden vermisste Personenn innerhalb weniger Minuten gefunden. Die konkrete Zeit bis zur alarmierung weiterer Einsatzkräfte hängt von mehreren Faktoren ab:
- Eigenschaften der vermissten Person z.B. Alter und Schwimmfähigkeit
- SOPs (Standard Operating Procedures)
- Die vier ethischen Prinzipien (*Respekt vor der Autonomie*, *Nicht-Schaden*, *Fürsorge*, *Gerechtigkeit*) nach Beauchamp/Childress @ethic-priciples @bbk-ethische-reflexion[S. 42]
- Erfahrung bzw. Gefühl der Wachleiterin

Eine zu späte Alarmierung kann Menschenleben kosten. Eine zu frühe Alarmierung kann Einsatzkräfte unnötig binden, die an anderer Stelle dringender gebraucht werden. Ziel ist es also Einsatzkräfte nicht unnötig zu binden während die Überlebenschancen der vermissten Person maximiert werden. Die Wachleiterin ist hier einem moralischen Dilemma ausgesetzt @bbk-ethische-reflexion[S. 30].

== Eine Maschine könnte unterstützen
Historische Einsatztagebücher sowie Funkptotokolle liefern detailierte Berichte über vermisste Personen, die Kommunikation der Einsatzkräfte und über die Verfassung der vermissten Person bei deren Auffinden. Eine Maschine könnte gebaut werden, die durch hinzuziehen bestehender Einsatztagebücher berechnet, wie schnell externe Hilfe hinzugezogen werden sollte. Als Ziel würde die Schonung externer Einsatzkräfte und die Maximierung der Überlebenschancen der vermissten Person gelten.

= Theoretischer Rahmen
== Ethische Prinzipien nach Beauchamp und Childress
Für die moralische Bewertung medizinisch-ethischer Entscheidungen hat sich in der angewandten Ethik das Vier-Prinzipien-Modell von Beauchamp und Childress etabliert @ethic-priciples. Es wird auch im BBK-Leitfaden als Grundlage für Entscheidungen im Bevölkerungsschutz übernommen @bbk-ethische-reflexion[S. 42]. Die vier Prinzipien lauten:

- *Respekt vor der Autonomie*: Die Selbstbestimmung der betroffenen Person ist zu achten.
- *Nicht-Schaden*: Handlungen sollen keinen Schaden verursachen. Eine zu späte Alarmierung kann den Tod der vermissten Person bedeuten; ein unnötiger Notruf bindet Ressourcen, die anderswo Leben retten könnten.
- *Fürsorge*: Aktiv zum Wohl der betroffenen Person beitragen. Die Wachleiterin ist verpflichtet, alle verfügbaren Mittel einzusetzen, um die vermisste Person zu finden.
- *Gerechtigkeit*: Knappe Ressourcen sollen fair verteilt werden. Externe Einsatzkräfte sind begrenzt verfügbar; ihre unnötige Bindung kann andere gefährden.

Die Prinzipien stehen gleichberechtigt nebeneinander und können im Einzelfall in Konflikt geraten @bbk-ethische-reflexion[S. 42]. Genau dieser Konflikt prägt das Dilemma der Wachleiterin.

== Ethische Entscheidungsfindung im Bevölkerungsschutz
Das Bundesamt für Bevölkerungsschutz und Katastrophenhilfe beschreibt in seinem Leitfaden, für eine ethisch reflektierte
Entscheidungsfindung im Sanitäts- und Betreuungsdienst, einen siebenstufigen Prozess der ethisch reflektierten Entscheidungsfindung @bbk-ethische-reflexion[S. 51--58]:

+ *Situationswahrnehmung*: Was passiert gerade? Welche Fakten liegen vor?
+ *Problemidentifikation*: Welche moralische Herausforderung liegt vor?
+ *Handlungsoptionen*: Welche Möglichkeiten gibt es?
+ *Abwägung anhand der Prinzipien*: Wie verhält sich jede Option zu den vier Prinzipien?
+ *Entscheidung*: Welche Option ist ethisch am besten vertretbar?
+ *Handlung und Dokumentation*: Die Entscheidung wird umgesetzt und festgehalten.
+ *Reflexion*: Im Nachgang wird bewertet, ob die Entscheidung richtig war.

Dieser Prozess ist nicht als Algorithmus zu verstehen, der eine eindeutige Lösung liefert. Er ist ein Reflexionsinstrument, das Einsatzkräften hilft, ihre Wertvorstellungen explizit zu machen und begründete Entscheidungen zu treffen @bbk-ethische-reflexion.

== Actor-Network Theory nach Latour
Die Actor-Network Theory (ANT) nach Bruno Latour bietet einen Rahmen, um die Verteilung von Handlungsmacht in soziotechnischen Systemen zu analysieren @Latour1996. Zentral ist der Begriff des *Aktanten*: Alles, dem im Netzwerk Handlungsmacht zugeschrieben wird, ist ein Aktant unabhängig davon, ob es sich um einen Menschen, eine Organisation oder ein technisches Artefakt handelt @Latour1996.

ANT lehnt die klassische Unterscheidung zwischen menschlichen Akteuren (die entscheiden) und Maschinen (die ausführen) ab. Stattdessen entstehen Entscheidungen im Netzwerk, durch Übersetzungsprozesse zwischen Aktanten. Eine Maschine, die eine Empfehlung ausspricht, ist damit nicht neutral: Sie verändert die Bedingungen, unter denen die Wachleiterin entscheidet.

Für diese Arbeit ergibt sich daraus ein Netzwerk mit folgenden Aktanten:
- die vermisste Person und ihre Angehörigen
- die Wachleiterin und die DLRG-Einsatzkräfte vor Ort
- die empfehlende Maschine und ihre Trainingsdaten
- historische Einsatztagebücher als Datenquelle
- rechtliche Normen (PolG, FwG, RDG BW)
- externe Einsatzkräfte (Polizei, Feuerwehr, Rettungsdienst, DLRG)

Verantwortung lässt sich in einem solchen Netzwerk nicht auf eine einzige Person zurückführen @Latour1996 @vertrauen-in-technik.

= Verantwortung
== Rechtliche Struktur einer Personensuche am Badesee
Die Regulierung von Polizei, Feuerwehr und Rettungsdienst ist Ländersache. Für diese Arbeit wird nur der Rechtliche Ramen in Baden-Württemberg betrachtet. In Baden-Württemberg hat #quote[die Polizei [...] die Aufgabe, von dem Einzelnen [...] Gefahren abzuwehren [...]] @PolGBW2020[§1], die Feuerwehr hat #quote[zur Rettung von Menschen [...] aus lebensbedrohlichen Lagen  technische Hilfe zu leisten] @FwGBW2010[§2] und dem Rettungsdienst kommt die Aufgabe der #quote[[...] Versorgung der Bevölkerung mit Leistungen der Notfallrettung [...]] @rdg_bw_2024[§1] zu. Die rechtliche Zuständigkeit bei der Suche einer vermissten Person am Wasser ist also nicht ganz einfach und hängt zusätzlich vom Versicherer des Badebetriebs ab.

Primär für Badeaufsicht und starten der Suche ist die Betriebsaufsicht zuständig. An einigen Badebetrieben wird diese von der DLRG unterstützt. Die DLRG nimmt also in vielen Fällen als erste Instanz die Suchmeldung auf und beginnt mit der Suche. Wird ein Notruf abgesetzt ist generell die Polize für die Suche einer vermissten Person zuständig. Da bei der Suche einer vermissten Person an einem Badesee ein Notfall allerdings oft nicht ausgeschlossen werden kann, werden auch Rettungskräfte hinzugezogen. Da Feuerwehr und Rettungsdienst in Baden-Württemberg gleichrangig in separaten Gesetzen geregelt sind, bilden beide zusammen die Einsatzleitung und tragen gemeinsam die Verantwortung. Ist mit einer Menschenrettung zu rechnen, geht die Verantwortung auf die Ortspolizeibehörde über, welche über die weiteren Schritte zu entscheiden hat.

Rechtlich trägt also der Betreiber des Badebetrieb die Verantwortung für die Aufnahme der Suchmeldung, die initiale Suche und ggf. das Absetzen des Notrufes.

== Nicht eine Person ist verantwortlich
Durch die zu untersuchende Maschine würden die ersten Schritte bis zum Notruf betroffen. Der konkrete Vorschlag einer solchen Maschine würde Einfluss auf eine menschliche Entscheidung nehmen. Nach der *Actor Network Theory* entsteht hierbei ein Netzwerk von Akteuren. Dieses Netzwerk umfasst weitaus mehr Akteure als nur die Wachleiterin und die Maschine. Auch Entwickler der Maschine, Trainingsdaten, Umgebungsbedingungen und Normierungen sind Teil des Actor Networks. @Latour1996 @vertrauen-in-technik

= Moralische Bewertung der Maschine
== Nutzen erwägen
Die Wachleiterin trägt eher weniger rechtliche Verantwortung viel mehr befindet sie sich in einem Dilemma. Es gibt keine klar bessere Entchidung. Verschiedene moralische Grundsätze und Ethische Abwägungsprinzipien führen schlussendlich zur Entscheidung @bbk-ethische-reflexion. Die zu untersuchende Maschine gliedert sich in das Actor Network lediglich als eine Komponente ein, sie trifft keine Entscheidung alleine. Sie kann also dabei helfen eine riesige Erfahrungsmenge aus vergangenen Einsätzen auf die aktuell vermisste Person zu beziehen. Das hilft der Wachleiterin bei einer informierteren Entscheidung. 

= Fazit
- Die Forschungsfrage ist falsch gestellt: Es geht nicht darum, die *Verzögerung* maschinell zu bestimmen, sondern die Entscheidungsfindung der Wachleiterin zu *unterstützen* -- die Entscheidung bleibt menschlich.
- Eine Maschine, die auf Basis historischer Einsatzdaten Empfehlungen gibt, ist ethisch vertretbar, *wenn* sie als Hilfsmittel im BBK-Sinne eingesetzt wird (Schritt 3/4 des 7-Stufen-Prozesses) und keine autonome Entscheidungsgewalt erhält.
- Die vier Prinzipien nach Beauchamp/Childress sprechen nicht gegen die Maschine per se: Sie kann Fürsorge stärken (bessere Informationslage), Nicht-Schaden und Gerechtigkeit verbessern (weniger unnötige Alarmierungen).
- Risiko der Verantwortungsdiffusion (ANT): Je mehr Aktanten im Netzwerk, desto schwieriger wird es, im Schadensfall Verantwortung zuzuordnen -- Entwickler, Datenbasis und Wachleiterin tragen gemeinsam Verantwortung.
- Risiko algorithmischer Verzerrung: Trainingsdaten spiegeln vergangene Einsätze wider; systematische Fehler (z.B. Unterrepräsentation bestimmter Personengruppen) können zu Ungerechtigkeiten führen.
- Autonomie der vermissten Person: Persönliche Merkmale (Schwimmfähigkeit, Alter) müssen in die Maschine einfließen -- sonst verletzt sie das Autonomieprinzip durch Verallgemeinerung.
- Der BBK-Leitfaden betont: Kein Werkzeug nimmt der Führungskraft die Entscheidungsverantwortung ab -- auch eine KI-Empfehlung darf nicht als bindend verstanden werden.
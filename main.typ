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
Jeden Sommer leisten ehrenamtliche Rettungsschwimmer der DLRG an deutschen Stränden millionen Stunden Wasseraufsicht @dlrg-jahresbericht-2025. Hierbei kommt es immer wieder vor, dass Badegäste von ihren Begleitpersonen vermisst werden. Ein klassisches Beispiel sind hier Eltern, die ihr Kind aus den Augen verloren. Nach Eingang einer Personensuchmelung beginnt die Wachmannschaft der DLRG mit Kajaks, Fußstreifen und ggf. mit Motorrettungsbooten umgehend mit der Suche des vermissten Badegasts.

== Problemstellung
Die Wachleiterin der DLRG koordiniert die Einsatzkräfte vorort und entscheidet wann per Notruf weitere Einsatzkräfte von Polizei, Feuerwehr, Rettungsdienst und DLRG hinzugezogen werden. Die initiale Suche mit den Kompetenzen vor Ort und ohne Hinzuziehen von externen Einsatzkräften dient dazu, weitere Einsatzkräft nicht zu überlasten, denn oft werden vermisste Personenn innerhalb weniger Minuten gefunden. Die konkrete Zeit bis zur alarmierung weiterer Einsatzkräfte hängt von mehreren Faktoren ab:
- Eigenschaften der vermissten Person z.B. Alter und Schwimmfähigkeit
- SOPs (Standard Operating Procedures)
- Die vier ethischen Prinzipien (Respekt vor der Autonomie, Nicht-Schaden, Fürsorge, Gerechtigkeit) nach Beauchamp/Childress @ethic-priciples @bbk-ethische-reflexion
- Erfahrung bzw. Gefühl der Wachleiterin

Eine zu späte Alarmierung kann Menschenleben kosten. Eine zu frühe Alarmierung kann Einsatzkräfte unnötig binden, die an anderer Stelle dringender gebraucht werden. Ziel ist es also Einsatzkräfte nicht unnötig zu binden während die Überlebenschancen der vermissten Person maximiert werden. Die Wachleiterin ist hier einem moralischen Dilemma ausgesetzt @bbk-ethische-reflexion[S. 29--30].

== Eine Maschine könnte unterstützen
Historische Einsatztagebücher und Funkprotokolle enthalten detaillierte Berichte über vermisste Personen, den Verlauf der Suche und den Zustand der Person bei Auffinden. Aus dieser Datenbasis ließe sich eine Maschine entwickeln, die anhand der Eigenschaften der vermissten Person -- etwa Alter, Schwimmfähigkeit und bisherige Suchdauer -- einschätzt, wie dringend externe Einsatzkräfte hinzuzuziehen sind.

= Theoretischer Rahmen
== Ethische Entscheidungsfindung im Bevölkerungsschutz
Das Bundesamt für Bevölkerungsschutz und Katastrophenhilfe beschreibt in seinem Leitfaden, für eine ethisch reflektierte
Entscheidungsfindung im Sanitäts- und Betreuungsdienst, einen siebenstufigen Prozess der ethisch reflektierten Entscheidungsfindung @bbk-ethische-reflexion[S. 51ff.]:
+ *Identifikation des moralischen Problems*: Situation, Betroffene und Ressourcen werden beschrieben. Der Handlungsbedarf und das zugrundeliegende moralische Problem werden bestimmt.
+ *Beschaffung von Informationen*: Alle entscheidungsrelevanten Informationen werden gesammelt. Situative, Medizinische sowie rechtliche und soziale Aspekte werden heran gezogen.
+ *Suche nach Handlungsmöglichkeiten*: Verschiedene, auch unkonventionelle Optionen werden gesammelt.
+ *Ethische Analyse von Handlungsmöglichkeiten*: Pro- und Kontra-Argumente für jede Option werden anhand der ethischen Prinzipien abgewogen. Perspektiven aller Beteiligten werden berücksichtigt.
+ *Treffen einer ethisch reflektierten Entscheidung*: Die argumentativ überzeugendste und situationsangemessene Option wird gewählt, begründet und dokumentiert.
+ *Planung der Umsetzung der Entscheidung*: Zuständigkeiten werden geklärt, nächste Schritte geplant und die Umsetzung für die Wachleiterin beobachtbar gemacht.
+ *Evaluation der Entscheidung*: Die Entscheidung und ihre Folgen werden bewertet. Lessons Learned und Feedback werden für künftige Situationen festgehalten.
Dieser Prozess ist nicht als Algorithmus zu verstehen, der eine eindeutige Lösung liefert. Er ist ein Reflexionsinstrument, das Einsatzkräften hilft, ihre Wertvorstellungen explizit zu machen und begründete Entscheidungen zu treffen @bbk-ethische-reflexion.

== Ethische Prinzipien nach Beauchamp und Childress
Für die moralische Bewertung medizinisch-ethischer Entscheidungen hat sich in der angewandten Ethik das Vier-Prinzipien-Modell von Beauchamp und Childress etabliert @ethic-priciples. Es wird auch im BBK-Leitfaden als Grundlage für Entscheidungen im Bevölkerungsschutz übernommen @bbk-ethische-reflexion[S. 39ff.]. Die vier Prinzipien lauten:
- *Respekt vor der Autonomie*: Die Selbstbestimmung der betroffenen Person ist zu achten. Es sind individuelle Eigenschaften und Bedürfnisse der Person zu berücksichtigen. Beispielsweise Schwimmfähigkeit und Alter.
- *Nicht-Schaden*: Handlungen sollen keinen Schaden verursachen. Eine zu späte Alarmierung kann den Tod der vermissten Person bedeuten, ein unnötiger Notruf bindet Ressourcen, die anderswo Leben retten könnten.
- *Fürsorge*: Aktiv zum Wohl der betroffenen Person beitragen. Die Wachleiterin ist verpflichtet, alle verfügbaren Mittel einzusetzen, um die vermisste Person zu finden.
- *Gerechtigkeit*: Knappe Ressourcen sollen fair verteilt werden. Externe Einsatzkräfte sind begrenzt verfügbar, ihre unnötige Bindung kann andere Menschenleben gefährden.
Die Prinzipien stehen gleichberechtigt nebeneinander und können im Einzelfall in Konflikt geraten. Genau dieser Konflikt prägt das Dilemma der Wachleiterin. @bbk-ethische-reflexion[S. 39ff.]

== Actor-Network Theory nach Latour
Die Actor-Network Theory (ANT) nach Bruno Latour bietet einen Rahmen, um die Verteilung von Handlungsmacht in soziotechnischen Systemen zu analysieren. Zentral ist der Begriff des *Aktanten*: Alles, dem im Netzwerk Handlungsmacht zugeschrieben wird, ist ein Aktant unabhängig davon, ob es sich um einen Menschen, eine Organisation oder ein technisches Artefakt handelt.

ANT lehnt die klassische Unterscheidung zwischen menschlichen Akteuren (die alleinig entscheiden) und Maschinen (die ausführen und helfen) ab. Stattdessen entstehen Entscheidungen im Netzwerk, durch Übersetzungsprozesse zwischen Aktanten. Eine Maschine, die eine Empfehlung ausspricht, ist damit nicht neutral: Sie verändert die Bedingungen, unter denen die Wachleiterin entscheidet. Für diese Arbeit ergibt sich daraus ein Netzwerk mit folgenden Aktanten:
- die vermisste Person und ihre Angehörigen
- die Wachleiterin und die DLRG-Einsatzkräfte vor Ort
- Betreiber des Badebetriebs
- die Maschine und ihre Trainingsdaten
- historische Einsatztagebücher als Datenquelle
- rechtliche Normen (PolG, FwG, RDG BW)
- externe Einsatzkräfte (Polizei, Feuerwehr, Rettungsdienst, DLRG)
Verantwortung lässt sich in einem solchen Netzwerk nicht auf einen einzigen Aktanten zurückführen @Latour1996 @vertrauen-in-technik.

= Verantwortung
== Rechtliche Struktur einer Personensuche am Badesee
Die Regulierung von Polizei, Feuerwehr und Rettungsdienst ist Ländersache. Für diese Arbeit wird der Rechtliche Ramen in Baden-Württemberg betrachtet. In Baden-Württemberg hat #quote[die Polizei [...] die Aufgabe, von dem Einzelnen [...] Gefahren abzuwehren [...]] @PolGBW2020[§1], die Feuerwehr hat #quote[zur Rettung von Menschen [...] aus lebensbedrohlichen Lagen  technische Hilfe zu leisten] @FwGBW2010[§2] und dem Rettungsdienst kommt die Aufgabe der #quote[[...] Versorgung der Bevölkerung mit Leistungen der Notfallrettung [...]] @rdg_bw_2024[§1] zu. Die rechtliche Zuständigkeit bei der Suche einer vermissten Person an einem Badesee ist also nicht ganz einfach und hängt zusätzlich im Detail vom Versicherer des Badebetriebs ab.

Primär für die Badeaufsicht und den Beginn einer Personensuche ist die Betriebsaufsicht zuständig. Bei einigen Badebetrieben wird diese von der DLRG unterstützt. Die DLRG nimmt also in diesen Fällen als erste Instanz die Suchmeldung auf und beginnt mit der Personensuche. Wird ein Notruf abgesetzt ist generell die Polize für die Suche einer vermissten Person zuständig. Da bei der Suche einer Person an einem Badesee ein medizinischer Notfall allerdings oft nicht ausgeschlossen werden kann, werden auch Rettungskräfte hinzugezogen. Feuerwehr und Rettungsdienst sind in Baden-Württemberg gleichrangig in separaten Gesetzen reguliert, weshalb sie gemeinsam die Einsatzleitung bilden und die Verantwortung tragen. Ist mit einer Menschenrettung nicht mehr zu rechnen, geht die Verantwortung auf die Ortspolizeibehörde über, welche über die weiteren Schritte zu entscheiden hat.

Rechtlich trägt also der Betreiber des Badebetriebs die Verantwortung für die Aufnahme der Suchmeldung, die initiale Suche und ggf. das Absetzen des Notrufes.

== Nicht eine Person ist verantwortlich
Die zu untersuchende Maschine würde in den Ablauf eingreifen, bevor ein Notruf abgesetzt wird. Indem sie einen konkreten Vorschlag unterbreitet, nimmt sie Einfluss auf eine Entscheidung, die formell bei der Wachleiterin liegt. Nach der Actor-Network Theory entsteht dadurch ein Netzwerk von Aktanten, das weit über Wachleiterin und die Maschine hinausreicht. Eigenschaften der vermissten Person und ihre Angehörigen können großen Einfluss auf die Suche haben. Die Einsatzkräfte vor Ort und deren Qualifikation sowie Witterung und Tageszeit könenn ausschlaggebend dafür sein, wie gut vor der alarmierung gesucht werden kann. Der Betreiber des Badebetriebs definiert mit Dienstanweisungen einen Rahmen der Suche und nicht zuletzt agieren auch Entwickler der Maschine als Aktanten im Netzwerk. Verantwortung lässt sich nach ANT unter diesen Bedingungen nicht auf eine einzige Person zurückführen, sondern verteilt sich auf alle beteiligten Aktanten. @Latour1996 @vertrauen-in-technik

= Moralische Bewertung der Maschine
== Nutzen erwägen
Die Wachleiterin befindet sich in einem moralischen Dilemma, das sich aus der Spannung zwischen den vier ethischen Prinzipien ergibt. Das Prinzip der Fürsorge verlangt, alles Mögliche zu tun, um die vermisste Person zu finden, und spricht daher für eine sofortige Alarmierung externer Einsatzkräfte. Dem entgegnet das Prinzip der Gerechtigkeit: Externe Kräfte sind begrenzt verfügbar, und eine unnötige Alarmierung bindet Ressourcen, die an anderer Stelle Leben retten könnten. Das Prinzip des Nicht-Schadens verstärkt beide Seiten zugleich, denn sowohl eine zu späte als auch eine zu frühe Entscheidung kann Schaden verursachen. Respekt vor der Autonomie der gesuchten Person verlangt schließlich, die individuellen Eigenschaften der vermissten Person, etwa Alter und Schwimmfähigkeit, in die Abwägung einzubeziehen. Es gibt keine eindeutig richtige Entscheidung, die Prinzipien müssen situativ gewichtet werden @bbk-ethische-reflexion.

Im BBK-Leitfaden ist die zu untersuchende Maschine als Hilfsmittel in den Schritten 2 und 3 des siebenstufigen Prozesses zu verortet: Sie unterstützt die Informationsbeschaffung sowie die Suche nach Handlungsmöglichkeiten @bbk-ethische-reflexion[S. 51ff.]. Im Sinne der Actor-Network Theory ist sie dabei ein Aktant im Netzwerk, kein autonomer Entscheidungsträger. Indem sie eine große Menge historischer Einsatzdaten auf die aktuelle Situation bezieht, kann sie die Informationslage der Wachleiterin verbessern und so eine begründete und informierte Entscheidung unterstützen.

Diesem Nutzen steht ein technischen Risiko gegenüber. Die Trainingsdaten spiegeln vergangene Einsätze wider. Sind bestimmte Personengruppen darin unterrepräsentiert, können systematische Verzerrungen entstehen, die dem Prinzip Respekt vor der Autonomie widersprechen.

= Fazit
Die Forschungsfrage -- ob es ethisch vertretbar ist, die Verzögerung eines Notrufes maschinell zu bestimmen -- ist in dieser Form nicht ganz zutreffend gestellt. Eine Maschine, die auf Basis historischer Einsatzdaten eine Zeitempfehlung ausgibt, bestimmt keine Verzögerung, sie unterstützt die Entscheidungsfindung der Wachleiterin.

Im Rahmen des BBK-Leitfadens lässt sich die Maschine als Hilfsmittel in den Schritten der Informationsbeschaffung und der Suche nach Handlungsmöglichkeiten einordnen @bbk-ethische-reflexion[S. 51ff.]. Dort eingesetzt, stärkt sie das hier ausschlaggebende Prinzip des Respekts vor Autonomie. Denn eine bessere Informationslage kann zu informierteren und damit individuellen Entscheidungen beitragen. Unnötige Alarmierungen können so vermieden werden, was im Sinne der Prinzipien Nicht-Schaden und Gerechtigkeit gegenüber anderen Patienten ist. Nicht gebundenen Einsatzkräften können diesen Patienten so helfen. Dem steht das Risiko algorithmischer Verzerrung entgegen. Sind Personengruppen in den Trainingsdaten unterrepräsentiert, entstehen systematische Ungerechtigkeiten, die dem Prinzip der Autonomie widersprechen.

Aus der Perspektive der Actor-Network Theory verändert die Maschine die Bedingungen, unter denen die Wachleiterin entscheidet. Die Maschine gliedert sich also als ein Aktant ein, der das Netzwerk mitgestaltet. Verantwortung verteilt sich damit auf Entwickler, Trainingsdaten, rechtliche Normen und die Wachleiterin. Sie lässt sich nicht auf einen einzigen Aktanten zurückführen @Latour1996. 

Der transparenten Gestaltung der Maschine und der Kommunikation ihrer Grenzen kommt besondere Bedeutung zu, denn technische Risiken und Grenzen bleiben bestehen. Das Verständnis dieser Risiken und Grenzen kann zu einer gewinnbringenden Zusammenarbeit führen.

Ethisch vertretbar ist eine solche Maschine somit unter der Bedingung, dass sie die menschliche Urteilskraft unterstützt, nicht ersetzt und dass ihre Einschränkungen offen kommuniziert werden.
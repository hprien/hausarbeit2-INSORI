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

= Verantwortung
== Wer wird von wem zur Verantwortung gezogen
Rechtliche Verantwortung, Ethische Verantwortung

== Aktuelle Verantwortungsstruktur
Das Thema Verantwortung ist bei Sucheinsätzen gar nicht so leicht. Ich bin kein Jurist, aber vereinfacht gesagt ist die Suche von Personen eigentlich Aufgabe der Polizei. Da jedoch oft bei Personensuchen am Wasser ein Notfall nicht ausgeschlossen werden kann, sind auch Rettungskräfte hinzuzuziehen. Bei uns am Hardtsee hat von meinem Verständnis primär die Betriebsaufsicht die Verantwortung. Diese hat die Gemeinde (bzw. der diensthabende Platzwart, welcher in Zukunft nur noch Betriebsaufsicht heißen wird) inne. Wir unterstützen die Betriebsaufsicht nur indem wir die Wasseraufsicht übernehmen (deutlich kleinerer Verantwortungsbereich). Wenn ein Notruf abgesetzt wird, werden Rettungsdienst und Feuerwehr alarmiert. Da in Baden-Württemberg mit dem Rettungsdienst- und Feuerwehrgesetz zwei Gesetze existieren, die gleichrangig sind, gibt es von Rettungsdienst und Feuerwehr zwei Einsatzleiter, welche gemeinsam eine Einsatzleitung zu bilden haben und gemeinsam die Verantwortung tragen. Sobald nicht mehr mit einer Menschenrettung zu rechnen ist, geht die Verantwortung auf die Ortspolizeibehörde (ist auch die Gemeinde) über, welche über die weiteren Schritte zu entscheiden hat.
Wie es in Hessen (da studierst du ja) ist, müsste ich nochmal nachschauen. Es könnte sein, dass es dort ein gemeinsames Feuerwehr- und Rettungsdienst-Gesetz gibt...

== Verantwortungsstruktur bei Einsatz einer Maschine
Diese Maschine würde Entscheidungen über Menschenleben treffen.
Prallelen könnten zu selbstfahrenden Autos sowie Software hergestellt werden, die in medizinischen Triage Situationen Überlebenschancen von Patienten bestimmt. Ebenfalls kann Bezug zur aktuellen Rechtslage hergestellt werden denn für selbstfahrende Autos und medizinische Triage Situationen gibt es Rechtsprechungen.
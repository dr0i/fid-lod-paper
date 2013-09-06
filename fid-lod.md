Dezentral, offen, vernetzt - Überlegungen zum Aufbau einer LOD-basierten FID-Metadateninfrastruktur
===================================================================================================

English:
--------

Title: LOD as a vehicle to build a sustainable FID metadata
infrastructure

Keywords: Linked Open Data, libraries, metadata infrastructure

Abstract:

This article reflects the ["Richtlinien für das DFG geförderte System
der Fachinformationsdienste für die
Wissenschaft"](http://www.dfg.de/formulare/12_102/12_102_de.pdf) and
shows how Linked Open Data (LOD) can help with rebuilding the
Sondersammelgebiete (SSG) to Fachinformationsführer (FID). In
particular, the aspect of (meta-)data infrastructure is discussed. The
thesis of this article is that LOD is predestined to build the base of a
sustainable metadata infrastructure.

Authors:

[Pascal Christoph](http://lobid.org/person/pc) and [Adrian Pohl](http://lobid.org/person/ap)
Jülicher Str. 6 D-50674 Cologne  
E-Mail: christoph@hbz-nrw.de  
E-Mail: pohl@hbz-nrw.de  

Deutsch:
--------

Schlüsselwörter: Linked Open Data, Fachinformationsdienste ,
Metadateninfrastruktur

Abstract:

Dieser Artikel reflektiert die ["Richtlinien für das DFG geförderte
System der Fachinformationsdienste für die
Wissenschaft"](http://www.dfg.de/formulare/12_102/12_102_de.pdf) und zeigt
dabei auf, wie Linked Open Data (LOD) beim Umbau der Sondersammelgebiete
(SSG) zu Fachinformationsdiensten (FID) helfen kann. Es wird dabei
insbesondere auf den Aspekt (Meta-)Dateninfrastruktur eingegangen. Die
These dieses Artikels ist, dass LOD prädestiniert ist, einen wichtigen Eckpfeiler
einer nachhaltigen Metadateninfrastruktur zu bilden.

Pascal Christoph kennt ViFas und SSGs aus seiner Arbeit von 2008-2010 am
[hbz](http://www.hbz-nrw.de/) als technischer Umsetzer des Projekts
["vascoda"](http://de.wikipedia.org/wiki/Vascoda). Seit 2010 arbeitet er
am Linked Open Data Dienst ["lobid.org"](http://lobid.org) des hbz .

Adrian Pohl arbeitet seit 2008 im Hochschulbibliothekszentrum des Landes Nordrhein-Westfalen (hbz). Sein Fokus liegt auf dem Bereich Linked Open Library Data und dabei insbesondere auf dem Aufbau und der Pflege des LOD-Service lobid.org. Seit Juni 2010 ist Adrian Koordinator der OKFN Working Group on Open Bibliographic Data.

Inhaltsverzeichnis
------------------

1.  [Einführung](#einführung)
2.  [Definition LOD](#definition)
3.  [Hintergrund - Erfahrungen aus vascoda](#hintergrund)
4.  [Cooperare necesse est](#cooperare)
5.  [Aufgabenumsetzung](#aufgabenumsetzung)
    5.1  [Metadatenmapping, Datentransformation und automatische
        Datenanreicherung](#metadatenmapping)
    5.2  [Aufbau von Rechercheindizes und Web-APIs](#aufbau)
    5.3  [Hubs zur intellektuellen Datenanreicherung](#hubs)
6.  [Grundlegendes Desiderat an FIDs](#grundlegendes)
7.  [Umsetzung und Koordination der Datenprozesskette](#umsetzung)
8.  [Fazit](#fazit)
9.  [Referenzen](#referenzen)

##<a name="einführung"></a>Einführung

Die "Richtlinien für das DFG geförderte System der Fachinformationsdienste für die Wissenschaft" der Deutschen Forschungsgemeinschaft (DFG) und das damit verbundene Förderprogramm haben den Aufbau sogenannter "Fachinformationsdienste für die Wissenschaft" (FID) zum Ziel. 
Diese FIDs sollen die bestehenden Strukturen der Sondersammelgebiete (SSG) und Virtuellen Fachbibliotheken (ViFa) zusammenführen und schließlich ersetzen. Diese von der DFG geförderten Strukturen dienen seit jeher dem Zweck der wissenschaftlichen Informationsversorgung. 
Dementsprechend haben die FIDs zukünftig die Aufgabe, die Informationsbedürfnisse von Fachwissenschaftlerinnen und Fachwissenschaftlern zu befriedigen. 
Die DFG verbindet mit "der Verabschiedung des neu ausgerichteten Förderprogramms ... die Hoffung, dass die 'Fachinformationsdienste für die Wissenschaft' als ein flexibles und zukunftsfähiges System der Informationsversorgung der Wissenschaft dienen können". 
  
Die These dieses Artikels ist, dass Linked Open Data (LOD) einen wichtigen Beitrag dazu liefert, den Anforderungen eines flexiblen und zukunftsfähigen Systems der Informationsversorgung
gerecht zu werden.  
Im folgenden werden zunächst knapp die Best Practices von Linked Open Data vermittelt. 
Sodann werden Erfahrungen dem vascoda-Projekt geschildert und Probleme des Projekts aufgezeigt, die mit einem LOD-Ansatz hätten vermieden werden können. 
In Abschnitt  {} werden Entwicklungs-, Kommunikations- und Organisationsprinzipien genannt, die in der LOD-Gemeinschaft gepflegt werden und 
den kollaborativen Aufbau einer nachhaltigen und flexiblen Informationsinfrastruktur begünstigen. 
 
in diesen Kontext und motiviert dazu, WissenschaftlerInnen an die Hand
zu nehmen und durch die Informationsflut auf der Basis von LOD zu
geleiten. Der Wissenschaftsrat schreibt 2011:

"Die Integration von Katalogdaten in Metadatenbanken setzt international
gültige Standards voraus. Im Bibliotheksbereich werden derzeit zwei
verschiedene, nicht kompatible Ansätze praktiziert: die Zusammenführung
von Katalogdaten in einer bibliographischen Datenbank, z.B. WorldCat ,
welche die Kataloge mehrerer tausend, auch deutscher
OCLC-Mitgliedsbibliotheken umfasst, sowie die Bereitstellung von
Katalogdaten in Form in das offene Web integrierter Linked Open Data .
Der Wissenschaftsrat bekräftigt seine Empfehlung, dass die
bibliothekarischen Verbünde im Interesse der Wissenschaft sowie ihrer
eigenen Zukunftsfähigkeit rasch zu einer abgestimmten strategischen
Entscheidung für einen der beiden Ansätze finden müssen. "  
_Wissenschaftsrat: Übergreifende Empfehlungen zu
Informationsinfrastrukturen. 2011, S. 54 ._

Zwar unterstützt die DFG lediglich die Migration der Verbünde in
vorhandene Datenbanken wie WorldCat und ExLibris
Alma^[Siehe http://dfg.de/foerderung/info_wissenschaft/archiv/2013/info_wissenschaft_13_11/index.html],
doch stimmt 1. die Aussage des Wissenschaftsrates nicht ganz (auch der
WorldCat veröffentlicht seine Daten als Linked Data und auch bei
ExLibris gibt es Bewegung in diese
Richtung^[Siehe http://openbiblio.net/2011/08/11/ex-libris-alma-and-open-data/]
und lassen sich 2. viele zusätzliche Dienste und Dienstleistungen, wie
z.B. die Integration in das WWW oder in
Internetsuchmaschinen ohne Linked Data gar nicht oder nur
umständlich bewerkstelligen.^[Siehe dazu z.B.
[Schema.org](https://en.wikipedia.org/wiki/Schema.org), dass von den
großen Internetsuchmaschinenbetreibern initiiert wurde, um die Webseiten
für Maschinen mittels Linked Data besser verstehbar zu machen. Einige
ViFas haben schon begonnen, Schema.org in ihre Portale zu integrieren,
z.B. http://edoc.vifapol.de. [Econstor](http://linkeddata.econstor.eu/),
ein Dokumentenserver der ViFas,
bietet asu diesem Grund schon seit geraumer Zeit Linked Data an.] Deshalb zeigt dieser Artikel warum,
unabhängig von der Entscheidung gegen die Förderung einer
selbstaufgebauten LOD-basierten Infrastruktur durch die Verbünde, die
LOD-basierte Metadateninfrastruktur, die den WorldCat und ExLibris' Alma
durchaus ergänzt und integriert, in die Lösung der an die FIDs
gestellten Aufgaben passt.

Konkret nennen die Richtlinien der DFG folgende Kernaufgaben von
Fachinformationsdiensten:

" Die Fachinformationsdienste gewährleisten eine optimale Versorgung -
durch die überregionale Bereitstellung und Archivierung relevanter
gedruckter und digitaler Medien und Fachinformationen, - durch den
Aufbau und die Pflege komfortabler Nachweis- und Recherchesysteme, die
technisch auf dem neuesten Stand gehalten werden und - durch
vorausschauendes Engagement in der Entwicklung allgemeiner und
fachspezifischer Informationsdienstleistungen (darunter beispielsweise
Rechercheaufträge, Beratungsleistungen, Digitalisierung mit
Mehrwertdiensten, Tiefenerschließung)."  
_Fachinformationsdienste für die Wissenschaft. Richtlinien
für das DFG geförderte System der Fachinformationsdienste
für die Wissenschaft. 2013, S. 5-6 ._

Auf den Punkt "Aufbau und die Pflege komfortabler Nachweis- und
Recherchesysteme" wird unten näher eingegangen. Den Autoren fehlt in den
anderen Bereichen die Expertise, auch wenn LOD hier wohl einige Vorteile
mit sich bringen kann, da auch bei der Auswahl von Ressourcen resp.
deren Archivierung Metadaten eine wichtige Rolle spielen.

##<a name="definition"></a>Was ist Linked Open Data?

Die grundlegende Idee von LOD ist Offenheit. "Offenheit" gestaltet sich
hierbei in mehreren Dimensionen:

* Die *Lizenz* ist offen, d.h. die
Daten dürfen von jedem verändert und nachgenutzt werden.
* Das *Datenmodell* ist offen, d.h. es nicht nicht starr, sondern kann
flexibel erweitert und ergänzt werden.
* Die zugrundeliegenden *Standards* sind offen. Ihre Entwicklung wird vom World Wide Web
Consortium ([W3C](http://w3c.org)) koordiniert.
* Die *Software* rund um LOD ist - im Vergleich zu anderen
Bereichen - bestimmt von einer großen Zahl an
Open-Source-Entwicklungen.^[Es ist dennoch zu betonen, dass es auch eine große Auswahl an proprietären Softwarelösungen gibt - insbesondere bei sogenannten "Triple Stores" oder Graphdatenbanken.]
* Die *Teilnahme* ist offen für jeden, da LOD - wie das World Wide Web -
dezentral ist. Es gilt das Motto: "Anybody can say anything about
anything".^[zitiert nach Tim Berners Lee, 1999:
http://lists.w3.org/Archives/Public/www-rdf-interest/1999Dec/0113.html]

LOD ist eng mit dem sog. World Wide Web (WWW) verzahnt. Es baut auf den
gleichen Technologien und Standards auf. Oft wird das WWW auch als "web
of documents", also als "Netz von Dokumenten", bezeichnet. LOD hingegen
kann als "web of data", als "Netz von Daten", bezeichnet werden. Während
im WWW also Dokumente miteinander verknüpft sind, so sind im LOD-Netz
Daten miteinander verknüpft. Ein wesentlicher Unterschied von LOD und
den Hyperlinks zwischen HTML-Dokumenten (also den "Links" in z.B.
Webseiten) ist die Art der Verknüpfung: Das LOD Paradigma erzwingt
bedeutungsvolle Beziehungen von Subjekt (also das, was verlinkt wird)
und dem Objekt (also das, wohin verlinkt wird). Das ist im Vergleich zu
bibliothekarischen Datenbanken nichts Neues, denn dort werden stets
Aussagen gemacht wie "Buch X hat den Autor Y" und "Autor Y wurde geboren
im Jahr Z".

Anders als bei Datenbanken, die im "deep web" versteckt sind, kann bei
LOD jeder Informationen zufügen: LOD ist schließlich Bestandteil des WWW
und damit kann, wer eine Webseite anlegen kann, auch LOD herstellen und
Informationen dem "web of data" hinzufügen und sich der dort
befindlichen Daten bedienen. So wächst die LOD Datenbank, und zwar vor
allem durch Verlinkung: Wissenschaftler A schreibt einen Artikel der
Ressource B referenziert und Wissenschaftler C widerspricht. Diese
Referenzen sind nichts anderes als Verlinkungen zwischen A und B und
zwischen A und C, jeweils mit einer speziellen semantischen Relation.
Werden diese Beziehungen in dem Artikel als LOD hinterlegt, z.B. durch
RDFa in HTML oder XMP in PDF/A, und erhält der Artikel eine HTTP-URI und
ist also Teil des WWW, dann ist damit die LOD Datenbank gewachsen
^[Auf diese Weise ließe sich auch recht einfach ein aussagekräftiger "Impact Factor" berechnen: wie oft wurde Artikel A referenziert? Wie oft wurden die Artikel, die Artikel A referenzieren, referenziert? Mit welchen Schlagworten sind die Ressourcen versehen? Usw.]
.

Im LOD Datenmodell (dem sog.
["Graphen"](https://de.wikipedia.org/wiki/Graph_%28Graphentheorie%29)
gibt es per se keinen abgeschlossenen Datensatz, da alles mit allem
verknüpft sein kann und somit weder Anfang noch Ende hat. Der
Datenkonsument muss selber entscheiden, wo der Datensatz anfängt, wo er
aufhört, und welche Daten z.B. als vertrauenswürdig angenommen werden
und welche vielleicht z.B. Spam
sind.^[Da die Daten global verfügbar sind wird zukünftig immer weniger redundant mehrfachkatalogisiert. Die Arbeit wird aber nicht weniger, sondern eher mehr, und verlagert sich in Richtung Moderation und Selektion von Daten aus dem "web of data".]Das
Datenmodell von LOD lässt also unbegrenzte neue Aussagen zu, während bei
herkömmlichen Austauschformaten die maximale Größe eines
Titeldatensatzes festgelegt
ist^[bei MAB2 und MARC sind das 9999 Bytes]. Für LOD
gibt es auch keine Beschränkung in der Verwendung von semantischen
Beziehungen, also das, was in den herkömmlichen Datenmodellen die
Bedeutung tragenden Feldern sind. Zwar lassen sich auch diesen alten,
aus den 70er Jahren und für Magentbänder optimierten Datenstrukturen
neue Felder teilweise durch mühselige Standardisierungsprozesse zufügen,
und teilweise auch beliebig und von Institution zu Institution
verschieden selbstdefinieren (was zu Inkompatibilität der Kataloge führt),
doch sind diese "Format"-Beschreibungen nicht offen und funktionieren
deshalb nur in ihrem begrenzten System: der Bibliothekswelt.^[Selbst dort funktionieren
sie nicht besonders gut. So ist es z.B. nicht einfach möglich, aus dem hbz Katalog
die Ressourcen der einzelnen ViFas und SSGs herauszufiltern. Im LOD Paradigma wäre dies (Zufügen der Kategorisierung und Auslesen derselben) trivial.]
Die Metadaten der Bibliothekswelt sind aber viel zu wertvoll, d.h. nützlich,
um sie nicht auch in das WWW via LOD zu integrieren. Sie sind dafür auch
besonders gut geeignet: Tatsächlich sind die Metadaten gerade im
deutschsprachigen Raum auch in ihren alten Datenmodellen MAB/MARC/PICA
(usw.) sehr viel besser verknüpft als in der anglo-amerikanischen Welt.
Es gibt Über/Unterordnungen (es gibt also jeweils eigenständige
Titeldatensätze z.B. von einem Band und einem zugehörigen Sammelband),
und auch die Verknüpfungen zu z.B. Schlagwortdateien und der
Personendatei GND hat lange Tradition. Metadaten mit diesen
Verknüpfungen und Hierarchisierungen lassen sich optimal in LOD
überführen und darüberhinaus viel weiter treiben, als das mit MARC/MAB jemals möglich wäre.

So, wie das WWW dezentral aufgebaut ist und es viele verschiedene
Webseitenbetreiber gibt (wenn sich auch immmer wieder einige zentrale
Seiten und Dienste herausbilden, wie aktuell etwa Google, Facebook,
Wikipedia (die, nebenbei, alle aktiv Linked (Open) Data nutzen) und
Amazon), so liegen auch die verlinkten offenen Daten verteilt im
Netz. Dieses LOD wird von verschiedenen Interessenten
aggregiert und integriert, sei es um in eigenen internen Datenbanken "zu
verschwinden", um neue Webanwendungen herzustellen oder/und um wiederum
als LOD veröffentlicht zu werden. Im letzteren Fall wurde den
ursprünglichen Daten neue Daten hinzugefügt, die wiederum re-konsumiert
werden können.^[Wenn ein Datensatz dadurch größer als 9999 Bytes wird, so stellt dies,
anders als bei MARC/MAB, kein Problem dar. Tatsächlich ist die Größe
eines Datensatzes beliebig.] So kann z.B. die DBpedia (also
die LOD Variante der Wikipedia) die auf sie zeigenden Verknüpfungen
rekonsumieren und die eigenen Daten mit z.B. Metadaten der
Bibliothekskataloge anreichern.^[Zwar ist dies noch nicht bereits geschehen, aber der Weg dahin ist
eingeschlagen, siehe https://github.com/dbpedia/dbpedia-links/ ] Eine
interessante Perspektive für Bibliotheken ist, wenn diese Daten z.B. via
Wikidata in die Wikipedia gelangen und dort die Verfügbarkeit in den (durch die
IP des Nutzers ermittelte) nächstgelegenen Bibliotheken angezeigt
werden.

Doch LOD ist nicht darauf beschränkt, innerhalb von über Webservern
zugänglichen Dokumenten eingebettet zu sein. Es kann genausogut in
lokalen Seiten eingebunden sein, wie etwa einfaches HTML oder PDF^[
[LOD wird dabei injeziert via RDFa resp. XMP], die auf dem lokalen
Rechner liegen. Diese Dokumente werden damit zur maschinell auswertbaren
Datenbank. Abfragen wie "gib mir alle Dokumente, die von Personen
geschrieben wurden, die im 16 Jhd. geboren sind und mit 'Chemie'
verschlagwortet sind", sind damit einfach realisierbar. Dabei ist es
ausreichend, lediglich zwei Triple, also zwei "Dateneinträge", dem
Dokument zuzufügen: der eine Eintrag verknüpft das Dokument mit einer
LOD fähigen Schlagwortdatei, z.B. der Dewey Decimal Classification oder
der GND, der zweite Eintrag verknüpft das Dokument mit der Personen ID.
Alle weiteren Daten (multilinguale natürlichsprachige Bezeichnung des
Schlagwortes, Lebensdaten des Autors usw.) müssen nicht in das Dokument
mitaufgenommen werden, sondern sind, da sie im WWW gespeichert sind, von
dort automatisiert abrufbar.

Eine technischere Definition von LOD ist:

"Linked Open Data sind offene Daten (Open Data), die gemäß
Linked-Data-Prinzipien (Linked Data) unter Nutzung der entsprechenden
offenen W3C-Standards bereitgestellt werden. Während Open Data keine
Datenformate vorgibt, solange es sich um offen dokumentierte Formate
handelt, geht es bei Linked Data um die Etablierung von Best Practices
für die Integration von Daten in das WWW auf Basis von Standards des
World Wide Web Consortium (W3C). Die vier von Tim
Berners-Lee^[Berners-Lee ist ein britischer Physiker und Informatiker, Erfinder von HTML und Begründer des WWW, siehe https://de.wikipedia.org/wiki/Tim_Berners_Lee]
formulierten Linked-Data-Prinzipien lauten: 

1. Benutze URIs als Namen für Dinge. 
2. Benutze HTTP-URIs, damit Menschen die Namen nachschlagen können. 
3. Wenn jemand eine URI nachschlägt, liefere nützliche Informationen auf Basis der Standards (RDF, SPARQL). 
4. Verlinke zu anderen URIs, so dass mehr Dinge entdeckt werden können.

Linked Data baut also auf den bestehenden Web-Standards Uniform Resource
Identifiers (URI) und Hypertext Transfer Protocol (HTTP) auf und ergänzt
diese durch das Datenmodell RDF (Resource Description Framework) zur Repräsentation von Information,
SPARQL (SPARQL Protocol And RDF Query Language)zu Abfrage von RDF-Daten und RDFS sowie OWL (Web Ontology Language) zur Schaffung von
Vokabularen/Ontologien."  
_DINI-AG-KIM: LOD-Glossar. 2013._

##<a name="hintergrund"></a>Hintergrund: Erfahrungen aus vascoda

Von 2008 bis Ende 2010 war der Autor Pascal Christoph beim hbz
mitverantwortlich für Datentransformation und
Suchmaschinenadministration für Vascoda. Für das Vascoda-Portal wurden
dabei Daten aus mehr als 40 verschiedenen Quellen (SSGs, ViFas,
Fachportalen und auch Verbunddatenbanken) in verschiedensten Formaten
für die Suchmaschine aufbereitet. Auch wenn in den DFG
Richtlinien eine Portallösung für FIDs nicht als zwingend vorausgesetzt wird, ist es
sinnvoll, an dieser Stelle knapp auf die Erfahrungen mit Vascoda, vor
allem dem Voscoda-Portal, einzugehen. Mit der Anwendung von LOD Best
Practices durch FIDs wäre die Gefahr der Wiederholung vieler Probleme
von Vascoda nämlich per definitionem von vornherein ausgeschlossen.
Konkrete Probleme, die sich durch einen LOD-Einsatz vermeiden lassen,
sind:

* Oftmals wurde vascoda als bloßer Backlink-Maschine zu den jeweils
    eigenen Portalen gesehen. D.h., viele wichtige Metadaten wurden
    vascoda vorenthalten, u.a. Bestandsangaben, sodass die Benutzerin
    gezwungen war, in das jeweilige fachspezifische Portal zu wechseln.
    Unnötige Portalbrüche werden aber als verwirrend und bestenfalls als
    umständlich empfunden. Ebenso durften teilweise Schlagwörter zwar in
    vascoda indexiert und also gesucht, nicht aber zur Anzeige gebracht
    werden. Benutzer, die die eingegebenen Suchwörter nicht auch in der
    Trefferliste wiederfinden, begegnen den Ergebnissen eher skeptisch,
    da sie anders sozialisiert sind (durch das Hervorheben von
    Suchbegriffen in der Kurztrefferanzeige, das in fast allen
    Internetsuchmaschinen Verwendung findet). LOD setzt den Willen zur
    Bereitstellung eigener Daten für eine freie Nutzung u.a. durch die
    offene Lizenzierung der Daten voraus. Dadurch wird Protalbetreibern
    größtmögliche Flexibilität bei der Einbindung der Daten
    gegeben.^[siehe dazu auch ["Datenanreicherung auf LOD-Basis"]( http://www.dr0i.de/lib/pages/Datenanreicherung_auf_LOD_Basis.html)].
*   Es gab im vascoda-Projekt eine Suchmaschinenföderation zwischen hbz,
    [Gesis (Bonn)](http://www.gesis.org) und der [TIB (Hannover)](http://www.tib.uni-hannover.de/). Der Schnittstelle fehlte es
    allerdings Rankinginformationen, um die Relevanz der Treffer
    untereinander in Bezug setzen zu können. So wurden die Treffer im
    sogenannten Round-Robin Verfahren, also schlicht abwechselnd,
    dargestellt. Das verzerrte die Rangliste in der Trefferübersicht
    teilweise dramatisch. Eine offene Lizenzierung der
    Daten hätte ermöglicht, die Daten in einer zentralen Suchmaschine
    abzulegen um ein ordentliches Ranking zu
    haben. Ein wesentliches Problem in der Herstellung solcher suchmaschinenübergreifender Rankinginformationen lag in der damals vom hbz benutzten proprietären Suchmaschine FAST-ESP begründet: die nötigen Ranking-Algorithmen waren nicht Open Source und konnten damit schlicht nicht ermittelt werden. Seit einiger Zeit ist aber die Hardware und sind vor allem alternative Open Source Suchmaschinen soweit fortgeschritten, dass mühelos mehrere Milliarden Dokumente in diesen Open Source Suchmaschinen Platz finden und schnell durchsucht werden können.
*   Die Softwareentwicklung rund um vascoda geschah nicht als Open
    Source. Dadurch konnte sich keine Technikergemeinschaft
    ("Community") rund um das Projekt aufbauen, um eine Nachhaltigkeit
    war damit nicht gegeben. Ganz anders verhält es sich bei Werkzeugen,
    die im Umkreis von LOD entstehen, sei es [culturegraph.org](http://culturegraph.org), die
    LOD-Graphdatenbanken wie Virtuoso, 4store usw., LOD-kompatible
    Suchmaschinen wie elasticsearch, Datenanreicherungswerkzeuge wie
    SILK, Datenaustauschplattformen wie
    datahub oder die Werkzeuge der von der DFG geförderten [AKSW in Leipzig](http://aksw.org) et cetera. Natürlich gibt es auch einige proprietäre, Closed Source
    Software, doch existieren immer auch leistungsfähige
    Open-Source-Software-Alternativen, die sogar meist kostenlos
    verteilt werden, dafür aber auch meist mit kostenpflichtigen Serviceangeboten daherkommen.
*   Anders als im vascoda-Projekt, anders als wohl generell früher im
    Umfeld von bibliothekarischen Institutionen, begünstigt LOD eine
    weniger hierarchisch und zentralistisch "top-down" strukturierte
    Arbeitsweise. Es eignet sich hervorragend als Basis zum Aufbau eine
    verteilten Community mit flachen Hierarchien. Ein gutes Beispiel
    liefert die Entstehung eines gemeinsamen Metadatenschemas für
    bibliographische Daten im deutschsprachigen Raum: Den verschiedenen
    LOD-Produzenten (DNB, hbz, BVB, Hebis, zbw u.a.) wurde zu keinem
    Zeitpunkt ein gemeinsames Metdatenschema oktroyiert, sondern es hat
    sich durch "Best Practices"-Konventionen herausgebildet, die
    mittlerweile - organisiert innerhalb der DINI-AG-KIM-Gruppe
    "Titeldaten" - in eine erste Version der ["Empfehlung für die
    RDF-Repräsentation bibliografischer
    Daten"](https://wiki.dnb.de/pages/viewpage.action?pageId=68060017)
    gemündet sind.
*   Auch hat sich im LOD-Bereich eine Arbeitsweise etabliert, die es
    erlaubt, auf neue Entwicklungen und Anforderungen flexibel zu
    reagieren. Diese Arbeitsweise ist vergleichbar mit der ["agilen
    Softwareentwicklung"](https://de.wikipedia.org/wiki/Agile_Softwareentwicklung),
    deren Motto des "release early, release often" ein ständiges Testen
    und Anpassen von Software an konkrete Bedürfnisse erlaubt.
    Komplizierte Organisationsprozesse und bürokratische Aufwände können
    so vermieden werden bzw. stehen der Arbeitskette nicht unbedingt im
    Weg - die Abhängigkeit von Entscheidungen auf oberer Ebene (z.B. wie
    das Datenapplikationsprofil aussehen soll) verhindern nicht, dass
    Daten bereits transformiert werden und über Nachweissysteme
    recherchierbar sind. Damit sind evolutionäre, oder auch "iterative",
    Anpassungen möglichen - es ist nicht notwendig das "perfekte"
    Datenapplikationsprofil zu erstellen. Diese Arbeitsweisen, die nicht
    nur - aber auch - im LOD-Umfeld vorherrschen, sind somit höchst
    flexibel.

Wir haben in diesem und dem letzten beiden Kapiteln gesehen: 
LOD unterstützt auf der einen Seite direkt Aufbau und Pflege einer Informationsinfrastruktur - durch den dezentralen Ansatz, die Flexibilität des Datenmodells und die offene Lizenzierung von Daten. 
Auf der anderen Seite fördert LOD indirekt den Aufbau einer solchen Infrastruktur , weil etwa bestimmte Arbeitsweisen (agile Entwicklung), ein offener Austausch und Kooperation oder die Nutzung von Open Source Software im LOD-Kontext weit verbreitet sind. 
Da im Vergleich zu den konkreten Technologien die "weichen Faktoren" der Kommunikation und Organisation von grundlegenderer Wichtigkeit sind, wird im folgenden zunächst auf diese eingegangen ehe die konkrete Aufgabenumsetzung unter Nutzung von LOD angesprochen wird.

### <a name="cooperare"></a>Cooperare necesse es

Die umfangreichen und teilweise komplexen Aufgaben, die FIDs zu
bewältigen haben und die Knappheit der dafür zur Verfügung stehenden
Ressourcen legen eine Kooperation der betroffenen Einrichtungen nahe -
nicht umsonst weist die DFG auf das Potential der Bündelung von
Querschnittsaufgaben in Kompetenzzentren hin. Eine Umgebung aufzubauen
zur Herstellung und Pflege eines so nachhaltigen wie innovativen Systems
der Informationsversorgung ist allerdings keine leichte Aufgabe.
Konkrete Technologien spielen beim Aufbau eines solchen Systems eine
untergeordnete Rolle, sie können seine Entstehung allenfalls
unterstützen.  Wichtiger sind bestimmte Formen der Zusammenarbeit, der Kommunikation,
des Teilens von Erfahrungen, Lösungen, Fehlschlägen und Erfolgen. Als
pointierte Darstellung der wichtigen Aspekte sei an dieser Stelle der
Entwurf eines entsprechenden Manifests zitiert, das zur Beförderung
einer entsprechenden kollaborativen Arbeitsweise für den Aufau eines
zukunftsfähigen, innovativen und durch öffentliche Einrichtungen
kontrollierten verfasst wurde: "

> # Libraries Empowerment Manifesto
  
> We support the formation and development of an international library infrastructure that is:
> * *future-proof*: it supports the development of sustainable solutions;
> * *progressive*: it enables rapid development and quick adaptation to upcoming challenges;
> * *empowering*:  it empowers libraries to control to the maximum the infrastructure underlying their services for collection, indexing and dissemination of published knowledge.
>  
> In order to reach the goal of a future-proof, progressive infrastructure that empowers libraries to control their future to the maximum, we endorse the following principles:
>   
> * *Openness*. To the extent possible, we share our data, content, tools and ideas on  the web, according to the requirements of the [Free Software Definition](http://www.gnu.org/philosophy/free-sw.html) and the [Open Definition](http://opendefinition.org/) and the best practices of the wider web community.
> * *Transparency*. Rules of conduct, project plans, minutes, plans for new features, and other artifacts are open, public, and easily accessible
> * *Inclusion*. Our projects are open to all; we provide the  same opportunity to all.  Everyone participates with the same rules; there are no rules to exclude any potential contributors which include, of course, direct  competitors in the marketplace.
> * *Meritocracy*. The more you contribute the more responsibility you will earn. Leadership roles are also merit-based and earned by peer acclaim.
> * *Reuse*.  We actively seek for solutions others have  developed for a specific problem and are happy to reuse and adapt them for our context.
> * *Credit*. We [give credit where credit is due](http://blog.ninapaley.com/2011/06/27/credit-is-due/).
>   
> We  know that libraries, archives, museums, and related organizations can't change from one day to the next. Nonetheless, we seek to organize our work according to these principles, even if we might start imperfectly and/or only within parts of the organization.

Das Manifest ist auf Englisch verfasst, weil Kollaboration an
Landesgrenzen nicht Halt macht und Erfahrungen und Lösungen, die auch
für nicht-deutsche Institutionen von Nutzen sein könnten, im besten Fall
auch diesen zugänglich gemacht werden sollten. Wie bereits angemerkt
handelt es sich hierbei um einen ersten Entwurf. Alle Interessierten
sind herzlich eingeladen, sich an der weiteren Entwicklung^[Auf dem
Etherpad [http://etherpad.lobid.org/p/LEM](http://etherpad.lobid.org/p/LEM) zu beteiligen].

##<a name="aufgabenumsetzung"></a>Aufgabenumsetzung

Den FIDs wird ziemlich freie Hand dabei gelassen, die
Informationsbedürfnisse des Wissenschaftlers zu befriedigen. Das
bedeutet unter anderem, dass FIDs die Wahl haben, technische
Infrastrukturen selbst aufzubauen und zu pflegen oder aber lediglich als
Vermittler zwischen den Dienstleistern (Datenerzeugern auf der einen,
Datenverarbeiter auf der anderen Seite) aufzutreten. In den
DFG-Richtlinien steht dazu im Kapitel "Querschnittsaufgaben":

 "Im System
der Fachinformationsdienste sind für jene technisch-organisatorischen
Arbeiten, die für die einzelnen Fachgebiete gleichartig durchzuführen
sind und zugleich einen hohen Arbeitsaufwand und besondere Expertise
erfordern, Querschnittsbereiche vorgesehen, in denen die Betreuung
dieser Aufgaben gebündelt wahrgenommen wird. Dies betrifft vor allem den
Umgang mit digitalen Medien. Dabei ist es ein ausdrückliches Ziel, durch
die Aufgabenbündelung eine Entlastung zugunsten der fachlichen Arbeit in
den einzelnen Fachinformationsdienstenzu erreichen und durch
Synergieeffekte auch das Potential für Einsparungen optimal
auszunutzen."  
 _DFG: Fachinformationsdienste für die Wissenschaft. Richtlinien
für das DFG geförderte System der Fachinformationsdienste
für die Wissenschaft. S. 10 ._

Dieser Anstoß der DFG zur Kooperation und zum Aufbau von
Kompetenzzentren für "Querschnittsaufgaben" ist zu begrüßen. Die
Möglichkeiten zum Aufbau von Synergien sollen im folgenden näher
betrachtet werden insbesondere mit Blick auf die Arbeit mit und
Bereitstellung von Daten. Es geht also vor allem um folgende Aufgaben:

* [Metadatenmapping, Datentransformation und automatische Datenanreicherung](#metadatenmapping)
* [Aufbau von Rechercheindizes und Web-APIs](#aufbau)
* [die intellektuelle Erstellung, Verbesserung und Anreicherung von Erschließungsinformationen](#hubs)
### <a name="metadatenmapping"></a>Metadatenmapping, Datentransformation und automatische Datenanreicherung

Bei jedem Dienst, der eine Recherche
über aus verschiedenen Quellen aggregierten Daten ermöglicht, fallen
regelmäßig und langfristig Aufgaben im Kontext von Datenaggregation,
Metadatenmapping, Datentransformation und -anreicherung an. Bisher haben
meist unterschiedliche Institutionen jeweils eigene Expertisen und
eigene Lösungen für diese Aufgaben entwickelt. Häufig findet bereits
jetzt eine gegenseitige Unterstützung und Zusammenarbeit einiger
Insitutionen statt, indem etwa entwickelte Software-Anwendungen
weitergegeben werden. Kooperationen finden aber meist eher unter der
Hand und nicht transparent im Web statt.

Diese Situation hat vor einiger Zeit begonnen sich zu ändern.
Mittlerweile sind mächtige Werkzeuge zur Metadatentransformation als
freie Software im Web verfügbar. Beispiele sind das im
[culturegraph-Projekt entwickelte
Metafacture](https://github.com/culturegraph/metafacture-core) und das
zentrale Tool des [LibreCat](http://librecat.org/), nämlich das Open-Source-Projekt
[Catmandu](https://github.com/LibreCat/Catmandu).

Auch in den Transformationsprogrammen ist Modularität, und somit
Flexibilität und Wiederverwendungsmöglichkeit ein zentrales Anliegen.
Für Metafacture sind die für die Datentransformationen notwendigen
Beschreibungen von Feldüberführungen ("Mapping") in
Konfigurationsdateien hinterlegt
.^[Ein Beispiel zur Überführung der ZDB-Isil Datei in LOD ist: [https://github.com/lobid/lodmill/blob/master/lodmill-rd/src/main/resources/morph_zdb-isil-file-pica2ld.xml](https://github.com/lobid/lodmill/blob/master/lodmill-rd/src/main/resources/morph_zdb-isil-file-pica2ld.xml).]
Diese Mappingdateien werden über eine
Workflowdatei^[Ein Beispiel dieser sog. flux-Datei ist: [https://github.com/lobid/lodmill/blob/master/lodmill-rd/src/main/resources/zdb-isil-file2lobid-organisation.flux](https://github.com/lobid/lodmill/blob/master/lodmill-rd/src/main/resources/zdb-isil-file2lobid-organisation.flux).]
gesteuert. Die Adaption dieser zwei Dateien erlauben es, den kompletten
Transformationsprozess zu
kontrollieren^[Sollte einmal eine Funktionalität fehlen, so sind die Module einfach zu programmieren und der Software zufügbar. So entstanden bisher viele Module, z.B. für das Einlesen von csv,xml,ntriples und konkreter dann Pica/MAB/MARC/LOD über verschiedene Quellen wie Dateien im Filesystem, Webseiten, OAI-PMH usw.],
d.h. dass auch ohne Programmierkenntnisse Datentransformationen
definiert und durchgeführt werden können.

Auch für die automatische Datenanreicherung gibt es freie Software, die
diese Aufgabe unterstützt. Z.B. können mit dem im Eu-Projekt "Lod2"
entwickelten [Silk](http://lod2.eu/Project/Silk.html) und auch mit [Limes](http://limes.aksw.org/)  Zusammenführungen
von LOD Daten durchgeführt werden. Das Projekt
["culturegraph"](http://www.culturegraph.org) bietet ebenfalls eine
Plattform für Datenzusammenführung. Dabei wird die Software
["hadoop"](https://hadoop.apache.org/) eingesetzt, die auch in lobid.org
für die Datenzusammenführung Verwendung findet. Synergien entstehen hier
ebenfalls durch die transparente, offene Zusammenarbeit im Bereich
Algorithmenentwicklung. So sind z.B. erste Algorithmen zur Berechnung
von Bündeln offen
publiziert.^[Siehe dazu [http://hub.culturegraph.org/statistics/alg(http://hub.culturegraph.org/statistics/alg).] Alle an
automatischer bibliographsicher Datenanreicherung Interessierte können
auf diese Algorithmen zugreifen und für eigene Zwecke nutzen.

### <a name="aufbau"></a>Aufbau von Rechercheindizes und Web-APIs

Zum Aufbau von Rechercheindizes und
APIs^[Eine API ist eine Programmierschnittstelle, die es ermöglicht, von einem Softwaresystem auf ein anderes zuzugreifen. Bei einer Web-API geschieht dies über das WWW, siehe [https://en.wikipedia.org/wiki/Web_API](https://en.wikipedia.org/wiki/Web_API).]
eignen sich bereits vorhandenen leistungsfähige Open Source Software wie
etwa die Suchmaschinen Solr oder elasticsearch. Technische
Dienstleister, auch u.a. Verbünde und Bibliotheken, können teilweise die
technische Infrastruktur bereitstellen und bei deren Nutzung
unterstützen. Dabei wird das gesamte Leistungsspektrum abgedeckt, von
Beratung über Installation über Hosting bis zur (Weiter-)Entwicklung. Das
hbz bietet beispielsweise seit Kurzem seinen Verbundkatalog über eine
selbstentwickelte LOD-Web-API an.^[Siehe [http://api.lobid.org/] (http://api.lobid.org/).] Unter
dieser API, die sich sehr einfach in eigene Anwendungen über das WWW
einbinden lässt, findet sich auch die GND, auf die mittels
[Vorschlagsuche](https://de.wikipedia.org/wiki/Vorschlagssuche) nach
Autoren gesucht werden kann, um auf diese Weise die für die Person
eindeutige GND-ID zu bekommen. Diese API steht jedem offen und kann z.B.
in Katalogisierungsklienten eingebunden werden. Dadurch entstehen hohe
Synergieeffekte, da diese Funktionalität prinzipiell von allen
Katalogisierenden benötigt wird und aber nicht von jeder Institution neu
entwickelt zu werden braucht. Die zugrundeliegende modulare Technik
erlaubt es zudem, weitere Datenquellen aufzunehmen und z.B. auch dafür
eine Suchvervollständigung anzubieten. Möchte ein anderer Dienstleister
diese Funktionalität auf eigenen Servern selber anbieten, so kann er auf die komplette
Software zugreifen, um die Dienste nachzubauen und die Software
weiter(mit)zuentwickeln. Schön wäre es, wenn dabei
Softwareverbesserungen auch zurückfließen. Erfahrungen mit anderen
Open-Source-Projekten zeigen, dass genau dies geschieht.

### <a name="hubs"></a>Hubs zur intellektuellen Datenanreicherung

Neben der sog. "weißen Literatur" gibt es "graue Literatur", also alles
das, was nicht durch den Buchhandel vertrieben wird. Sollte, wovon
auszugehen ist, in der Auseinandersetzung mit der Fachcommunity diese
auch die "graue Literatur" als prinzipiell interessant betrachten, so
stellt sich die Frage, wie ein FID auch noch diese Ressourcen
bereitstellen kann.

Eine Sammlung fachrelevanter Ressourcen zu betreiben erfordert eine
Menge an intellektueller Arbeit. Besonders im Bereich der grauen
Literatur, die teilweise gar nicht erschlossen oder nur mit
unzureichenden Metadaten ausgestattet ist, ist deshalb der Einsatz von
sog. [Crowdsourcing](https://de.wikipedia.org/wiki/Crowdsourcing)^[also dem Einsatz von freiwilligen Benutzern]
unverzichtbar, vor allem durch die regelrechte "Wissensexplosion" dieser
Ressourcen durch die Entwicklung des Internets. Denn der Nutzer steht
nicht einfach vor einer immer größeren Informationsflut, sondern sieht
sich einer mit ihm interaktiv agierenden Gemeinschaft von
Gleichgesinnten gegenüber, die bereitwillig und getragen durch ebenjenes
Medium "Internet" an der Organisation dieses Wissens mithelfen
kann.^[Beispiele von funktionierendem Crowdsourcing sind u.a. Wikipedia, Amazon, IMDB. Früher war z.B. auch dmoz recht beliebt. Bei dmoz werden Internetquellen intellektuell erschlossen. In Hochzeiten hatte dieser Dienst mehrere 10.000 aktive freiwillige Mitarbeiter. Bis jetzt sind 4.8 Millionen Seiten katalogisiert. Seit Gründung 1998 sind die erzeugten Daten offen und können so von anderen Diensten übernommen werden. Google hat die Daten bis 2011 genutzt.]
Wenn diese Wissensorganisation dann nach LOD Prinzipien geschieht, dann
sind die Ergebnisse dieser Wissensorganisation maschinell komfortabel
weiterverarbeitbar - die Informationsflut lässt sich also tatsächlich
beherrschen. Die Wikimedia Foundation hat das erkannt, und mit
Wikidata^[Siehe [https://de.wikipedia.org/wiki/Wikidata](https://de.wikipedia.org/wiki/Wikidata)] eine Infrastruktur
geschaffen, mit derer die Wikipedia nach LOD Prinzipien katalogisiert
wird.^[Dieselbe Stiftung hat mit der ["Massively-Multiplayer_Online_Bibliography"](https://meta.wikimedia.org/wiki/Massively-Multiplayer_Online_Bibliography ) eine recht neue Projektidee, in der es darum geht, mit Hilfe Freiwilliger (der "Crowd") Millionen von frei verfügbaren Essays und Artikeln usw. nach LOD Prinzipien zu annotieren. Auch wenn dieses Projekt vielleicht gar nicht starten wird oder auch, wenn es dabei bleibt, nur nicht-akademische, nicht-fiktionale Texte zu katalogisieren, so ist dieses Projekt doch eine interessante Blaupause für ein Modell, wie graue akademische Literatur gesammelt werden kann. In dieses Projektmodell passen nämlich hervorragend Bibliothekare oder eben FIDs mit ihrem Wissen. Sie können z.B. dabei helfen, Taxonomien für die Texte bereitzustellen oder, bei fehlenden Taxonomien, diese Erstellen. Andere Menschen in dem Projekt werden Katalogisierungswerkzeuge zur Verfügung stellen, in denen diese Taxonomien eingebunden sind, sodass sie vom Katalogisierer (der "Crowd") per Drop-Down-Menü und durch multilinguale Vorschlagssuchen kategorisiert werden können. Danach können die so kategorisierten Ressourcen automatisch gefiltert und die Metadaten automatisch an den jeweiligen FID gesendet werden, um sie der fachspezifischen Sammlung nach einem Moderationsprozess hinzuzufügen. Diese Information, also das Kategorisieren einer Ressource zu einem FID, ist wiederum eine interessante, aussagekräftiges Information, die der ursprünglichen Ressourcenbeschreibung zugefügt wird. Somit fließt die moderierende, qualitätssichernde Kontrolle der Fachprofis in die Ausgangsdaten zurück und sind von allen anderen, die diese Daten konsumieren, nachnutzbar. Im LOD Paradigma erzeugt also die Nutzung einer Leistung potentiell einen Mehrwert für die Leistung. Es handelt sich um eine sog. Selbstverstärkung.]

### <a name="grundlegendes"></a>Grundlegendes Desiderat an FIDs

Grundlage für Nachweis- und Recherchesyteme sind Metdadaten und die
Ressource an sich. Die Metadaten sollten möglichst frei fließen können.
Die Deutsche Nationalbibliothek und die deutschen Bibliotheksverbünde
haben bereits mit der Freigabe von Daten begonnen. BVB und KOBV sowie
das hbz stellen ihre Daten sowohl als MARC oder MAB und auch als LOD
bereit und bieten darüber hinaus regelmäßige Aktualisierungen an. Die
DNB bietet den größten Teil ihrer Daten unter einer offenen Lizenz an
mit einjähriger ["Moving
Wall"](https://en.wikipedia.org/wiki/Moving_wall). Für bestimmte Fächer
lässt sich damit u. U. bereits ein guter FID-Recherchedienst aufbauen.
Dabei sind Monographiedaten ganz gut abgedeckt, oft fehlen
aber Artikelmetadaten und graue Literatur. Damit das "web of data"
Realität wird, müssen weitere Daten göffnet werden. Und dies geschieht
am Besten dort, wo diese Daten originär anfallen, also bei den Verlagen,
bei der Erstellung von Fachbibliographien, bei den FIDs etc.

Tritt ein FID mit Verlagen in Kontakt, sollten diesen dazu gebracht
werden, ihre Metadaten und andere Daten, die für ein Recherchesystem von
großer Bedeutung sind, also z.B. Inhaltsverzeichnisse und Abstracts, als
Open Data unter CC0 zur Verfügung zu stellen. Diese Daten spielen sowohl
für Menschen als auch für Maschinen eine wichtige Quelle, um entscheiden
zu können, wo die Ressource benötigt wird. Ein Schritt weiter bestünde
in der Überlassung einer kompletten Kopie der digitalen
Veröffentlichung, z.B. um diese in Volltextsuchmaschinen zu indexieren
oder um sie zur automatischen Anreicherung der Metadaten
(Klassifizierung, Verschlagwortung usw.) zu nutzen oder/und um die
Ressource langzeitverfügbar zu machen.

### <a name="umsetzung"></a>Umsetzung und Koordination der Datenprozesskette

Bei der in den Unterkapiteln von [Aufgabenumsetzung](#Aufgabenumsetzung)
beschriebenen Prozesskette kann der FID sich entscheiden, an welcher
Stelle er die notwendigen Techniken selbst umsetzt und welche Leistungen
lediglich koordiniert werden, indem sie an Dienstleister abgegeben
werden. Dies betrifft Auswahl der Daten, Datentransformation und
(moderierte) automatische Datenanreicherung, Veröffentlichung der Daten
als LOD, die Indexierung in spezielle Datenhaltungssysteme, die
Bereitstellung offener W3C Standards entsprechenden APIs über diese
Datenhaltungssysteme, und die diese APIs einbindenden Nachweis-,
Recherchesyteme und Portale. Durch diese Modularität und strikte
Trennung von Daten, Datenhaltung und
Datenanzeige^[Softwareentwickler nennen dieses Verfahren das "Model-View-Controller" (MVC) Prinzip.]
lassen sich die einzelnen Komponenten resp. die Dienstleister leichter
austauschen. Der FID behält die Kontrolle und begibt sich weniger stark
in alternativlose Abhängigkeiten. Verbesserungen der Daten bleiben
erhalten und werden nicht "vergessen" wenn ein Portal, ein
Nachweissystem oder eine API abgeschaltet oder ausgetauscht wird, da die
Daten nicht zu eng an diese Komponenten gekoppelt sind. Die
Nachhaltigkeit bleibt auf jeden Fall in den Daten erhalten. Dadurch ist
ein Lehre aus [James Governors Bonmot "Data matures like Wine,
Applications like
Fish"](http://redmonk.com/jgovernor/2007/04/05/why-applications-are-like-fish-and-data-is-like-wine/)
("Daten altern wie Wein, Anwendungen wie Fisch") gezogen.

##<a name="fazit"></a>Fazit

Es wurde gezeigt, warum eine LOD Metadateninfrastruktur nachhaltig ist
und wie diese zum Aufbau von FIDs-Dienstleistungen genutzt werden kann
um z.B. bessere Recherche- und Nachweissysteme zu ermöglichen und die
Daten in das WWW resp. in das "web of data" zu integrieren. Es wurde
zudem gezeigt, dass große Teile dieser Infrastruktur bereits vorhanden
oder in Entwicklung sind. Entscheidend für diese Metadateninfrastruktur
ist, dass die Daten samt zeitnahen Updates offen lizensiert zur
Verfügung stehen. Die Daten sind die Grundlage der Infrastruktur. Die
Technik, also Datentransformation, die Bereitstellung der Daten als LOD
und somit die Integration der Daten in das WWW, Discovery Systeme und
Portale, auch die Datenhaltung an sich resp. die Archivierung usw. ist
das geringere Problem - die Datenbeschaffung bleibt die größte
Herausforderung. Hier können und sollten die FIDs eine entscheidende
Rolle übernehmen. Der Ansatz birgt aber auch ein Risiko, da die [DFG
offensichtlich eher in proprietäre Systeme zu investieren bereit ist als
in selbstenwickelte
Gemeinschaftslösungen](http://www.uebertext.org/2013/04/mit-der-dfg-und-cib-nach-wordshare-und.html).^[Siehe http://www.uebertext.org/2013/04/mit-der-dfg-und-cib-nach-wordshare-und.html ]

##<a name="referenzen"></a>Referenzen

DFG: Fachinformationsdienste für die Wissenschaft. Richtlinien
für das DFG geförderte System der Fachinformationsdienste
für die Wissenschaft. DFG-Vordruck
12.102 - 03/13. Online: [http://www.dfg.de/formulare/12\_102/12\_102\_de.pdf](http://www.dfg.de/formulare/12_102/12_102_de.pdf)

Wissenschaftsrat: Übergreifende Empfehlungen zu
Informationsinfrastrukturen. 2011.
Online: [http://www.wissenschaftsrat.de/download/archiv/10466-11.pdf](http://www.wissenschaftsrat.de/download/archiv/10466-11.pdf)

DFG: DFG bewilligt drei Projekte zur Neuausrichtung überregionaler Informationsservices. In: Information für die Wissenschaft Nr. 11 | 15. März 2013. 
Online: [http://dfg.de/foerderung/info_wissenschaft/archiv/2013/info_wissenschaft_13_11/index.html](http://dfg.de/foerderung/info_wissenschaft/archiv/2013/info_wissenschaft_13_11/index.html)

Grant, Carl: Ex Libris, Alma and Open Data .
Online: [http://openbiblio.net/2011/08/11/ex-libris-alma-and-open-data/](http://openbiblio.net/2011/08/11/ex-libris-alma-and-open-data/)

Tochtermann, Klaus: 10 Thesen zum zukünftigen Profil von
wissenschaftlichen Informations-Infrastruktureinrichtungen mit
überregionaler Bedeutung. Online:
[http://www.zbw-mediatalk.eu/2013/08/klaus-tochtermann-zehn-thesen-zum-zukunftigen-profil-von-wissenschaftlichen-informationsinfrastruktureinrichtungen-mit-uberregionaler-bedeutung/](http://www.zbw-mediatalk.eu/2013/08/klaus-tochtermann-zehn-thesen-zum-zukunftigen-profil-von-wissenschaftlichen-informationsinfrastruktureinrichtungen-mit-uberregionaler-bedeutung/)

DINI-AG-KIM: LOD-Glossar. 2013. Online: 
[https://github.com/dini-ag-kim/publications/blob/f781263297e6f1f4acdd8b2256686c0437d047bb/glossar.md](https://github.com/dini-ag-kim/publications/blob/f781263297e6f1f4acdd8b2256686c0437d047bb/glossar.md)

Christof, Jürgen; Wonke-Stehle, Jens: 101. Bibliothekartag 2012.
Virtuelle Fachbibliotheken - Bilanz und Ausblick . Online:
[http://www.slideshare.net/jensws/virtuelle-fachbibliotheken-bilanz-und-ausblick](http://www.slideshare.net/jensws/virtuelle-fachbibliotheken-bilanz-und-ausblick)

Depping, Ralf: 101. Bibliothekartag 2012 . Sondersammelgebiete im
elektronischen Zeitalter. Online:
[http://www.slideshare.net/vascoda/sondersammelgebiete-im-elektronischen-zeitalter](http://www.slideshare.net/vascoda/sondersammelgebiete-im-elektronischen-zeitalter)

Dini-AG-Kim: Empfehlung für die RDF-Repräsentation bibliografischer
Daten. Online:
[https://wiki.dnb.de/pages/viewpage.action?pageId=68060017](https://wiki.dnb.de/pages/viewpage.action?pageId=68060017)

Berners-Lee, Tim: On the next web. Online:
[http://www.ted.com/talks/tim\_berners\_lee\_on\_the\_next\_web.html](http://www.ted.com/talks/tim_berners_lee_on_the\_next_web.html)

Christoph, Pascal: Datenanreicherung auf LOD-Basis. Online:
[http://www.dr0i.de/lib/pages/Datenanreicherung\_auf\_LOD\_Basis.html](http://www.dr0i.de/lib/pages/Datenanreicherung_auf_LOD_Basis.html)

Diverse: Massively-Multiplayer\_Online\_Bibliography.
[https://meta.wikimedia.org/wiki/Massively-Multiplayer\_Online\_Bibliography](https://meta.wikimedia.org/wiki/Massively-Multiplayer\_Online\_Bibliography)

Governor, James: Why Applications Are Like Fish and Data is Like Wine. Online:
[http://redmonk.com/jgovernor/2007/04/05/why-applications-are-like-fish-and-data-is-like-wine/](http://redmonk.com/jgovernor/2007/04/05/why-applications-are-like-fish-and-data-is-like-wine/)

Pohl, Adrian: Mit der DFG und CIB nach WorldShare und Alma. Online:
[http://www.uebertext.org/2013/04/mit-der-dfg-und-cib-nach-wordshare-und.html](http://www.uebertext.org/2013/04/mit-der-dfg-und-cib-nach-wordshare-und.html)

Weaver, Jesse; Tarjan, Paul : Facebook Linked Data via the Graph API.
[http://www.semantic-web-journal.net/content/facebook-linked-data-graph-api](http://www.semantic-web-journal.net/content/facebook-linked-data-graph-api)

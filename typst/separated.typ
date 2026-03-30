// Birkat HaMazon - Conventional Hebrew then Paleo Hebrew
#import "lib.typ": *

#show: birkon-page

#let data = json("../content/separated.json")

#align(center)[
  #text(size: 18pt, weight: "bold")[ברכת המזון]
  #v(0.3em)
  #text(size: 10pt, style: "italic")[Birkat HaMazon — Paleo Hebrew with Separation]
]

#v(1em)
#line(length: 100%, stroke: 0.5pt)
#v(0.5em)

// Part 1: Conventional Hebrew
#align(center)[
  #text(size: 13pt, weight: "bold")[כתב מרובע]
]
#v(0.5em)

#for section in data.sections {
  section-heading(section.name)
  text(size: 11pt)[#section.hebrew]
  v(0.5em)
}

#pagebreak()

// Part 2: Paleo Hebrew
#align(center)[
  #paleo-text(size: 16pt)[#to-paleo("כתב עברי")]
]
#v(0.5em)

#for section in data.sections {
  section-heading(section.name)
  paleo-text(size: 14pt)[#to-paleo(section.hebrew)]
  v(0.5em)
}

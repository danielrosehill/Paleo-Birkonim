// Birkat HaMazon - Paleo Hebrew Only
#import "lib.typ": *

#show: birkon-page

#let data = json("../content/paleo_only.json")

#align(center)[
  #paleo-text(size: 20pt)[#to-paleo("ברכת המזון")]
  #v(0.5em)
  #text(size: 10pt, style: "italic")[Birkat HaMazon — Paleo Hebrew]
]

#v(1em)
#line(length: 100%, stroke: 0.5pt)
#v(0.5em)

#for section in data.sections {
  paleo-text(size: 14pt)[#to-paleo(section.hebrew)]
  v(0.8em)
}

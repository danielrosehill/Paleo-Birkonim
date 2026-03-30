// Birkat HaMazon - Interleaved Bentschers
// Each phrase shown in conventional Hebrew followed by Paleo Hebrew
#import "lib.typ": *

#show: birkon-page

#let data = json("../content/bentschers.json")

#align(center)[
  #text(size: 18pt, weight: "bold")[ברכת המזון]
  #v(0.2em)
  #paleo-text(size: 16pt)[#to-paleo("ברכת המזון")]
  #v(0.3em)
  #text(size: 10pt, style: "italic")[Paleo Hebrew Bentschers]
]

#v(1em)
#line(length: 100%, stroke: 0.5pt)
#v(0.5em)

#for line in data.lines {
  // Conventional Hebrew
  text(size: 11pt)[#line]
  v(0.2em)
  // Paleo Hebrew
  paleo-text(size: 13pt)[#to-paleo(line)]
  v(0.6em)
}

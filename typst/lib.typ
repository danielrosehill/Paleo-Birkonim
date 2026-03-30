// Paleo Hebrew Typst Library
// Converts conventional Hebrew script to Phoenician Unicode block (U+10900-U+1091F)

// Hebrew to Phoenician Unicode mapping
#let hebrew-to-paleo-map = (
  "א": "𐤀",
  "ב": "𐤁",
  "ג": "𐤂",
  "ד": "𐤃",
  "ה": "𐤄",
  "ו": "𐤅",
  "ז": "𐤆",
  "ח": "𐤇",
  "ט": "𐤈",
  "י": "𐤉",
  "כ": "𐤊",
  "ך": "𐤊",
  "ל": "𐤋",
  "מ": "𐤌",
  "ם": "𐤌",
  "נ": "𐤍",
  "ן": "𐤍",
  "ס": "𐤎",
  "ע": "𐤏",
  "פ": "𐤐",
  "ף": "𐤐",
  "צ": "𐤑",
  "ץ": "𐤑",
  "ק": "𐤒",
  "ר": "𐤓",
  "ש": "𐤔",
  "ת": "𐤕",
)

// Convert a string from Hebrew to Paleo Hebrew
#let to-paleo(text) = {
  let result = ""
  for char in text.clusters() {
    let mapped = hebrew-to-paleo-map.at(char, default: none)
    if mapped != none {
      result += mapped
    } else if char == " " {
      result += " "
    } else if char == "." or char == ":" or char == "," or char == "-" or char == "־" {
      // Use Phoenician word separator for punctuation
      result += "𐤟"
    } else {
      result += char
    }
  }
  result
}

// Page setup for birkon format
#let birkon-page(body) = {
  set page(
    paper: "a5",
    margin: (top: 2cm, bottom: 2cm, left: 1.5cm, right: 1.5cm),
  )
  set text(lang: "he", dir: rtl)
  body
}

// Paleo Hebrew text styling
#let paleo-text(size: 14pt, content) = {
  set text(font: "FreeSans", size: size)
  content
}

// Conventional Hebrew text styling
#let hebrew-text(size: 11pt, content) = {
  set text(font: ("David CLM", "Noto Serif Hebrew", "FreeSans"), size: size)
  content
}

// Section heading
#let section-heading(name) = {
  v(0.5em)
  align(center)[
    #text(size: 12pt, weight: "bold")[#name]
  ]
  v(0.3em)
}

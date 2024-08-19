#import "@preview/lemmify:0.1.5": *
#import "/config.typ": env-lang, math-font

#let thm-numbering-theorem(fig, max-heading-level: none) = {
  if fig.numbering != none {
    let heading-counter = display-heading-counter-at(fig.location(), max-heading-level)
    heading-counter.split(".").at(0)
    "."
    numbering(fig.numbering, ..fig.counter.at(fig.location()))
  }
}

#let thm-style-simple-name-no-emph(
  thm-type,
  name,
  number,
  body
) = block(width: 100%, breakable: true)[#{
  strong(thm-type) + " "
  if number != none {
    strong(number) + " "
  }

  if name != none {
    "(" + name + ")" + " "
  }
  " " + body
}]

#let bardust-theorems(
  max-reset-level: 2
) = {

  let group-0 = "mathenv-0"
  let group-1 = "mathenv-1"
  let group-2 = "mathenv-2"

  // let subgroup-map-0 = (
  //   "theorem": "定理",
  //   "axiom": "公理"
  // )

  // let subgroup-map-1 = (
  //   "definition": "定义",
  //   "lemma": "引理",
  //   "corollary": "推论",
  //   "remark": "注",
  //   "proposition": "命题",
  //   "example": "例",
  // )
  // let subgroup-map-2 = (
  //   "proof": "证",
  //   "solution": "解"
  // )

  let subgroup-map-0 = (
    "theorem": "Theorem",
    "axiom": "Axiom"
  )

  let subgroup-map-1 = (
    "definition": "Definition",
    "lemma": "Lemma",
    "corollary": "Corollary",
    "remark": "Remark",
    "proposition": "Proposition",
    "example": "Example",
  )
  let subgroup-map-2 = (
    "proof": "Proof",
    "solution": "Solution"
  )

  let (rules: rules-0, ..theorems-0) = new-theorems(
    group-0,
    subgroup-map-0,
    thm-styling: thm-style-simple-name-no-emph,
    thm-numbering: thm-numbering-theorem
  )

  let (rules: rules-1, ..theorems-1) = new-theorems(
    group-1,
    subgroup-map-1,
    thm-styling: thm-style-simple-name-no-emph,
    thm-numbering: thm-numbering-heading
  )

  let (rules: rules-2, ..theorems-2) = new-theorems(
    group-2,
    subgroup-map-2,
    thm-styling: thm-style-proof,
    thm-numbering: thm-numbering-proof,
    ref-numbering: thm-numbering-heading
  )

  return (
    ..theorems-0, ..theorems-1, ..theorems-2,
    rules: concat-fold((
      thm-reset-counter-heading.with(group-0, max-reset-level - 1),
      thm-reset-counter-heading.with(group-1, max-reset-level),
      thm-reset-counter-heading.with(group-2, max-reset-level),
      rules-0,rules-1,rules-2,
    ))
  )
}


#let (
  theorem, axiom,
  lemma, corollary,
  remark, proposition, example,
  definition, proof, solution,
  rules: mathenv-thms
) = bardust-theorems()

#let mathenv-init(it) = {
  show: mathenv-thms
  show math.equation: set text(font: math-font)
  env-lang.update("en")
  show: set text(size: 13pt)
  it
}

// Shorthands
#let sub = math.subset
#let sube = math.subset.eq
#let NNN = $NN_+$
#let LIM = math.op("LIM", limits: true)
#let sim = math.tilde.op
#let ind = {h(1em)}
#let noin = doc => {
  par(
    first-line-indent: 0pt,
    doc
  )
}
#let pf(doc, num:1) = {
  par(first-line-indent: 0pt, {
    emph[Proof for #num]
    h(1em)
    doc
  })
}

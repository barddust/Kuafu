#let serif = ("Spectral", "Source Han Serif")
#let sans = "Source Han Sans CN"
#let kai = "LXGW WenKai"
#let default_author = "Bardust"
#let page_height = 841.89pt
#let math-font = "STIX Two Math"

#let env-lang = state("lang","zh")

#let cover(
  title: none,
  subtitle: none,
  date: none,
  author: none,
  version: none,
) = page(
  {
    align(
      center,
      {
        v(page_height / 5)
        linebreak()
        text(size: 2em, weight: "bold", title)
        linebreak()

        if subtitle != none{
          text(size: 1.8em, weight: "bold", subtitle)
          linebreak()
        }
        linebreak()
        
        if author != none {
          author
        } else {
          default_author
        }
        linebreak()
        
        if date != none {
          date
        } else {
          datetime.today().display()
        }
        linebreak()
        
        if version != none [
          V #version
        ]
      }
    )
  }
)


#let toc() = page(
  numbering: "I",
  {
    counter(page).update(1)
    show heading: set align(center)
    show heading: set block(below: 1.5em)
    show outline: it => {
      set par(leading: 1.2em)
      it
    }
    show outline.entry.where(level: 1): set text(weight: "bold")
    outline(
      depth: 2,
      indent: auto,
    )
    
  }
)


#let init(
  doc,
) = {
  show: set text(
    font: serif,
    lang: "zh",
  )
  doc
}


#let conf(
  doc,
) = {
  set page(
    height: page_height,
    numbering: "1",
  )

  show bibliography: set heading(numbering: none)

  set heading(numbering: "1.")
  show heading: it => {
    set block(above: 2em, below: 1em)
    
    if it.level == 1 {
      align(
        center,
        {

          if counter(here()).get().at(0) != 1 {
            pagebreak()
          }
        
          if it.numbering != none {
            if env-lang.get() == "zh" [
              第#counter(heading).get().at(0)章#h(1em)#it.body
            ] else [
              #text(size: 0.8em)[CHAPTER #counter(heading).get().at(0)]
              #linebreak()
              #it.body
            ]
          } else {
            it.body
          }
        }
      )
    } else {
      it
    }
    par(text(size:0.35em, h(0.0em)))
  }
  
  show quote: set text(font: kai)
  set quote(block: true)

  show link: set text(fill: blue)
  
  counter(page).update(1)
  
  set par(
    first-line-indent: 2em,
    leading: 1em,
  )

  show ref: it => {
    super(it)
  }
  
  doc
}


#let reference() = [
  #bibliography("ref.yml") <reference>
]

#let body(dir, chs) = {
  if not dir.ends-with("/"){
    dir = dir + "/"
  }
  
  include dir + chs.at(0)
  for ch in chs.slice(1) {
    pagebreak()
    include dir + ch
  }

}


#let project(
  subtitle: none,
  bio: true,
  title,
  version,
  par-dir,
  chapter,
) = {

  show: init
  
  cover(
    title: title,
    subtitle: subtitle,
    version: version,
  )

  toc()
  
  show: conf

  body(
    par-dir,
    chapter)

  if bio {
    reference()
  }
}

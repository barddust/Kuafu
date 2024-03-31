#{
  import "/config.typ"
  
  show: config.init

  config.cover(
    title:"夸父：元认知",
    version: "0.1",
  )

  config.toc()
  show: config.conf

  include "intro.typ"
  pagebreak()
  include "resources.typ"
  pagebreak()
  include "sleep.typ"

  config.reference()
}

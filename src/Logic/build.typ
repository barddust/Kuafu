#{
  import "/config.typ": project
  import "/mathenv.typ": *
  show: mathenv-init

  project(
    "夸父：逻辑",
    "0.1",
    "Logic",
    (
      "intro.typ",
      "sentential-logic.typ",
    ),
    bio: false
  )

}

#{
  import "/config.typ": project
  import "/mathenv.typ": *
  show: mathenv-init

  project(
    "夸父：数学基础",
    "0.1",
    "BeforeMathematics",
    (
      "intro.typ",
      "logic.typ",
      "proof.typ",
      "set.typ",
    ),
    bio: false
  )

}

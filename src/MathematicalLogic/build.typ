#{
  import "/config.typ": project
  import "/mathenv.typ": *
  show: mathenv-init

  project(
    "夸父：数理逻辑",
    "0.1",
    "MathematicalLogic",
    (
      "intro.typ",
      // "sentential-logic.typ",
    ),
    bio: false
  )

}

#{
  import "/config.typ": project
  import "/mathenv.typ": *
  show: mathenv-init

  project(
    "夸父：数学分析",
    "0.1",
    "Analysis",
    (
      "intro.typ",
      "natural.typ",
      "integer.typ",
      "rational.typ",
      "real.typ",
      "sequence.typ"
    ),
    bio: false
  )
}

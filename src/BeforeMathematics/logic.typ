#import "/mathenv.typ": *

= Mathematical Logic

== Statements
#definition(name: "statements")[
  *Statements* are one of the basic sentences in linguistics. A statement consists of at least two objects:
  + The subject, say $x$;
  + The predicate, which a description or a property to modify the subject, say $P$.

  Then the statement is expressed by the symbol $P(x)$. If we just care about the whole sentence, not the relation between subject and these descriptions, the statement is usually writen as a capitalized letter, say $A$.
]

#example[
  The sentence "I am a human" can be separated into (1) the subject "I", denoted as a letter say $a$, (2) the predicate "X is a human", translated to $P(X)$. Replacing variable $X$ by the subject $a$, "I am a human" is translated to $P(a)$.
  
  Or just a symbol $A$. This form is used a lot:
  $
    A: #text[I am a human.]
  $

  sometimes with quotes wrapped around the sentence.
]

#remark[
  A statement must be either true or false. The truth of a statement can changes under different circumstances, e.g., "Today is hot" is true if one is suffering from sunlight; it is false when one is walking in a chilling day.

  A statement cannot be true and false at the same time. Consider one says "I am lying", we give this sentence a letter, say $A$. If $A$ is true, this man is telling a lie, that is $A$. In other words, $A$ is a lie, which is false. Well, this seems little weird. What if $A$ is false initially? If $A$ is false, this still means the man is telling a lie, i.e., he is lying now, thus $A$ should be true whatever. No matter what $A$'s truth is, it produces contradiction. In this case, $A:$ "I am lying" is not a statement.
]

#remark[
  It is not always easy to find out the truth of a sentence. e.g., $B: x > 1$. Suppose $x$ is some real number, if $x=3$, then $B$ is true since $3 > 1$ is so obvious. Let $x=0$, however, $B$ becomes false since $0 < 1$. Supposing there are no more informations about this $x$, we can hardly tell the truth of $B$. But what we knows exactly is, when $x$ is selected or picked, there may be only two cases: $x$ is either greater than 1 or not. These two cases can not occur at the same time.
]

#remark[
  If a statement $A$ is true, we may write $A=T$, or $A:T$, or $A=1$, i.e., $A$ equals to #strong[T]rue, or binary 1. Similarly, if $A$ is false, we may write $A=F$, or $A:F$, or $A=0$: $A$ equals to #strong[F]alse, or binary 0.
]


== Composite of Statements

#definition(name: "conjunction")[
  Let $A,B$ be both statements. We call "$A$ and $B$" the *conjunction* of $A$ and $B$, denoted as $A and B$. $A and B$ is true if $A$ and $B$ are both true, and if false otherwise.

  #figure(
    table(
      columns: 3,
      [$A$], [$B$], [$A and B$],
      [0], [0], [0],
      [0], [1], [0],
      [1], [0], [0],
      [1], [1], [1],
    ),
    caption: [Truth table of conjunction],
  )
]

#example[
  "I am such tall and handsome", is the conjunction of "I am tall" and "I am handsome". Conjunction means they both happen at the same time.
]

#definition(name: "disjunction")[
  Let $A,B$ be both statements. We call "$A$ and $B$" the *disjunction* of $A$ and $B$, denoted as $A or B$. $A or B$ is true if either $A$ is true or $B$ is true, or both of them are true. $A or B$ is false only if both $A$ and $B$ are false.

  #figure(
    table(
      columns: 3,
      [$A$], [$B$], [$A or B$],
      [0], [0], [0],
      [0], [1], [1],
      [1], [0], [1],
      [1], [1], [1],
    ),
    caption: [Truth table of disjunction],
  )
]

#example[
  "He loves her or she loves him" is the disjunction of "He loves her" and "She loves him". When the disjunction is true, we can obatin the following three assertion, which could happen at the same time, or just some of them happen:
  + "He loves her"
  + "She loves him"
  + "They love each other", i.e., "He loves her" and "She loves him" occur at the same time.
]

#definition(name: "negation")[
  For a statement $A$, the negation of $A$ is a statement with the converse truth of $A$, denoted as $not A$, read as "not $A$".

  #figure(
    table(
      columns: 2,
      table.header([$A$], [$not A$]),
      [0], [1],
      [1], [0],
    ),
    caption: [Truth table of negation],
  )
]

#example[
  The negation pertains to predicate not subject. For example, let $A$ be a statement "I am full". The negation $not A$ is "I am not full", where the subject is still "I".
]

#remark[
  Negation has higher priority on arithmatics than other two 2-nry operations. For example $A and not B$, let $A$ be True, and $B$ be False, and we fisrtly consider $not B$, which is False. Then we obtain the conjunction, which is False, since it is true only when two operators are both true.
]

== Implication

#definition(name: "implication")[
  Let $A,B$ be statements, we use $A => B$ to represet the statemet "$A$ implies $B$", which means "If $A$, then $B$" in daily langugae context. $A => B$ is false, only when $A$ is true, but $B$ is false.

  #figure(
    table(
      columns: 3,
      [$A$], [$B$], [$A => B$],
      [0], [0], [1],
      [0], [1], [1],
      [1], [0], [0],
      [1], [1], [1],
    ),
    caption: [Truth table of implication],
  )
]

#remark[
  The truth of implication is not so intuitive. $A$ is actually some condition, and $B$ is a conclusion.

  Known the some thing happened, the consequence occurs coherently; the case is what we can accept, in other words, we say the implication is true. But if the consequence does not show up when it is the time, we say the implication is false.

  What if the event as condition does not happen? In this situation, we have no reason to deny, or refuse, or give up the implication. Which means, we _have to_ admit its truthness.
]

#remark[
  Most of mathematical statements, called _propositions_, consists of many implications.
]

#definition(name: "equivalence")[
  Let $A,B$ be statements, we use $A <=> B$ to represet the statemet "$A$ is equivalent to $B$". $A <=> B$ is true, if $A$ has the same truth value with $B$.

  #figure(
    table(
      columns: 3,
      [$A$], [$B$], [$A <=> B$],
      [0], [0], [1],
      [0], [1], [0],
      [1], [0], [0],
      [1], [1], [1],
    ),
    caption: [Truth table of equivalence],
  )
]

#remark[
  Equivalence is likely what we talk about $A$ equal to $B$. We usually say that "$A$ if and only if $B$" for equivalence, or simply "iff".
]

#proposition[
  These two statements are equivalent:
  - $p => q$
  - $not p or q$
] <impeq>

#proof[
  List the truth table containing these two:

  #figure(
    table(
      columns: 5,
      [$p$], [$q$], [$p => q$], [$not p$], [$not p or q$],
      [0], [0], [1], [1], [1],
      [0], [1], [1], [1], [1],
      [1], [0], [0], [0], [1],
      [1], [1], [1], [0], [1],
    ),
  )

  It is obvious that $A => B$ has the same values with $not A or B$, i.e., they are equivalent. And we may write
  $
    (A => B) <=> (not A or B)
  $
]

== Arithmetics of Statemets

#axiom[
  For any two statements $A$ and $B$,
  + $A and B <=> B and A$
  + $A or B <=> B or A$
]

#proposition[
  For any two statements $A$ and $B$,
  + $(A and B) and C <=> A and (B and C)$
  + $(A or B) or C <=> A or (B or C)$
  + $(A and B) or C <=> (A or C) and (B or C)$
  + $(A or B) and C <=> (A and C) or (B and C)$
]

#proof[
  All the proofs can be done by listing truth table.

  #figure(
    table(
      columns: 11,
      [$A$], [$B$], [$C$],
      [$A and B$], [$B and C$], [$(A and B) and C$], [$A and (B and C)$],
      [$A or B$], [$B or C$], [$(A or B) or C$], [$A or (B or C)$],
      // [ ], [ ], [ ], [ ], [ ], [ ], [ ], [ ], [ ],[ ], [ ],
      [ ], [ ], [1], [ ], [ ], [ ], [ ], [ ], [1],[1], [1],
      [ ], [1], [ ], [ ], [ ], [ ], [ ], [1], [1],[1], [1],
      [ ], [1], [1], [ ], [1], [ ], [ ], [1], [1],[1], [1],
      [1], [ ], [ ], [ ], [ ], [ ], [ ], [1], [ ],[1], [1],
      [1], [ ], [1], [ ], [ ], [ ], [ ], [1], [1],[1], [1],
      [1], [1], [ ], [1], [ ], [ ], [ ], [1], [1],[1], [1],
      [1], [1], [1], [1], [1], [1], [1], [1], [1],[1], [1],
      fill: (x, y) => {
        if x in (5,6) {aqua} else if x in (9,10) {teal}
      }
    ),
    caption: [Truth table for 1 and 2],
  )

  #figure(
    table(
      columns: 8,
      [$A$], [$B$], [$C$],
      [$A and B$], [$(A and B) or C$], [$A or C$], [$B or C$], [$(A or B) and (B or C)$],
      [ ], [ ], [ ], [ ], [ ], [ ], [ ], [ ],
      [ ], [ ], [1], [ ], [1], [1], [1], [1],
      [ ], [1], [ ], [ ], [ ], [ ], [1], [ ],
      [ ], [1], [1], [ ], [1], [1], [1], [1],
      [1], [ ], [ ], [ ], [ ], [1], [ ], [ ],
      [1], [ ], [1], [ ], [1], [1], [1], [1],
      [1], [1], [ ], [1], [1], [1], [1], [1],
      [1], [1], [1], [1], [1], [1], [1], [1],
      fill: (x, y) => {
        if x in (4,7) {aqua}
      }
    ),
    caption: [Truth table for 3],
  )

  #figure(
    table(
      columns: 8,
      [$A$], [$B$], [$C$],
      [$A or B$], [$(A or B) and C$], [$A and C$], [$B and C$], [$(A and B) or (B and C)$],
      [ ], [ ], [ ], [ ], [ ], [ ], [ ], [ ],
      [ ], [ ], [1], [ ], [ ], [ ], [ ], [ ],
      [ ], [1], [ ], [1], [ ], [ ], [ ], [ ],
      [ ], [1], [1], [1], [1], [ ], [1], [1],
      [1], [ ], [ ], [1], [ ], [ ], [ ], [ ],
      [1], [ ], [1], [1], [1], [1], [ ], [1],
      [1], [1], [ ], [1], [ ], [ ], [ ], [ ],
      [1], [1], [1], [1], [1], [1], [1], [1],
      fill: (x, y) => {
        if x in (4,7) {teal}
      }
    ),
    caption: [Truth table for 4],
  )

  As shown above, columns in table filled with the same color, has exactly the same truths, i.e., that two propositions are equivalent.
]

#theorem(name: "De Morgan's laws")[
  For any two statements $A$ and $B$,
  - $not (A and B) <=> not A or not B$
  - $not (A or B) <=> not A and not B$
]

#proof[
  Still the Morgan's laws can be proved by truth table.

  #figure(
    table(
      columns: 7,
      [$A$], [$B$],
      [$A and B$], [$not (A and B)$],
      [$not A$], [$not B$], [$not A or not B$],
      [ ], [ ], [ ], [1], [1], [1], [1],
      [ ], [1], [ ], [1], [1], [ ], [1],
      [1], [ ], [ ], [1], [ ], [1], [1],
      [1], [1], [1], [ ], [ ], [ ], [ ],
      fill: (x, y) => if x in (3,6) {aqua}
    ),
  )

  #figure(
    table(
      columns: 7,
      [$A$], [$B$],
      [$A or B$], [$not (A or B)$],
      [$not A$], [$not B$], [$not A and not B$],
      [ ], [ ], [ ], [1], [1], [1], [1],
      [ ], [1], [1], [ ], [1], [ ], [ ],
      [1], [ ], [1], [ ], [ ], [1], [ ],
      [1], [1], [1], [ ], [ ], [ ], [ ],
      fill: (x, y) => if x in (3,6) {teal}
    ),
    caption: [Truth table for the Morgan's laws],
  )

  Columns in above table filled with the same color, has exactly the same truths, the two propositions are equivalent.
]

== Quantifiers
#definition(name: "universal quantifiers")[
  Let $P(x)$ be some statement depending on a free variable $x$. "$P(x)$ is true for all objects $x$" is called a *universal proposition*, denoted as
  $ forall x P(x) $
  A universal proposition is true, iff(if and only if) for any given object $x$, $P(x)$ is true regardless of what the exact value $x$ is. 
]

#example[
  "Square of all real numbers is non-negative" is expressed by $forall x(x in RR => x^2 >= 0)$, or simply $forall x in RR (x^2 >= 0)$.

  There are two ways to symbolize "Human will die". (1) Let $H(x)$ be a proposition "$x$ is a human", and $D(x)$ be "$x$ will die", then it looks like $forall x (H(x) => D(x))$. (2) Let $H$ be a set containing all human, and $D(x)$ be the same, then the proposition should be like $forall x in H (D(x))$.
]

#definition(name: "existential quantifiers")[
  Let $P(x)$ be some statement depending on a free variable $x$. "$P(x)$ is true for some object $x$" is called a *existential proposition*, denoted as
  $ exists x P(x) $
  A existential proposition is true, iff(if and only if) there is at least one object $x$, such that $P(x)$ is true. 
]

#example[
  "Not all swans are white" means there is at least one swan which is not white. How many of them. We have no idea exactly, the certain thing we know is there exists *at least one*. The symbolic express is $exists x in S (not W(x))$, where $S$ is the set containing all swans, and $W(x)$ tells that "$x$ is white". Another expression is $exists x (S(x) => W(x))$, where $S(x)$ means "$x$ is a swan".
]

#axiom[
  - $not(forall x P(x)) <=> exists x(not(P(x)))$
  - $not(exists x Q(x)) <=> forall x(not(Q(x)))$
]

#remark[
  The negation of universal quantifiers is the existential quantifier, and vice versa. E.g., the negation of "All swan is white" is "There exists at least one swan which is not white".
]

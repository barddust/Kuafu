#import "/mathenv.typ": *

= Natural Numbers
Now we are about to rebuild the whole numerical system. To begin, we have to forget the most of we knowledge about natural numbers. However, we still need some cardinally basic concepts and experience about natural numbers, just to judge if the system is of use.

In theory, we can construct any kind of mathematical system. We can claim that one plus one equals, say 3, then what we need to do is changing the rules accordingly, like $1+1+1=4$, $1+1+1+1=5$, and so on. In this case, there is no position for $2$ anymore, since $2$ means $1+!$ before, now replaced by $3$.

One disputing question during my high school is where the natural numbers start from. There are two viewpoints, either from 1 or 0. It is some kind of tradition? In fact, no matter where the naturals starts, the rules of naturals still hold. We may talk later.

By the thought of deductive reasoning, we need to begin with some axioms, which are true in theory and not needed to be proved. Here come the Peano axioms.

== Convention

Before the formal reasoning, we would like to give special notations for some sets.
- $NN$, the set of natural numbers
- $ZZ$, the set of integers
- $QQ$, the set of rational numbers
- $RR$, the set of real numbers
- $CC$, the set of complex numbers

Some of these may not be used, like $CC$, the others will show up in future.

== The Peano Axioms
#axiom[
  $0$ is a natural number; i.e.,
  $ 0 in NN $
]

#remark[
  $0$ is the beginning of the natural numbers.
]

#axiom[
  If $n$ is a natural number, then its successor, denoted as $n'$, is also a natural number; i.e.,
  $ forall n (n in NN => n' in NN) $
]

#remark[
  This axiom give two information: (1) Every natural numbers has one successor; (2) Successors are both natural numbers, too.

  So what are successors exactly? Basically, it is the result of adding one, intuitively the later one. Say $3$, its successor is $4$. Successors implies a relation of reasoning. And we can tell the beginning of natural numbers but not the end, that is why we use successor not a predecessor, the former one. $0$ has no such former one.

  Some books might use other notations, like $n++$, like the post-increment in computer language such as C. Another notation is like $S(n)$, since successor is a single-valued function.
]

#axiom[
  $0$ is not the successor of any natural number; i.e.,
  $ forall n in NN (n' != 0) $
]

#axiom[
  Different natural numbers have different successors; i.e.,
  $
    forall n,m in N (n != m => n' != m')
  $
]

#axiom(name: "Principle of mathematical induction")[
  Let $P(n)$ be a property or proposition pertaining to a natural number $n$. If the following two statements are both true:
  + $P(0)$;
  + If $P(k)$ is true for any natural number $k$, then $P(n')$ is also true,
  then we have that $P(n)$ is true for every natural numbers. The description by logic is like:
  $
    (P(0) and forall k in NN(P(k) => P(k'))) => forall n in NN(P(n))
  $
]

#remark[
  This axiom describes a series of events, for example, nuclear fission, dominoes. If one thing happens, then the next thing must happen. This tells the continuity of events. And $P(0)$, that is the first thing, happens just lighting up the fire, then $P(1)$ happens, furthermore, $P(3)$, and so do the others.
]


== Addition

#definition(name: "Addition of natural numbers")[
  Let $n,m$ be natural numbers. We define:
  - $0 + m := m$;
  - $n' + m := (n+m)'$.
]
#lemma[
  Let $n,m$ be natural numbers,
  - $n + 0 = n$
  - $n + m' = (n+m)'$
]

#proof[
  #pf(num:1)[
    To prove by induction, we need to show that: (1) the beginning, that is $P(0)$, is true; and (2) the continuity holds, i.e., for any given $n$, if we already have $P(n)$ is true, by supposing we do, then we get that $P(n')$ is also true.
  ]

  So, consider the case when $n=0$, we have $0_1 + 0_2 = 0_2$, where we mark these two zeros to trace how 0 in right side comes.

  We assume that $n + 0 = n$ is true. Now let us see if $n' + 0 = n'$ is true.
  $
    n' + 0 = (n+0)' = n'
  $

  That is exactly what we want, and hence the proof is done.

  #pf(num:2)[
    By Axiom 2.5, we can produce the proof of a proposition pertaining to a single nutural number $n$. For the above propositions needed to be proved, we just claim that "for every natural numbers m", such that the case is still concerned about one variable natural number $n$. We use induction on $n$, the proof is done for all natural numbers $m$ consequently.
  ]

  When $n=0$, we have $0 + m' = m'$.

  Assume that $k + m' = (k+m)'$ is true, consider the case when $n = k'$. Note that we just use another different symbol here, it does not really matter the proof at all.
  $
    k' + m' = (k' + m )' = ((k + m)')' = (k + m')' = k' + m'
  $
  The induction ends.
]

#proposition(name: "Rules of addition")[
  Let $n,m,l$ be natural numbers. Then
  $
    n+m = m+n\
    (n+m)+l = n + (m+l)\
    n = m <=> n + l = m + l
  $
]

#proof[
  #pf(num:1)[
    Consider the case when $n=0$, then $0 + m = m$ by Lemma 2.3.2.
  ]

  Assume that $k + m = m +k$ is true, consider the case when $n=k'$.

  $
    k' + m = (k+m)'  = k + m'
  $

  by Lemma 2.3.2. The induction ends.

  #pf(num:2)[Consider the case when $n=0$, then $(0 + m) + l = m + l = 0 + (m + l)$ by Lemma 2.3.2.]

  Assume that $(k + m) + l = k + (m + l)$ is true, consider the case when $n=k'$.
  $
    (k' + m) + l &= (k + m)' + l \
      &=((k+m) + l)' \
      &=(k + (m + l))'\
      &=k' + (m+l)
  $

  The induction ends.

  #pf(num:3)[We use induction for $l$. ]

  Now we are showing that $(n = m) => (n + l = m + l)$, and the proof from opposite side is similar.

  Consider the case when $l=0$, then $n + 0 = n = m = m + 0$.

  Assume that $(n = m) => (n + k = m + k)$ is true, consider the case when $l=k'$.

  $
    n + k' &= (n + k)' = (m + k)' = m + k'
  $

  The induction ends.
]
== Order of Natural Members

Here we have to define the order of natural numbers at fisrt, for some proof in the following section. In higher level number syste, we could define addition and multiplication at the beginning, and then ordering. Such that we can declare rules on ordering about addition and multiplication together.
#definition(name: "Ordering of natural members")[
  Let $n,m$ be natural members.
  - We say that $n$ is _greater than or equal to_ $m$, and write $n >= m$ or $m <= n$, iff $exists a in NN ( n = m + a)$;
  - We say that $n$ is (strictly) _greater than_ $m$, and write $n > m$ or $m < n$, iff $exists a in NN ( n = m + a and n != m)$.
]

#example[
  We say $8 >= 5$, that means there exists a natural number $a$, $3$ in this case, such that $8 = 5 + 3$. If $8 > 5$, one more condition is needed: $8 != 5$.
]

#remark[
  "$m$ is greater than $n$", written as $m > n$ or $n < m$, is also called "$n$ is less than $m$". Therefore, all rules pertaining to $<$ or $<=$, are also satisfied for $>$ and $>=$.
]

#proposition(name: "A practical definition")[
  $(n > m) <=> exists e in NN (n = m + e) and e != 0$
]

#proof[
  These two definitions both claim that there exists some natural number $e$ such that $n = m + e$. The difference is focus on $n != m$ and $e != 0$, which is what we should prove exactly.

  #noin[_Proof for_ $n != m => e != 0$.]

  It is obvious by contradiction. Suppose that $e = 0$, and hence $n = m + e = m + 0 = m$, which is a contradiction.

  #noin[_Proof for_ $e != 0 => n != m$.]

  It is also obvious by contradiction. Suppose that $n = m$, and hence $n = m =  m + e => e = 0$, which is a contradiction.

  In summary, we have that $n != m <=> e != 0$ if $n = m + e$ for some $e in NN$, then the proof ends.
]

#remark[
  For convenience, we sometimes write $NNN$ as the set of natural numbers without zero. And hence, the above proposition can be expressed by
  $
    (a > b) <=> exists e in NNN (a = b + e)
  $
]

#lemma[
  $forall a,b in NN (a + b = 0 <=> (a = 0 and b = 0))$.
]

#proof[
  For contradiction, we assume that there exists $a,b in NN$, such that $a + b = 0$ and $a != 0 or b != 0$.

  #noin[
    *Case 1*, one of $a$ and $b$ equals to $0$, say $b = 0$. Then $0 = a + b = a + 0 = a$, a contradiction.
  ]

  #noin[
    *Case 2*, both of $a$ and $b$ are equal to $0$. By Axiom 2.2, there exists a natural number $c$, such that $c' = a$. Then we have
  ]
  $
    0 = a + b = c' + b = (c + b)'
  $
  This is a contradiction since none of natruals has successor of 0.

  In both cases, we can deduce contradictions, and hence the original proposition is true.
]

#proposition[
  Let $a,b,c$ be natural numbers. Then

  + (Reflexive) $a >= a$.
  + (Transitive) $(a >= b) and (b >= c) => a >= c$.
  + (Anti-symmetric) $(a >= b) and (b >= a) => a = b$.
  + (Addition preserves order) $(a >= b) <=> (a + c >=  b + c)$.
  + $a < b <=> a' <= b$

]

#proof[
  #pf(num:1)[Prove by contradiction, we assume that the negation of $a >= a$, i.e, by definition, $forall e in NN ( a != a + e )$.]

  Consider $e = 0$, we have $ a + e = a + 0 = a$. This is a contradiction. And hence, $a >= a$. is true.

  #noin[
    #pf(num:2)[By definition,]
  ]
  $
    a >= b &<=> exists e_1 in NN (a = b + e_1) \
    b >= c &<=> exists e_2 in NN (b = c + e_2)
  $
  , and hence,
  $
    a = b + e_1 = c + e_2 + e_1 = c + (e_1 + e_2)
  $

  Let $e = e_1 + e_2$, then $a = c + e$. By definition again, we have $a >= c$.

  #noin[
    #pf(num:3)[For contradiction, we we assume that, $a >= b and b >= a and a != b$.]
  ]

  By definition, we we have

  $
    a >= b &<=> exists e_1 in NN ( a = b + e_1)\
    b >= a &<=> exists e_2 in NN ( b = a + e_2)
  $

  , and hence

  $
    a + 0 = a = b + e_1 = a + e_2 + e_1
  $

  By cancellation law, we have $e_1 + e_2 = 0$. Then by Lemma 2.4.5, we have $e_1 = e_2 = 0$, i.e., $a = b$.

  #noin[
    #pf(num:4)[By definition, there exists a natural number $e$, such that $a = b + e$. Then]
  ]

  $
    a = b + e <=> a + c = b + e +c = (b + c) + e <=> a + c >= b + c
  $

  #pf(num:5)[Proof of sufficiency.]

  For $a < b$, by lemma, we have $exists e_1 in NN (b = a + e_1) and e_1 != 0$.

  To prove by contradiction, we assume that $not(a' <= b)$, i.e., $forall e_2 in NN (b != a' + e_2)$.

  $
    b = a + e_1 != a' + e_2 = (a + e_2)' = a + e_2'
  $

  and hence, $e != e_2'$ for all $e_2 in NN$. This is a contradiction, since all non-zero natural numbers has a successor.
]

#lemma[
  1. $a > b => a' > b$;
  2. $a = b => a' > b$;
  3. $a < b => a' <= b$.
]

#proof[
  #pf(num:1)[
    $a > b$ means $exists e in NNN ( a = b + e)$. Then $a' = (b + e)' = b + e'$. Since $e$ is positive, then $e'$ is also positive. Otherwise we have that $e' = 0$, but none of natural numbers has 0 as its successor.
  ]

  Therefore, $a' > b$ for some $e' in NNN$.

  #pf(num:2)[]
  $
    a' = b' = (b + 0)' = b + 0'
  $

  In other words, we have $a' = b + 0'$ for some $0' in NNN$, i.e., $a' > b$.

  #pf(num:3)[
    $a < b$ means $exists e in NNN (b = a + e)$. By axiom, there exists another natural number $f$, such that $f' = e$. Then
  ]
  $
    b = a + f' = a' + f
  $

  and hence, $b >= a'$ by definition.
]

#proposition(name: "trichotomy of order for natural numbers")[
  Let $a, b$ be natural numbers. Then exactly one of the following statements is true: (1) $a < b$; (2) $a = b$; (3) $a > b$.
]

#proof[
  We can compose these three statements into two: $a < b$, and $a >= b$. The steps of the proof are:
  + The exactly one of $a < b$ and $a >= b$ will happen, which means:
    - At least one of them happens. This part of proof is done by induction;
    - At most one of them happens, i.e., $(a < b) and (a >= b)$ is false.
  + If $a >= b$ happens, then the exactly one of $a > b$ and $a = b$ will happen:
    - At least one of them happens.
    - At most one of them happens.

  #noin[_Step 1_: at least one of $a < b$ , $a = b$ and $a > b$ happens.]

  Fix $b$, we induct on $a$. When $a = 0$, we have $0 <= b$ for all $b$. Another induction on $b$ shows this claim.

  Suppose that $a = k$, we have this proposition right. There are three cases: (1) If $a > b$, then we have $a' > b$; (2) If $a = b$, then we have $a' > b$; (3) If $a < b$, then we have $a' <= b$. These statements have been proven in the former lemma.

  Therefore, at least one of $a < b$ , $a = b$ and $a > b$ happens by induction.

  #noin[
    _Step 2_: $(a < b) and (a >= b)$ is false.
  ]

  $
     (a < b) &<=> exists e_1 in NN (b = a + e_1) and e_1 != 0\
     (a >= b) &<=> exists e_2 in NN (a = b + e_2)
  $

  and hence, $b = b + e_1 + e_2 => e_1 + e_2 = 0 => e_1 = 0 and e_2 = 0$. This is a contradiction since $e_1 != 0$.

  #noin[
    _Step3_: If $a >= b$ happens, then $exists e in NN (a = b + e)$. Still we need to show that both of $a > b$ and $a = b$ be neither true nor false at the same time.
  ]

  Suppose they are both true, however, it is impossible by the definition of $a > b$ which requires $a != b$.

  Suppose they are both false, then for every natural number $e$, we have $a != b + e$, which contradicts with the hypothesis.

  In summary, one of $a > b$, $a = b$, and $a < b$ exactly happens.
]

== Multiplication
#definition(name: "Multiplication of natural numbers")[
  Let $n,m$ be natural numbers. We define:
  - $0 times m := 0$
  - $n' times m := (n times m) + m$
]

#lemma[
  Let $n,m$ be natural numbers,
  - $n times 0 := 0$
  - $n times m' := (n times m) + n$
]

#proof[
  #pf(num:1)[When $n=0$, $0 times 0 = 0$.]

  Suppose we have $k times 0 = 0$ when $n = k$, consider

  $
    k' times 0 &= (k times 0) + 0\
      &= 0 + 0\
      &= 0
  $

  #pf(num:2)[Use induction on $n$. When $n = 0$, $0 times m' = 0$ by the former lemma.]

  Suppose we have $k times m' = (k times m) + k$ when $n = k$, consider
  $
    k' times m' &= (k times m') + m'\
      &= (k times m) + k + m'\
      &= (k times m) + (k + m')\
      &= (k times m) + (k +m)'\
      &= (k times m) + k' + m\
      &= (k times m) + m + k'\
      &= (k' times m) + k'
  $

  That is what we want.
]

#remark[
  The proof looks a little tedious, we may skip some of the steps in the most of time. Why we need that preciseness is to make reasoning sensible and acceptiable in every moment, and that is what we shall gain from Analysis.
]

#remark[
  For convenience, we sometimes omit the sign $times$ between two letters, or a letter and a number. For instance, $a times b$ is usually written as $a b$, and $3 times c$ is written as $3c$. In another case, we may also use a dot $dot.c$ to represent the multiplication, for example, $x times y$ is equivalent to $x dot.c y$.
]

#lemma[
  Let $a,b$ be natural numbers, if $a b = 0$, and $a=0 or b=0$.
]

#proof[
  To prove by contradiction, we asssume that $a != 0$ and $b != 0$. Then there exists a natural number $e$, such that $e' = b$.
  $
    a b = a dot.c e' = a e + a = 0
  $
  we obtain $a e = 0$ and $a = 0$, this contradicts to the hypothesis $a != 0$.
]

#proposition(name: "Rules of multiplication")[
  Let $n,m,l$ be natural numbers. Then
  $
    n times m = m times n\
    (n + m) times l = n times l + m times l\
    (n times m) times l = n times (m times l)\
    n = m => n times l = m times l\
    (l != 0 and n times l = m times l) => n = m
  $
]

#proof[
  #pf(num:1)[Fix $m$, and use induction on $n$.]

  Let $n = 0$, we have $0 times m = 0 = m times 0$.

  Suppose $k times m = m times k$ is true, consider
  $
    k' times m &= (k times m) + m\
      &= (m times k) + m\
      &= m times k'
  $

  #pf(num:2)[We use induction on $l$.]

  Let $l = 0$, then $(n + m) times 0 = 0$, $n times 0 + m times 0 = 0 + 0 = 0$. Therefore $(n+m) times 0 = n times 0 + m times 0$.

  Suppose $(n + m) times l = m times l + m times l$ is true, consider

  $
    (n + m) times l' &= (n + m) times l + (n + m)\
      &= (n times l) + (m times l) + n + m\
      &= ((n times l) + n) + ((m times l) + m)\
      &= (n times l') + (m times l')
  $

  #pf(num:3)[We use induction on $n$.]

  Let $n = 0$, then $(0 times m) times l = 0 times l = 0$ and $ 0 times (m times l) = 0$, i.e., $(0 times m) times l = 0 times (m times l)$

  Suppose $(k times m) times l = k times (m times l)$ is true, consider

  $
    (k' times m) times l &= ((k times m) + m) times l\
      &= (k times m) times l + m times l\
      &= k times (m times l) + m times l\
      &= k' times (m times l)
  $

  Proofs are done.

  #pf(num:4)[Given $n = m$, we use induction on $l$.]

  When $l = 0$, $n times l = n times 0 = n = m = m times 0 = m times l$ is true.

  When $l = k$, suppose that $n times k = m times k$ is true. Consider $l = k'$, then

  $
    n times l' &= n times l + n\
      &= m times l + m\
      &= m times l'
  $

  The induction ends.

  #pf(num: 5)[Given $l != 0$ and $n times l = m times l $, we use induction on $l$.]

  Note that in former part, we use induction from index $0$, which is claimed by Peano's Axiom 5, while here index starts from 1. Actually induction can start from any natural number, we just need to check if the proposition is true on the indices before the index we choose.

  When $l = 1$, $n times 1 = m times 1 = m$, then $n = m$, the proposition is true.

  When $l = k$, suppose that if $n times l = m times l$ then $n = m$ is true. Consider $l = k'$, we need to show that $n times l' = m times l' => n = m$. For producing contradiction, assume that $n != m$, in particular, $n > m$ without loss of generality. There exists $e in NNN$, such that $n = m + e$.

  $
    n times l' &= m times l'\
    (m + e) times l' &= m times l'\
    m times l' + e times l' = m times l'\
    e times l' = 0\
  $

  By lemma, we have that $e = 0$ or $l' = 0$. However, none of them will happens, since $e in NNN$ and there is no such number whose successor is 0.

  The induction ends.
]

#proposition(name: "Multiplication preserves order")[
  Let $a,b,c$ be natural numbers, and $c != 0$. If $a < b$ , then $a c < b c$.
]

#proof[
  By definition, there exists a non-zero natural number $e$, such that $b = a + e$. Then
  $
    b c &= (a + e)c\
      &=a c + e c
  $

  Since $e != 0$ and $c != 0$, we have $e c != 0$, and hence $ a c < b c$.
]

#proposition(name: "Successor is actually increment")[
  $forall n in NN (n' = n + 1)$.
]

#proof[
  By definition of multiplication, we have $n' dot m = n dot m + m$. Just let $m=1$, the left side:
  $
    n' dot 1 = n' dot 0' = n' dot 0 + n' = 0 + n' = n'
  $

  and the right side:

  $
    n dot 1 + 1 = n dot 0' + 1 = n dot 0 + n + 1 = 0 + n + 1 = n + 1
  $

  and hence, $n' = n + 1$.
]

#remark[
  Of course, another way to prove this proposition is to use induction.
]

== Exponentiation for natural numbers
#definition[
  Let $m$ be a natural number. We define:
  - $m^0 := 1$;
  - $m^n' := m^n times m$.
]

#proposition[
  Let $m,n,l$ be natural numbers,
  - $m^(n) dot.c m^(l) = m^(n + l)$;
  - $(m^(n))^(l) = m^(n l)$.
]

#proof[
  For all propositions, we use induction on $l$.

  #noin[
    #pf(num:1)[Let $l = 0$, we have]
  ]
  $
    m^n dot m^0 &= m^n dot 1\
      &= m^n dot 0'\
      &= m^n dot 0 + m^n\
      &= m^n\
      &= m^(n+0)
  $

  Suppose $m^n dot m^k = m^(n+k)$ is true, then
  $
    m^n dot m^k' &= m^n dot (m^k dot m)\
      &= (m^n dot m^k) dot m\
      &= m^(n+k) dot m\

      &= m^(n+k)'\
      &= m^(n+k')
  $

  #pf(num:2)[Let $l = 0$, we have $(m^n)^0 = 1$, and $m^(n dot 0) = m^0 = 0$, i.e., $(m^n)^0 = m^(n dot 0)$.]

  Suppose $(m^n)^k = m^(n k)$ is true, then

  $
    (m^n)^k' &= (m^n)^k dot m^n\
      &= m^(n k) dot m^n\
      &= m^(n k + n)\
      &= m^(n(k+1))\
      &= m^(n dot k')
  $

  The proofs are done.
]

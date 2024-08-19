#import "/mathenv.typ": *

= The integers
If we want to build a new number system, we have to start from the basic bricks, which is the numbers themselves. However, we have no such ability to define the numbers; they are so abstrct and obscure, although we do have a little consciousness on them.

We do not talk about what numbers to be or should be, instead how any two of them are said to be equal. And then we need to check if the equvialence is well-defined, i.e., whether "=" satisfies the following three conditions when given any $a,b,c$ in this number system:

+ $a = a$;
+ $a = b <=> b = a$;
+ $a = b and b = c => a = c$.

Next we can define addition, and deduce the laws of addition. And multiplication and laws of multiplication. Then the order of numbers and rules accordingly.

Finally, it is necessary to tell the advantages of the new number system we have just made. Why we need it? How can we use it in applications?

== Definition of Integers
#definition(name: "Integers")[
  Let $a,b$ be natural numbers. We define an _integer_ as a _ordered pair_ $(a,b)$. For another intger $(c,d)$, we define:
  $
    (a,b) = (c,d) <=> a + d = c + b
  $
  We let $ZZ$ denote the set of all integers.
]

#remark[
  An ordered pair is a form consisting of two objects. For $(a,b)$, "ordered" means that $(a,b) != (b,a)$ does not always hold.
]

#remark[
  In fact, integers are derived from substraction of natural numbers. The definition above actually tells that $(a,b) = (c,d)$ means $a - b = c - d$. In this way, we can introduce new object, like negative numbers, implicitly. We will see a similar defnition in rational numbers.
]

#remark[
  The integers $(n,0)$ behave in the same way as the natural numbers $n$. It is easy to show that the equality of two integers $(n,0)$ and $(m,0)$ is actually the equality of two natural numbers $n$ and $m$. And it also holds in addition and multiplication, and all the other laws.
]

== Addition
#definition(name: "Addition of integers")[
  Give two integers $(a,b)$ and $(c,d)$, we define the sum of two integers by formula:
  $
    (a,b) + (c,d) := (a+c, b+d)
  $
]

#remark[
  We have to check if our definition of addition and multiplication is _well-defined_, which means *given equal inputs, we shall obtain equal outputs*.
]

#proposition(name: "Addition of integers are well-defined")[
  Let $a,b,c,d,x,y$ be natural numbers. If $(a,b) = (c,d)$, then:
  + $(a,b) + (x,y) = (c,d) + (x,y)$;
  + $(x,y) + (a,b) = (x,y) + (c,d)$.
]

#proof[
  By definition we have $a + d = b + c$.

  #pf(num:1)[Adding $x+y$ for both sides, we obtain:]

  $
    a + d + x + y &= b + c + x + y\
    (a+x) + (d+y) &= (c+x) + (b+y)\
      &arrow.b.double\
      (a+x, b+y) &= (c+x, d+y)\
      &arrow.b.double\
      (a,b) + (x,y) &= (c,d) + (x,y)
  $

  Proof for 2 is similar since addition of natural numbers is commutative and associative.
]

#proposition(name: "Laws of addition for integers")[
  Let $x,y,z$ be integers.
  $
    x + y = y + x\
    x + (y + z) = (x + y) + z\
    x = y <=> x + z = y + z
  $
]

#proof[
  Let $x = (a,b), y = (c,d), z = (e,f)$.

  #pf(num:1)[]
  $
    x + y &= (a,b) + (c,d)\
      &= (a + c, b + d)\
      &= (c + a, d + b)\
      &= (c,d) + (a,b) = y + x
  $

  #pf(num:2)[]

  $
    (x + y) + z &= ((a,b) + (c,d)) + z\
      &= (a + c, b + d) + (e,f)\
      &= (a + c + e , b + d + f)\
      &= (a + (c + e), b + (d + f))\
      &= (a,b) + ((c + e, d + f))\
      &= x + ((c,d) + (e,f)) = x + (y + z)
  $

  #pf(num:3)[]
  $
    x + z = y + z &<=> (a + e, b + f) = (c + e, d + f)\
      &<=> a + e + d + f = b + f + c + e\
      &<=> a + d + (e + f) = b + c + (e + f)\
      &<=> a + d = b + c\
      &<=> x = y
  $
]

== Multiplication

#definition(name: "Multiplication of integers")[
  Give two integers $(a,b)$ and $(c,d)$, we define the product of two integers by formula:
  $
    (a,b) times (c,d) := (a c + b d, b c + b c)
  $
]

#lemma[
  Let $(a,b)$ be an integer. Then $(a,b)=0$ iff $a=b$.
]

#proof[
  $
    (a,b) = 0 &<=> (a,b) = (0,0) \
      &<=> a + 0 = b + 0\
      &<=> a = b
  $
]

#lemma[
  $forall a,b in ZZ(a b = 0 => a = 0 or b = 0)$.
]

#proof[
  To produce contradiction, we assume that $a != 0 and b != 0$. In this way, we have to let $a = (n_1,m_1)$ and $b = (n_2,m_2)$.

  Since $a,b$ are both non-zero, we have $n_1 != m_1$ and $n_2 != m_2$. Without loss of generality, we assume that $n_1 > m_1$ and $n_2 > m_2$. This just matters in the end, but it is also easy to fix this.

  $
    a dot b &= (n_1,m_1) dot (n_2,m_2)\
      &= (n_1 n_2  + m_1 m_2, n_1 m_2 + m_1 n_2)\
      &= 0
  $

  By lemma, we have $n_1 n_2 + m_1 m_2 &= n_1 m_2 + m_1 n_2$. By definition of the order for natural numbers, there exist non-zero natural numbers $e_1,e_2$, such that $n_1 = m_1 + e_1$ and $n_2 = m_2 + e_2$, and hence
  $
    (m_1 + e_1)(m_2 + e_2) + m_1 m_2 &= (m_1 + e_1)m_2 + m_1(m_2 + e_2)\
    m_1 m_2 + e_1 m_2 + m_1 e_2 + e_1 e_2 + m_1 m_2 &= m_1 m_2 + e_1 m_2 + m_1 m_2 + m_1 e_2\
    e_1 e_2 &= 0
  $
  we obtain that at least one of $e_1,e_2$ must be zero. However, these two are both non-zero, a contradiction.
]

#proposition(name: "Laws of multiplication for integers")[
  Let $x,y,z$ be integers. Then we have
  $
    x y = y x\
    x (y z) = (x y) z\
    x (y + z) = x y + x z\
    x = y => x z = y z
  $
]

#proof[Omitted]

#definition(name: "Negation of integers")[
  Let $(a,b)$ be an integer, we define $(b,a)$ as the _negation_ of $(a,b)$, denoted as $-(a,b)$.
]

#definition(name: "Substraction of integers")[
  Let $a,b$ be integers. We define the _subtraction_ of these two integers by the formula
  $
    x - y := x + (-y)
  $
]

#remark[
  We can define substraction on integers, and the operation is closed, which means the difference of two integers is still a integer (it is not when it comes to natural numbers).
]

#lemma[
  $forall x,y in ZZ( -(x dot y) = (-x) dot y = x dot (-y))$
]

#proof[
  We just are about to prove $- (x dot y) = (-x) dot y$ since the other one is similar.

  Let $x = (n_1,m_1)$ and $y = (n_2,m_2)$. Then
  $
    - (x dot y) &= -((n_1,m_1) dot (n_2,m_2))\
      &= -((n_1 n_2 + m_1 m_2, n_1 m_2 + m_1 n_2))\
      &= (n_1 m_2 + m_1 n_2, n_1 n_2 + m_1 m_2)
  $

  and
  $
    (-x) dot y &= -(n_1, m_1) dot (n_2,m_2)\
      &= (m_1,n_1) dot (n_2,m_2)\
      &= (m_1 n_2 + n_1 m_2, m_1 m_2 + n_1 n_2)
  $
  Prove done here.
 ]

#proposition(name: "Cancellation law for integers")[
  $forall x,y,z in ZZ ((x z = y z and z != 0) => (x = y))$.
]

#proof[
  $
    x z &= y z\
    x z + (- y z) &= y z + (- y z)\
    x z + (- y) z &= 0\
    (x + (-y)) z &= 0
  $

  Since $z != 0$, we obtain $x + (-y) = 0$. Adding $y$ on both sides we obatin $x = y$.
]

== Ordering of the integers
#definition(name: "Ordering of the integers")[
  Let $n,m$ be integers.
  - We say that $n$ is _greater than or equal to_ $m$, and write $n >= m$ or $m <= n$, iff there exists some natural number $a$ such that $n = m + a$;
  - We say that $n$ is _greater than_ $m$, and write $n > m$ or $m < n$, iff there exists some natural number $a$ such that $n = m + a$, and $n != m$;
]

#remark[
  For "greater than", we still have the equivalent definition like natrual numbers does: there exists a positive natural number $a$, such that $n = m + 1$ if $n > m$.
]

#proposition(name: "Properties of order")[
  Let $a,b,c$ be integers.
  + $a > b <=> a - b > 0$;
  + $a > b => a + c > b + c$;
  + $a > b and c > 0 => a c > b c$;
  + $a > b => - a < - b$;
  + $a > b and b > c = >  a > c$;
  + Exactly one of the statements $a>b$, $a<b$ or $a=b$ is true.
]

#remark[
  For convenience, we use symbol $NNN$ to represent the set of positive natural numbers.
]

#proof[
  Let $a = b + e$ for some positive natural number $e$.

  #pf(num:1)[
    $a>b <=> a = b + e <=> a - b = e > 0$
  ]

  #pf(num:2)[]
  $
    a &= b + e \
    a + c &= b + e + c\
      &= (b +c) + e\
  $

  and hence $a + c > b +c$.

  #pf(num:3)[]
  $
    a &= b + e\
    a c &= (b + e)c\
      &= b c + e c
  $
  since $e$ and $c$ are both non-zero, then $a c > b c$.

  #pf(num:4)[]
  $
    a &> b\
    a + (-a) + (-b) &> b + (-a) + (-b)\
    -b &> -a
  $

  #pf(num:5)[Let $b = c + f$ for some positive natural number $f$.]
  $
    a &= b + e\
      &= (c + f) + e\
      &= c + (f + e)
  $

  Since $e$ and $f$ are both positive, $f + e$ is positive, and hence $ a > c$.

  #pf(num:6)[
    We need to prove that
    - At most one of them is true, i.e., if two of them happen, then it comes a contradiction.
    - At least one of them is true. This can be done by induction.
  ]

  #noin[
    _Step 1_#h(1em)By definition, $a > b$ and $a = b$ cannot be both true, so are $a < b$ and $a = b$. Therefore we need to show that $a > b$ and $a < b$ cannot be both true.
  ]

  Suppose they are, and hence

    $
      exists e in NN_+ (a = b + e)\
      exists f in NN_+ (b = a + f)\
      arrow.b.double\
      a = a + f + e
    $

  thus we have $e + f = 0$, furthermore, $e = 0 and f = 0$. This is a contradiction since $e$ and $f$ are both positive.

  In summary, at most one of those three is true.

  #noin[
    _Step 2_#h(1em) Like how we do in the proof for the trichotomy for natural numbers, we induct on $a$, fixing $b$. The rest part is similar.
  ]
]

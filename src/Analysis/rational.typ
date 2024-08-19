#import "/mathenv.typ": *

= The rationals
== Definition of Rationals
#definition(name:"rational number")[
  Let $a,b$ be integers, and $b != 0$. We define an _rational number_ as a ordered pair $(a,b)$. For another rational number $(c,d)$, we define:
  $
    (a,b) = (c,d) <=> a d = c b
  $
  We let $Q$ denote the set of all rationals.
]

#remark[
  The definition of rationals is similar as integers', both from ordered pairs. Here round parentheses are used still, just to tell there is not much difference between integers and rationals internally.
]

== Addition
#definition[
  Give two rationals $(a,b)$ and $(c,d)$, we define the sum of two rationals by formula:
  $
    (a,b) + (c,d) := (a d + b c, b d)
  $
]

#proposition(name: "Laws of addition for rationals")[
  Let $x,y,z$ be rationals. Then
  - $x + y = y + x$;
  - $x + (y + z) = (x + y) + z$;
  - $x = y <=> x + z = y + z$.
]

#proof[
  Similar as before.
]

== Multiplication

#definition(name: "Multiplication of rational numbers")[
  Give two rationals $(a,b)$ and $(c,d)$, we define the product of two rationals by formula:
  $
    (a,b) times (c,d) := (a c , b d)
  $
]

#proposition(name: "Laws of multiplication for rationals")[
  Let $x,y,z$ be rationals.
  $
    x y = y x\
    x (y z) = (x y) z\
    (x + y) z = x z + y z\
    x = y => x z = y z\
    z != 0 and x z = y z => x = y\
  $
]

#proof[
  Similar as before.
]

#definition(name: "Reciprocals of a rational number")[
  Let $x = m/n$ be non-zero rational numbers, where $m,n in ZZ$. We define the _reciprocal_ $x^(-1)$ of $x$ by the formula
  $
    x^(-1) := n / m
  $
]

#definition(name: "Quotient of rational numbers")[
  Let $x,y$ be rationals, and $ y != 0$. We define the _quotient_ of $x$ and $y$ by the formula
  $
    x\/y := x times y^(-1)
  $

  Another notation for that quotient is $x / y$.
]

#remark[
  The quotient of two rational numbers is still a rational number. We now obtain one more useful tool to deal with numbers.
]


== Ordering of Rational Numbers
#definition(name: "Negation of rational numbers")[
  Let $x = (a,b)$ be a rational number, we define the negation of $x$, written as $-x$, by the formula:
  $
    -(a,b) := (-a, b)
  $
]

#definition(name: "Positive and negative rationals")[
  Let $x = (a,b)$ be a rational. We say $x$ to be
  - zero iff $a = 0$ and $b != 0$;
  - _a positive rational number_ if $a > 0$ and $b > 0$;
  - _a negative rational number_ if $- x$ is positive.
]

#proposition(name: "Trichotomy of rationals")[
  Let $x$ be a rational number. Then exactly one of the following tree statements is true: $x$ is positive, $x = 0$, or $x$ is negative.
]

#proof[
  Let $x = (a,b)$ for some integers $a,b$.

  #noin[
    _Step 1_. To show that at most one of three statements is true.
  ]

  By definition, if $x$ is positive, or negative, then $x$ cannot be zero.

  Suppose we have that $x$ is both positive and negative, then $-x$ is also positive, and hence $(a > 0 and b > 0) and (-a > 0 and b > 0)$, i.e.,
  $
    a > 0 and a < 0
  $

  By the trichotomy of integers, this is a contradiction.

  Therefore, at most one of these three is true.

  #noin[
    _Step 2_. At least one of three statements is true.
  ]

  For contradiction, we let all these three be false.

  Since $x$ is not positive, $not(a >0 and b >0) <=> a <= 0 and b <=0$. Since $-x$ is positive, $not(-a > 0 and b > 0) <=> a >= 0 and b >= 0$.

  And hence there exists $e,f in NN$, such that $0 = a + e and a = 0 + f$,
  $
    0 = a + e &= 0 + f + e\
    e + f &= 0
  $

  thus, $e = f = 0$, i.e., $a = 0$; this contradicts with the hypothesis that $x$ is not zero.

  Therefore, at least one of these three is true.

  In summary, exactly one of them is true.
]

#definition(name: "Subtraction of rationals")[
  Let $x,y$ be rational numbers. We define the _difference_ of $x,y$ by formula
  $
    x - y := x + (-y)
  $
]

#definition(name: "Order of the rationals")[
  Let $x,y$ be rationals.
  - $x > y$ iff $x - y$ is positive;
  - $x < y$ iff $x - y$ is negative;
  - $x >= y$ iff $x > y or x = y$;
]

#proposition[
  Let $x,y,z$ be rational numbers.
  + $x > y <=> y < x$;
  + $x < y and y < z => x < z$;
  + $x < y => x + z < y + z$;
  + $x < y and z > 0 => x z < y z$.
  + Exactly one of the three statements $x = y$, $x < y$, or $x > y$ is true;
]

#proof[
  Omitted.
]

#import "/mathenv.typ": *

= The Real Numbers

The construction of real numbers does not like the operation we have done before. What we need is a new system, which is said to be _continuous_. We say a system to be continuous, when putting all these numbers into a line with some order (suppose we can), given any two numbers, we can always find another nuber in this system, which is between these twos.

However, it should be a property of real numbers, i.e., if we have real number system, we have that property, too. The question is how can we obtain system like that?

There are several ways to build the real number system. I choose the method used in Tao's book _Analysis_, by the concepts distance, limit, convergence, etc.

== Distance of rational numbers
#definition(name: "Distance of rational numbers")[
  The _distance of rational numbers_ is a map, from $QQ times QQ$ to $QQ$. Given any two rational numbers $x,y$, the distance between them is written as $d(x,y)$. Distance function satisfies:
  + $d(x,y) > 0$;
  + $d(x,y) = d(y,x)$;
  + $d(x,z) <= d(x,y) + d(y,z)$.
]

#remark[
  Of course we can define distance for natural numbers and integers, but it is unnecessary since rational number system is compatible to them.
]

#remark[
  We already know that the difference between two rationals is still a rational number, which means comparasion of two distance is meaningful. Therefore, it is sensible to say that $a$ is farther to $c$ than $b$, i.e., $d(a,c) > (b,c)$.
]

#remark[
  Function of distance can be designed to be complex. Basically, the distance we are talking about now is _absolute value_.

  $
    d(a,b) = |a - b| = cases(
    a - b "if" a >= b,
    b - a "if" a < b,
    )
  $

  Indeed, distance is abstracted from the distance in physics, that is absolute value. In the future, we may keep this abstraction for more general usage.
]

#remark[
  In particular, the absolute value of asingle number, say $|3|$, is actually the distance from this number to zero, i.e., $|3| = |3 - 0| = 3$.
]

#lemma[
  Let $a,b,c in QQ$, and $c > 0$. Then
  $
    |a - b| <= c <=> -c <= a - b <= c
  $
]

#proof[
  If $a >= b$, then $|a - b| = a - b <= c$. If $a < b$, then $|a - b| = b - a <= c$, i.e., $a - b >= -c$. Then we have $|a - b| <= c => -c <= a - b <= c$.

  Similar for the proof of necessity.
]

== Cauchy sequences
#definition(name: "Sequences")[
  Let $m$ be an integer. A _sequence of rational numbers_, denoted as $(a_n)_(n=m)^oo$, is any function from the set ${n in ZZ | n >= m}$ to $QQ$.
]

#remark[
  Basically, a sequence of rational numbers is a collection of rationals in particular order. Say a sequence of odd numbers $1,3,5, dots$, we use symbols $a_1,a_2,a_3, dots$ to represents the elements in sequence. The number in the corner says to be _index_ of the sequence, which is not required to start from 1 rigorously.
]

#remark[
  Another notation of sequences is like $a_n (n = m,m+1,dots)$. Thoughout this book, we simply use $a_n$ to represent $(a_n)_(n=0)^oo$, unless there is some special explaination.
]

#definition(name: "Cauchy sequences")[
  A sequence $a_n$ of rational numbers is said to be a _Cauchy Sequence_ iff
  $
    forall epsilon in QQ exists N in NN forall i,j in NN( i,j >= N => d(a_i, a_j) < epsilon)
  $
]

#remark[
  For a Cauchy sequence, given certain restriction, we can always find some index, the difference of any two elements after this index won't be larger than the restriction.
]

#remark[
  Some textbooks may specify that the distance between is less than or equal to $epsilon$, i.e., $d(a_i,a_j) < epsilon$. In fact, the equal sign does not matter at all; what we care about is how *close* these two points are, instead of how far they are. They are expected to be closed.
]

#definition(name: "Bounded sequences")[
  A sequence $a_n$ of rational numbers is said to be _bounded_ iff
  $
    exists M >= 0 (in RR) forall i in NN (|a_i| <= M)
  $
]

#lemma(name: "Finite sequences are bounded")[
  If $a_n$ is finite, i.e., $a_1,a_2,dots,a_n$, then it is bounded.
]

#proof[
  Since the sequence is finite, then we can find out the larget and the smallest element, say $M$ and $m$ respectively. Then $m <= a_i <= M$ for all $i in {1,2,dots,n}$.

  Let $C = max{|M|,|m|}$. Then
  $
    |M| <= C => M <= C\
    |m| <= C => -C <= m
  $

  thus, we have $-C <= a_i <= C$, i.e., $|a_i| <= C$ for all $i in {1,2,dots,n}$.
]

#proposition(name: "Cauchy sequences are bounded")[
  If a sequence $a_n$ is Cauchy, then it is bounded.
]

#proof[
  $a_n$ is Cauchy, then
  $
    forall epsilon in QQ exists N in NN forall i,j in NN( i,j >= N => d(a_i, a_j) < epsilon)
  $

  In particular, we choose $j = N$, then we have
  $
    |a_i - a_N| < epsilon\
    - epsilon < a_i - a_N < epsilon\
    a_N - epsilon < a_i < a_N + epsilon
  $

  Let $M_2 = max{|a_N - epsilon|, |a_N + epsilon|}$. And hence
  $
    |a_N + epsilon| <= M_2 => a_N + epsilon <= M_2\
    |a_N - epsilon| <= M_2 => -M_2 <= a_N - epsilon
  $

  Therefore,
  $

    -M_2 <= a_N - epsilon < a_i < a_N + epsilon <= M_2
  $

  i.e., $|a_i| <= M_2$ for all $i >= N$.

  Consider the finite sequence $a_0,a_1,dots, a_(N-1)$,  by Lemma, it is bounded to, and suppose $|a_i| <= M_1 (i = {0,1,dots, a_(N-1)})$ for some $M_1 in QQ$.

  In the end, let $M = max{M_1,M_2}$, then we have $|a_i| <= M$ for all $i in NN$.
]

#definition(name: "Equivalent sequences")[
  Given two sequences $a_n$ and $b_n$. We say these two sequences are _equivalent_, written as $a_n sim b_n$ iff
  $
    forall epsilon > 0 (in QQ) exists N in NN(n >= N => |a_n - b_n| < epsilon)
  $
]

#remark[
  We are about to form a real number by letting a rational sequence to approach. Say $sqrt(2) = 1.4142dots$, we can construct a sequence like:
  $
    1.4, 1.41, 1.414, 1.4142, dots
  $

  and we assert this sequence goes to $sqrt(2)$ eventually.

  This idea is brilliant, but the sequence
  $
    1.5, 1.41, 1.414, 1.4142, dots
  $

  seems likely going to $sqrt(2)$, too, intuitively. In other words, we do not caer where the sequence begins, what matters is how the sequence "ends" (Well, we know the sequence won't actually end).

  The meaning of equivalent seqences is that: no matter where those two sequencs begin, if we can find some index, and from this index on, the sequences are _close enough_, then they are said to be equivalent.

  Basically, two equivalent sequences will be close enough eventually.
]

== The construction of the real numbers

#definition(name: "Real numbers")[
  A _real number_ is defined to be an object of the form $LIM_(n -> oo) a_n$, where $a_n$ is a Cauchy sequence of rational numbers. Two real numbers $LIM_(n -> oo) a_n$ and $LIM_(n -> oo) b_n$ are said to be equal iff $a_n$ and $b_n$ are equivalent.

  The set of all real numbers is denoted $RR$.
]

#proposition(name: "Definition of real numbers is well-defined")[
  Let $x = LIM_(n -> oo) a_n$, $y = LIM_(n -> oo) b_n$, and $z = LIM_(n -> oo) c_n$ be real numbers.
  - $x = x$;
  - $x = y => y = x$;
  - $x = y and y = z => x = z$.
]

#proof[
  #pf(num: 1)[To prove by contradiction, assume that $x != x$, i.e., $a_n$ and $a_n$ are not equivalent.]

  Though the negation of proposition, we have that
  $
    exists epsilon >0 forall N in NN ( n >= N and |a_n - a_n | >= epsilon)
  $

  and hence, $0 > epsilon$, a contradiction since $epsilon > 0$.

  Therefore, $x = x$.

  #pf(num: 2)[
    The main difference between $x = y$ and $y = x$, by definition, is the position of two elements of sequence inside the absolute value, i.e., $|a_n - b_n| < epsilon$ vs. $|b_n - a_n| < epsilon$.

    Distance is symmetric, and hence $|a_n - b_n| = |b_n - a_n|$. Then the proof is done.
  ]

  #pf(num: 3)[
    By definition, for any $epsilon > 0 (in RR)$,

    $
      exists N_1 in NN(n >= N_1 => |a_n - b_n| < epsilon)\
      exists N_2 in NN(n >= N_2 => |b_n - c_n| < epsilon)
    $
  ]

  Let $N = max{N_1, N_2}$. Then

  $
    n >= N => |a_n - b_n| < epsilon and |b_n - c_n| < epsilon
  $

  By triangle inequality, the 3rd requirement in the definition of distance, we have that
  $
    |a_n - c_n| <= |a_n - b_n| + |b_n - c_n| < epsilon
  $

  and hence, $a_n$ and $c_n$ are equivalent.
]

#remark[
  The proof for is 3 is so common in the following sections talking about limits. By that time, there may be some shorthands for notaion.
]

== Addition
#definition(name: "Addition of reals")[
  Let $x = LIM_(n -> oo) a_n$ and $y = LIM_(n -> oo)$ be real numbers. We define the sum $x+y$ to be
  $
    x + y := LIM_(n -> oo)(a_n + b_n)
  $
]

#remark[
  To check whether the definition of addition of reals is well-defined, we need to show two things:
  + the sum of reals is also a real number;
  + Same inputs give same outputs, i.e., if $x = x'$, then $x + y = x' + y$.
]

#proposition[
  Let $x,y,z$ be reals. Then
  $
    x + y = y + x\
    x + (y + z) = (x + y) + z\
    x = y <=> x + z = y + z
  $
]

#proof[
  Let $x = LIM_(n -> oo) a_n$, $y = LIM_(n -> oo) b_n$, $z = LIM_(n -> oo) c_n$.

  #pf(num:1)[$x + y = LIM_(n -> oo)(a_n + b_n)$, $y + x = LIM_(n -> oo)(b_n + a_n)$. We need to show that $a_n + b_n sim b_n + a_n$.]

  By the commutative law of the rational numbers, $a_n + b_n - (b_n + a_n)$ is always zero, and hence these two sequences are equivalent.

  Similarly, the truth of 2nd and 3th propositions is guaranteed by the arithematical laws of rational numbers.
]


== Multiplication
#definition(name: "Multiplication of the real numbers")[
  Let $x = LIM_(n -> oo) a_n$ and $y = LIM_(n -> oo)$ be real numbers. We define the product $x y$ to be
  $
    x y := LIM_(n -> oo)(a_n b_n)
  $
]

#proposition[
  Let $x,y,z$ be reals. Then
  $
    x y = y x\
    x (y z) = (x y) z\
    x (y + z) = x y + x z\
    z != 0 => (x = y <=> x z = y z)
  $
]

#proof[
  The proof is tedious.
]

== Ordering of Real Numbers
#definition(name: "Real number 0")[
  Let $x = LIM_(n -> oo)a_n$ be a real number for some Cauchy sequence $a_n$ of rational numbers. We say $x$ is _equal to zero_, written as $x = 0$, if $a_n sim (0)_(n=1)^oo$. In other words,
  $
    forall epsilon > 0 exists N in NN ( n >= N => |a_n| < epsilon)
  $
]

#remark[
  We may also say that
  $
    LIM_(n -> oo) 0 = 0
  $
]

#definition[
  Let $x = LIM_(n -> oo)a_n$ be a real number for some Cauchy sequence $a_n$ of rational numbers.
  - $x$ is said to be _positive_ iff $exists c > 0 (in QQ) forall n in NN(a_n >= c)$;
  - $x$ is said to be _negative_ iff $exists c > 0 (in QQ) forall n in NN(a_n <= -c)$.
  For convention, we write $x > 0$ if $x$ is positive, and $x < 0$ if $x$ is negative.
]

#proposition(name: "Trichotomy of real numbers")[
  Let $x$ be a real number. Then exactly one of the following statements is true: (1) $x > 0$; (2) $x = 0$; (3) $x < 0$.
]
#proof[
  Similiarly, we need to show that at most one of three is true, by producing contradiction under the case when any two of them happens. Then we need to show that at least one of three is true, i.e., the negation of both of them causes some contradiction.

  We are about to proof that $x > 0$ and $x = 0$ can not be true at the same time. By definition, $x > 0$ indicates that we can find a lower bound $c$ of $a_n$, keeping $a_n$ away from 0. And $x = 0$ shows that $x$ can not be too large, or too far away from 0. By letting $epsilon = c$, then we have
  $
    exists N in NN ( n >= N => a_n < c)\
    forall n in NN(a_n >= c)
  $
  Let these two indices to be $N$, then we have $a_N < c$ and $a_N >= c$, which is a contradiction by the trichotomy of rational numbers.

  The steps are familiar for $x < 0$ and $x = 0$.

  Next, we are showing that there will be a contradiction if $x > 0$ and $x < 0$ are both true.

  By definition, we have two rational bounds $c_1,c_2 > 0$, such that
  $
    a_n >= c_1\
    a_n <= -c_2
  $
  and hence, $c_1 <= - c_2$, i.e., $c_1 + c_2 <= 0$, which is a contradiction since $c_1 + c_2 > 0$.

  Finally, we are showing that the conjunction of both negation of these three is false.

  Negation of $x = 0$ means there exists an $epsilon > 0$, such that $|a_n| >= epsilon$. And
  $
    forall c_1 > 0 (in QQ) exists N_1 in NN (n >= N_1 => a_n < c_1)\
    forall c_2 > 0 (in QQ) exists N_2 in NN (n >= N_2 => a_n > -c_2)
  $

  Let $c_1 = c_2 = epsilon$, and $N = max{N_1,N_2}$, then we can obtain that $|a_n| >= epsilon$ and $|a_n| < epsilon$. This is a contradiction by the trichotomy of rational numbers.
]

#remark[
  $x>=0$ means $x>0$ or $x = 0$ of course.
]

#definition(name: "Negation of real numbers")[
  Let $x = LIM_(n->oo)a_n$ be a real number. Then we define the _negation_ $-x$ of $x$ by the formula
  $
    -x := LIM_(n -> oo)(-a_n)
  $
]

#remark[
  It is obvious that the negation of 0 is also 0, since the negation of the rational "0" is 0.
]

#definition(name: "Subtraction of real numbers")[
  Let $x,y$ be real numbers. Then we define the _difference_ $x - y$ of $x$ and $y$ by the formula
  $
    x - y := x + (-y)
  $
]

#definition(name: "Ordering of reals")[
  Let $x,y$ be real numbers. We say that $x$ is _greater than_ $y$, written as $x > y$ or $y < x$, if $x - y > 0$. We say that $x$ is _greater than or equal to_ $y$, written as $x >= y$ or $y <= x$, if $x - y >= 0$.
]

#proposition[
  Let $x,y,z$ be real numbers.

  $
    (x > y) and (y > z) => x > z\
    x >= y <=> x + z >= y + z\
    x >= y <=> (z!=0) and (x z >= y z)
  $
]

#definition(name: "Reciprocals of real numbers")[
  Let $x := LIM_(n->oo)a_n$ be a non-zero real number. Then we define the reciprocal $x^(-1) $ of $x$ by the formula
  $
    x^(-1) := LIM_(n->oo)(a_n^(-1))
  $
]

#definition(name: "Division of real numbers")[
  Let $x,y$ be real numbers, and $y != 0$. Then we define the _quotient_ $x/y$ of $x$ and $y$ by the formula
  $
    x/y := x dot y^(-1)
  $
]

#proposition[
  Let $a_n$ be a rational Cauchy sequence, and $a_n >= 0$ for all $n >= 1$. Then $LIM_(n -> oo) a_n >= 0$.
]

#proof[
  For producing contradiction, suppose that $LIM_(n->oo)a_n < 0$. By definition,
  $
    forall n >= 1 exists c >0 ( in QQ)(a_n <= -c < 0)
  $
  This contradicts with the hypothesis that $a_n >=0$ for all $n>=1$.
]

#corollary[
  Let $a_n$ and $b_n$ be Cauchy sequences of rationals such that $a_n >= b_n$ for all $n>=1$. Then $LIM_(n -> oo) a_n >= LIM_(n -> oo) b_n$.
]

#proof[
  Let $c_n = a_n - b_n$. and hence $c_n >= 0$ for all $n>=1$.

  By Corollary, we have that $LIM_(n -> oo) c_n >= 0$.
]

#proposition(name: "Bounding of reals by rationals")[
  Let $x>0$ be a real number. Then
  $
    exists q >0 (in QQ) exists N>0(in NN) (q <= x < N)
  $
]

#proof[
  Let $x = LIM_(n -> oo) a_n$ for some rational Cauchy sequence $a_n$. And we have that $a_n$ is bounded, i.e., there exists rational numbers $r,q >0$ such that
  $
    q <= a_n <= r
  $

  And there *should* exists a national number
]

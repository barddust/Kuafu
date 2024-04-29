#import "/mathenv.typ": *

= Proofs
Here introduces three methods for mathematical proofs: direct proof, proof by contradiction, and mathematical induction.

== Direct Proof
The basic form of proof is

$
  A => B
$

, which proves the proposition from premises directly.

This is the most common method of proving, which can also produce some new useful conclusion. Although, directly proving is also most difficult. It is like you drive to a cross without any indicators there, you may be confused which path is the correct one. In certain cases, it is obvious to get the result, while the most cases, you have to *guess* which one should be the next step.

#example[
  For a simply proposition $A: x = pi => sin(x/2) + 1  = 2$, the procedure is that $x=pi$ implies $x/2=pi/2$, which implies sin(x/2), furthermore implying $sin(x/2) + 1$.
]

== Proof by Contradiction

Given a proposition $A: p => q$, we want to show it is always true. It could be very hard to prove it directly, so think about the opposite, which is to prove its negation being false, even for some special case.

By @impeq, $p => q$ equals to $not p or q$. Suppose its negation $not A$, i.e., $not (not p or q)$. By De Morgan's laws, we have
$
  not A: p and not q
$

Now that it is clear. To prove a proposition by contradiction, firstly regard the negation of conclusion as a premise. Then reasoning in logic with all premises, including the negation of conclusion. The goal is to *produce a contradiction*, even for some speical case, depending on the quantifier of the conclusion of the proposition.

Here comes a well-know proof by contradiction.

#proposition[
  There is infinite number of prime numbers.
]

#proof[
  For sake of contradiction, suppose that there is finite number of prime numbers, say $p_1, p_2, dots.c, p_n$. We construct a new number:
  $
    m = p_1p_2 dots.c p_n + 1
  $

  By assumption, $m$ is not a prime number, and hence there is a prime, say $p_i$, such that $m$ is divisible by $p_i$, i.e., for some integer $q$, we have
  $
    m = p_1p_2 dots.c p_n + 1 = q p_i
  $
  therefore,
  $
    q = p_1p_2 dots.c p_(i-1)p_(i+1) dots.c p_n + 1/p_i
  $
  This is impossible, since $q$ is an integer, while the right-hand side is the sum of an integer and an non-integer. Here comes a contradiction.

  Thus, the original proposition "There is infinite number of prime numbers" is true.
]

== Mathematical Induction
Given a proposition about natural numbers, denoted as $P(n)$, we want to prove $P(n)$ is true for all $n in NN$. The mathematical induction consists of two parts:
+ $P(1)$ is true. In other words, $P(n)$ is true for the first index.
+ $P(i) => P(i+1)$ for $i in NN$. For any natural numbers, if this proposition is true for $i$, which must be also true for $i+1$.

Here gives a example.

#proposition[
  For any $n in NN$,
  $
    P: 1^2 + 2^2 + dots.c + n^2 = 1/6 n (n+1) (2n+1)
  $
]

#proof[
  Firstly, we need to show $P(1)$ is true. It is obvious that $1^2 = 1/6 times 1  times 2 times 3 = 1$.

  Then we need to prove the continuity of $P(n)$.

  Suppose that $P(k)$ is true, let us see what happen if $n=k+1$.
  $
    1^2 + 2^2 + k^2 + (k+1)^2 &= 1/6 k (k+1) (2k+1) + (k^2 + 2k + 1)\
      &= (2k^3 +3k^2 + k + 6k^2 + 12 k + 6)/6\
      &= (2k^3 + 9k^2 + 13 k + 6)/6\
      &= 1/6 (k+1)(2k^2+7k+6)\
      &= 1/6 (k+1)(k+2)(2k+3)\
      &= 1/6 (k+1)(k+2)(2(k+1)+1)
  $
  That is what we want.
]

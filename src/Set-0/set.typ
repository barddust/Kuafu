#import "/mathenv.typ": *

=  Set

== Basic Concepts of Set

#definition[
  A *Set* is a collection of objects without order. These objects are called the *elements* of members of the set. For a set $A$, if a object $x$ is inside $A$, we say that $x$ belongs to $A$, denoted as $x in A$. Otherwise, $x$ is not belong to $A$, denoted as $x in.not A$.

  The expression of a set: Wrap all elements inside a curly bracket ${...}$. For a finite number of elemets, list them inside a curly bracket, separated by a comma. $A$ contains $2,3,4$, then $A = {2,3,4}$.

  Sometimes, we want to collect all elements having certain same property. We divide bracket into two parts by a vertical line $|$ or a colon $:$. The former part is the form of elements, the later is the expected properties elements satisfy. $B$ is a set of all points laid on a unit circle, then $B = { (x,y) | x,y in RR and x^2 + y^2 = 1}$, i.e., the set $B$ consists of a bunch of coordinates in $RR$, which are the solution of the equation $x^2 + y^2 = 1$.
]

#definition[
  For two sets $A,B$, we say they are equal to each other, iff for any object, if it belongs not $A$, then to $B$, too; vice versa. i.e.,
  $ forall A,B (A = B <=> forall e (e in A <=> e in B)) $
]

#definition(name: "empty set")[
  Empty set is a set containing no any elements, denoted as $nothing$, i.e.,
  $ forall x(x in.not nothing) $
]

#proposition[
  There is only one empty set.
]

#proof[
  Suppose there are two empty sets, say $nothing_1, nothing_2$, we need to show that for any objects $x$ we have $x in nothing_1 <=> x in nothing_2$.

  Consider the contrary, we need to assume that there exists a object $x_0$, belonging to $nothing_1$ but not $nothing_2$. However such object cannot be existed since no element belongs to empty set. The assumption does not hold at the beginning, or does not exist at all. We have no reason to say it is wrong, which means the original proposition is corrct logicaclly.
]

#definition(name: "subset")[
  For any two sets $A, B$, we call $A$ as a *subset* of $B$, iff all elements in $A$ also belong to $B$, i.e.,
  $ forall x (x in A => x in B) $

  We say that $A$ is a *proper subset* of $B$, iff $A$ is a subset of $B$ and $A != B$. Notaion: $ A sub.neq B$.
]

#example[
  Let $A = {1,2,3,4,5}$, then ${1,2}, {2,4,5}, {1,2,3,4,5}$ are both the subset of $A$, only the first two are the proper subset of $A$.
]

#proposition[
  For any set $A$,
  + $ nothing sube A$;
  + $ nothing sube nothing$.
]

#proof[
  Similar as before, assume the contrary, but there are no elements inside a empty set, assumption fails, the original proposition is right in logic.
]

== Operations of Set

#definition(name: "union")[
  For any two sets $A,B$, a set is called the *union* of $A$ and $B$, deoted as $A union B$, if all elements in this set belong to either $A$, or $B$, or both.
  $
    A union B := {x | x in A or x in B}
  $
]

#example[
  Let $A = {1,2,3,4,5}$, $B = {2,3,5,7,11,13}$, then $A union B = {1,2,3,4,5,7,11,13}$.
]


#definition(name: "intersection")[
  For any two sets $A,B$, a set is called the *intersection* of $A$ and $B$, deoted as $A sect B$, if all elements in this set belong to $A$ and $B$ at the same time.
  $
    A sect B := {x | x in A and x in B}
  $
]

#example[
  Let $A = {1,2,3,4,5}$, $B = {2,3,5,7,11,13}$, then $A sect B = {2,3,5}$.
]

#definition(name: "complement")[
  Let $B sube A$, we call the rest of $B$ removing $A$ the *complement* of $B$, denoted as $complement_(A) B$.
  $
    complement_(A) B := {x | x in A and x in.not B}
  $
]

In fact, it is unnecessary requiring $B sube A$ to consider what exactly differece is between two sets. There is a more general operation.

#definition(name: "difference set")[
  For any $A, B$, a set is said to be the *difference set* of $A$ and $B$, if all its elements belong to $A$ but not $B$. The notation is $A\\B$, i.e.,
  $
    A\\B := {x | x in A and x in.not B}
  $
  $A\\B$ is also called the relative complement of $B$ with respect to $A$.
]

#remark[
  Suppose $B sube.not A$, there may be two cases. The intersection of $A$ and $B$ exists, then $A\\B$ is actually $complement_(A) (A sect B)$; otherwise $A\\B = A$.  
]

#proof[
  (1) The intersection of $A$ and $B$ exists，i.e., $A sect B != nothing$. We need to prove that $ A\\B = complement_(A)(A sect B)$.

  Firstly prove sufficiency. For any object $x$, $x in A\\B => x in A and x in.not B$.

  $x in.not B$ is always true，whose disjunction with another proposition is also true, i.e., $x in.not A or x in.not B$ is true. And hence $x in.not A sect B$.

  $x$ belongs to $A$, but not to $A sect B$ , and $A sect B sube A$. By definition, $x in complement_(A) (A sect B)$.
  
  Then prove necessity. For any object $x$, $x in complement_(A) (A sect B) => x in A and x in.not A sect B$, and the later implies that $ x in.not A or x in.not B$, i.e., $x in.not B$.
  
  $x in A$, $X in.not B$, by definition, $x in A\\B$.
]

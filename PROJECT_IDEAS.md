A distributed algorithm is understood as a system structured with $n>1$ local processes and a communication subsystem.

Local processes of a distributed algorithm are identified with positive natural numbers lying in the diapason from 1 to $n$ (the number of the local processes).

A list of lists of positive integers models the network topology. In such a list, the list located at the $k$-th place identifies neighbors of the process with the logical identifier equals $k+1$.
Thus, each inner list contains numbers from the diapason from 1 to $n$.

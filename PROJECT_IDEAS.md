# Concepts

A distributed algorithm is a complex of $n>1$ isolated local processes, whose set is denoted by $\mathbb P_n$, and a communication subsystem that provides the communication of the processes by message exchanging only.

Each process can send a message to some subset of other processes and this subset does not equal $\mathbb P_n$ in general.
So, a function $\mathop{\mathrm{neighbors}}:\mathbb P_n\to2^{\mathbb P_n}$ that associates such a subset with each process is needed.

# Realization

Local processes of a distributed algorithm are identified with positive natural numbers lying in the diapason from 1 to $n$ (the number of the local processes).

A list of lists of positive integers models the network topology. In such a list, the list located at the $k$-th place identifies neighbors of the process with the logical identifier equals $k+1$.
Thus, each inner list contains numbers from the diapason from 1 to $n$.

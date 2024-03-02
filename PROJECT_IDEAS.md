# Concepts

A distributed algorithm is a complex of $n>1$ isolated local processes, whose set is denoted by $\mathbb P_n$, and a communication subsystem that provides the interaction of the processes by message exchanging only.

Each process can send a message to some non-empty subset of other processes and this subset does not equal $\mathbb P_n$ in general.
So, a function $\mathop{\mathrm{neighbors}}:\mathbb P_n\to2^{\mathbb P_n}$ that associates such a subset with each process is needed.

The function $\mathop{\mathrm{neighbors}}$ should satisfy the following natural constraints.

1. $p\notin\mathop{\mathrm{neighbors}}(p)$ for any $p\in\mathbb P_n$;
2. $q\in\mathop{\mathrm{neighbors}^+}(p)$ for any $p,q\in\mathbb P_n$.

Here, $\mathop{\mathrm{neighbors}^+}:\mathbb P\to2^{\mathbb P_n}$ is the least function that satisfies the following conditions

* $q\in\mathop{\mathrm{neighbors}}(p)\Rightarrow q\in\mathop{\mathrm{neighbors}^+}(p)$ for any $p,q\in\mathbb P_n$;
* $p'\in\mathop{\mathrm{neighbors}}(p)\land q\in\mathop{\mathrm{neighbors}^+}(p')\Rightarrow q\in\mathop{\mathrm{neighbors}^+}(p)$ for any $p,p',q\in\mathbb P_n$.

# Realization

Local processes of a distributed algorithm are identified with positive natural numbers lying in the diapason from 1 to $n$ (the number of the local processes).

A list of lists of positive integers models the function $\mathop{\mathrm{neighbors}}$. In such a list, the list located at the $k$-th place identifies neighbors of the process with the logical identifier equals $k+1$.
Thus, each inner list contains numbers from the diapason from 1 to $n$.

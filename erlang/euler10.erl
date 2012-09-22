-module(euler10).
-export[euler10/0].

% Sum of all primes below 2000000
euler10() ->
    lists:foldl(
        fun(X, Sum) -> X + Sum end,
        0,
        primes(1999999)).

% Generate all primes up to (including) N
primes(N) when N < 2 -> []; 
primes(N) -> [2 | [X || X <- lists:seq(3, N, 2), isprime(X, 2)]].

% Check if Candidate is prime. Tail recursive "brute force" algorithm, must be started by setting Divisor=2
isprime(Candidate, Divisor) when Candidate rem Divisor == 0 -> false;
isprime(Candidate, Divisor) when Candidate < Divisor * Divisor -> true;
isprime(Candidate, Divisor) -> isprime(Candidate, Divisor + 1).

    
    


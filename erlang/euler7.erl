-module(euler7).
-export[euler7/0].

% The 10001th prime
euler7() -> lists:last(primes(10001)).

% Generate the first N number of primes
primes(0) -> [];
primes(1) -> [2];
primes(2) -> [2,3];
primes(N) -> lists:reverse(primes(N, [3,2])).

primes(N, Primes) when length(Primes) == N -> Primes;
primes(N, Primes) -> primes(N, [nextprime(hd(Primes)) |  Primes]).

nextprime(Lastprime) -> nextprime(Lastprime, Lastprime + 2).
nextprime(Lastprime, Candidate) ->
    case isprime(Candidate) of
        true -> Candidate;
        false -> nextprime(Lastprime, Candidate + 2)
    end.

isprime(Candidate) -> isprime(Candidate, 2). 
isprime(Candidate, Divisor) when Candidate rem Divisor == 0 -> false;
isprime(Candidate, Divisor) when Candidate < Divisor * Divisor -> true;
isprime(Candidate, Divisor) -> isprime(Candidate, Divisor + 1).

    
    


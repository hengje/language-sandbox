-module(euler3).
-export[euler3/0].

% largest prime factor of 600851475143
euler3() -> largestprimefactor(600851475143).

largestprimefactor(N) -> largestprimefactor(N, 2).

largestprimefactor(N, Candidate) when N >= Candidate * Candidate -> 
    case N rem Candidate of
    	0 -> max(Candidate, largestprimefactor(N div Candidate));
	_ -> largestprimefactor(N, Candidate + 1)
    end;
largestprimefactor(N, _) -> N.


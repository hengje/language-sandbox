-module(euler2).
-export[euler2/0].

% Sum of all even valued fibonacci numbers below 2.000.000
euler2() ->
    lists:foldl(
        fun(X, Sum) -> X + Sum end, 
        0, 
	[X || X <- fibsbelow(2000000), X rem 2 =:= 0]).

fibsbelow(1) -> [];
fibsbelow(2) -> [1];
fibsbelow(N) -> fibsbelow(N, [2, 1]).
fibsbelow(N, Fibs) when hd(Fibs) >= N -> lists:reverse(tl(Fibs));
fibsbelow(N, Fibs) -> fibsbelow(N, [hd(Fibs) + hd(tl(Fibs)) | Fibs]).


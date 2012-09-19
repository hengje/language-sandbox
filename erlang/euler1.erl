-module(euler1).
-export[euler1/0].

% Sum of all number below 1000 divisible by 3 or 5
euler1() ->
    lists:foldl(
        fun(X, Sum) -> X + Sum end, 
        0, 
	[X || X <- lists:seq(1, 999), X rem 3 == 0 orelse X rem 5 == 0]).


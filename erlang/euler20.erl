-module(euler20).
-export[euler20/0].

euler20() ->
    lists:foldl(
        fun(X, Sum) -> X + Sum end,
        0,
    	integer_to_list(fact(100))).

fact(1) -> 1;
fact(N) -> N * fact(N-1).


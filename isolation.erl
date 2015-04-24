-module(isolation).
-compile(export_all).

crash(N) ->
    N / 0.

run() ->
    F = fun() ->
                crash(1)
        end,
    spawn(node(),F).

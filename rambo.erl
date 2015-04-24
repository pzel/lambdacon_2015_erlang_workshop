-module(rambo).
-compile(export_all).

enemy() ->
    receive
        bullet -> error(quietly)
    end.

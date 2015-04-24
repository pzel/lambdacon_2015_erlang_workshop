-module(process).
-compile(export_all).

forever() ->
    forever().

run() ->
   P = spawn(fun forever/0),
   true = is_pid(P),
   true = is_process_alive(P).

run_many() ->
 [ process:run() ||
   _ <- lists:seq(1,10) ].

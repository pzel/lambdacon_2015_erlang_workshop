-module(messages).
-compile(export_all).

responder() ->
  receive
    {From, happy, Day} ->
     From ! {i_got, Day},
     responder();
     _ ->
       exit(not_happy)
  end.

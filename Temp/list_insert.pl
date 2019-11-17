insert(Value,N,[HEAD|TAIL],[HEAD|R]):-N<=0,write("Inapproprite value entered!!").
insert(Value, 1, LIST, [Value|LIST]).

insert(Value, N, [HEAD|TAIL], [HEAD|R]):- N1 is N-1,
         insert(Value, N1, TAIL, R).
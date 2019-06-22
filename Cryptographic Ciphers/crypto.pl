encode_list([],_,[]).
encode_list([H|T],N,[L|U]) :- 
	M1 is H+N,
	L is mod(M1,128),
	encode_list(T,N,U).

encode_string(X,N,Y) :- 
	string_codes(X,[H|T]),
	encode_list([H|T],N,[L|U]),
	string_codes(Y,[L|U]).
	
decode_list([],_,[]).
decode_list([L|U],N,[H|T]) :-
	M2 is N-L,	
	H is (128-mod(M2,128)),
	decode_list(U,N,T).

decode_string(Y,N,X) :- 
	string_codes(Y,[L|U]),
	decode_list([L|U],N,[H|T]),
	string_codes(X,[H|T]).

distance_calc([],[],_).
distance_calc([L|U],[H|T],N) :- 
	M3 is abs(L-H),
	N is mod(M3,128),
	distance_calc(U,T,N).
	
shift_distance(Y,X,N) :-
	string_codes(Y,[L|U]),
	string_codes(X,[H|T]),
	distance_calc([L|U],[H|T],N),
	string_codes(Y,[L|U]).
	
caesar_candidate([Z|W],Y,N,X) :-
	shift_distance(Y,Z,N),
	X = Z;
	caesar_candidate(W,Y,N,X).

	

	
	
	
	


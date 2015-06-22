% author: Meng

:- use_module(library(clpfd)).

sudokuDistinct(X1,X2,X3,X4,X5,X6,X7,X8,X9) :-
    all_distinct([X1,X2,X3,X4,X5,X6,X7,X8,X9]).
       /*(X1 = 1; X2 = 1; X3 = 1; X4 = 1; X5 = 1; X6 = 1; X7 = 1; X8 = 1; X9 = 1),
        (X1 = 2; X2 = 2; X3 = 2; X4 = 2; X5 = 2; X6 = 2; X7 = 2; X8 = 2; X9 = 2),
        (X1 = 3; X2 = 3; X3 = 3; X4 = 3; X5 = 3; X6 = 3; X7 = 3; X8 = 3; X9 = 3),
        (X1 = 4; X2 = 4; X3 = 4; X4 = 4; X5 = 4; X6 = 4; X7 = 4; X8 = 4; X9 = 4),
        (X1 = 5; X2 = 5; X3 = 5; X4 = 5; X5 = 5; X6 = 5; X7 = 5; X8 = 5; X9 = 5),
        (X1 = 6; X2 = 6; X3 = 6; X4 = 6; X5 = 6; X6 = 6; X7 = 6; X8 = 6; X9 = 6),
        (X1 = 7; X2 = 7; X3 = 7; X4 = 7; X5 = 7; X6 = 7; X7 = 7; X8 = 7; X9 = 7),
        (X1 = 8; X2 = 8; X3 = 8; X4 = 8; X5 = 8; X6 = 8; X7 = 8; X8 = 8; X9 = 8),
        (X1 = 9; X2 = 9; X3 = 9; X4 = 9; X5 = 9; X6 = 9; X7 = 9; X8 = 9; X9 = 9).*/

sudoku(X11,X12,X13,X14,X15,X16,X17,X18,X19,
       X21,X22,X23,X24,X25,X26,X27,X28,X29,
       X31,X32,X33,X34,X35,X36,X37,X38,X39,
       X41,X42,X43,X44,X45,X46,X47,X48,X49,
       X51,X52,X53,X54,X55,X56,X57,X58,X59,
       X61,X62,X63,X64,X65,X66,X67,X68,X69,
       X71,X72,X73,X74,X75,X76,X77,X78,X79,
       X81,X82,X83,X84,X85,X86,X87,X88,X89,
       X91,X92,X93,X94,X95,X96,X97,X98,X99) :-
       [X11,X12,X13,X14,X15,X16,X17,X18,X19,
        X21,X22,X23,X24,X25,X26,X27,X28,X29,
        X31,X32,X33,X34,X35,X36,X37,X38,X39,
        X41,X42,X43,X44,X45,X46,X47,X48,X49,
        X51,X52,X53,X54,X55,X56,X57,X58,X59,
        X61,X62,X63,X64,X65,X66,X67,X68,X69,
        X71,X72,X73,X74,X75,X76,X77,X78,X79,
        X81,X82,X83,X84,X85,X86,X87,X88,X89,
        X91,X92,X93,X94,X95,X96,X97,X98,X99] ins 1..9,
        sudokuDistinct(X11,X12,X13,X14,X15,X16,X17,X18,X19),
        sudokuDistinct(X21,X22,X23,X24,X25,X26,X27,X28,X29),
        sudokuDistinct(X31,X32,X33,X34,X35,X36,X37,X38,X39),
        sudokuDistinct(X41,X42,X43,X44,X45,X46,X47,X48,X49),
        sudokuDistinct(X51,X52,X53,X54,X55,X56,X57,X58,X59),
        sudokuDistinct(X61,X62,X63,X64,X65,X66,X67,X68,X69),
        sudokuDistinct(X71,X72,X73,X74,X75,X76,X77,X78,X79),
        sudokuDistinct(X81,X82,X83,X84,X85,X86,X87,X88,X89),
        sudokuDistinct(X91,X92,X93,X94,X95,X96,X97,X98,X99),
        sudokuDistinct(X11,X21,X31,X41,X51,X61,X71,X81,X91),
        sudokuDistinct(X12,X22,X32,X42,X52,X62,X72,X82,X92),
        sudokuDistinct(X13,X23,X33,X43,X53,X63,X73,X83,X93),
        sudokuDistinct(X14,X24,X34,X44,X54,X64,X74,X84,X94),
        sudokuDistinct(X15,X25,X35,X45,X55,X65,X75,X85,X95),
        sudokuDistinct(X16,X26,X36,X46,X56,X66,X76,X86,X96),
        sudokuDistinct(X17,X27,X37,X47,X57,X67,X77,X87,X97),
        sudokuDistinct(X18,X28,X38,X48,X58,X68,X78,X88,X98),
        sudokuDistinct(X19,X29,X39,X49,X59,X69,X79,X89,X99),
        sudokuDistinct(X11,X12,X13,X21,X22,X23,X31,X32,X33),
        sudokuDistinct(X14,X15,X16,X24,X25,X26,X34,X35,X36),
        sudokuDistinct(X17,X18,X19,X27,X28,X29,X37,X38,X39),
        sudokuDistinct(X41,X42,X43,X51,X52,X53,X61,X62,X63),
        sudokuDistinct(X44,X45,X46,X54,X55,X56,X64,X65,X66),
        sudokuDistinct(X47,X48,X49,X57,X58,X59,X67,X68,X69),
        sudokuDistinct(X71,X72,X73,X81,X82,X83,X91,X92,X93),
        sudokuDistinct(X74,X75,X76,X84,X85,X86,X94,X95,X96),
        sudokuDistinct(X77,X78,X79,X87,X88,X89,X97,X98,X99).

problem(_,_,_,_,_,_,_,_,_,
        _,_,_,_,_,3,_,8,5,
        _,_,1,_,2,_,_,_,_,
        _,_,_,5,_,7,_,_,_,
        _,_,4,_,_,_,1,_,_,
        _,9,_,_,_,_,_,_,_,
        5,_,_,_,_,_,_,7,3,
        _,_,2,_,1,_,_,_,_,
        _,_,_,_,4,_,_,_,9).

/** <examples>

?- problem(X11,X12,X13,X14,X15,X16,X17,X18,X19,
           X21,X22,X23,X24,X25,X26,X27,X28,X29,
           X31,X32,X33,X34,X35,X36,X37,X38,X39,
           X41,X42,X43,X44,X45,X46,X47,X48,X49,
           X51,X52,X53,X54,X55,X56,X57,X58,X59,
           X61,X62,X63,X64,X65,X66,X67,X68,X69,
           X71,X72,X73,X74,X75,X76,X77,X78,X79,
           X81,X82,X83,X84,X85,X86,X87,X88,X89,
           X91,X92,X93,X94,X95,X96,X97,X98,X99),
   sudoku(X11,X12,X13,X14,X15,X16,X17,X18,X19,
          X21,X22,X23,X24,X25,X26,X27,X28,X29,
          X31,X32,X33,X34,X35,X36,X37,X38,X39,
          X41,X42,X43,X44,X45,X46,X47,X48,X49,
          X51,X52,X53,X54,X55,X56,X57,X58,X59,
          X61,X62,X63,X64,X65,X66,X67,X68,X69,
          X71,X72,X73,X74,X75,X76,X77,X78,X79,
          X81,X82,X83,X84,X85,X86,X87,X88,X89,
          X91,X92,X93,X94,X95,X96,X97,X98,X99).
*/
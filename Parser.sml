local
type t__1__ = (int*int)
type t__2__ = (int*int)
type t__3__ = (int*int)
type t__4__ = char*(int*int)
type t__5__ = (int*int)
type t__6__ = (int*int)
type t__7__ = (int*int)
type t__8__ = (int*int)
type t__9__ = (int*int)
type t__10__ = (int*int)
type t__11__ = (int*int)
type t__12__ = (int*int)
type t__13__ = (int*int)
type t__14__ = (int*int)
type t__15__ = string*(int*int)
type t__16__ = (int*int)
type t__17__ = (int*int)
type t__18__ = (int*int)
type t__19__ = (int*int)
type t__20__ = (int*int)
type t__21__ = (int*int)
type t__22__ = (int*int)
type t__23__ = (int*int)
type t__24__ = (int*int)
type t__25__ = (int*int)
type t__26__ = (int*int)
type t__27__ = (int*int)
type t__28__ = (int*int)
type t__29__ = (int*int)
type t__30__ = int*(int*int)
type t__31__ = (int*int)
type t__32__ = (int*int)
type t__33__ = (int*int)
type t__34__ = (int*int)
type t__35__ = (int*int)
type t__36__ = (int*int)
type t__37__ = (int*int)
type t__38__ = (int*int)
type t__39__ = (int*int)
type t__40__ = (int*int)
type t__41__ = string*(int*int)
type t__42__ = (int*int)
type t__43__ = (int*int)
type t__44__ = (int*int)
in
datatype token =
    AND of t__1__
  | BOOL of t__2__
  | CHAR of t__3__
  | CHARLIT of t__4__
  | COMMA of t__5__
  | DEQ of t__6__
  | DIV of t__7__
  | ELSE of t__8__
  | EOF of t__9__
  | EQ of t__10__
  | FALSE of t__11__
  | FILTER of t__12__
  | FN of t__13__
  | FUN of t__14__
  | ID of t__15__
  | IF of t__16__
  | IN of t__17__
  | INT of t__18__
  | IOTA of t__19__
  | LBRACKET of t__20__
  | LCURLY of t__21__
  | LET of t__22__
  | LPAR of t__23__
  | LTH of t__24__
  | MAP of t__25__
  | MINUS of t__26__
  | MULT of t__27__
  | NOTBOOL of t__28__
  | NOTINT of t__29__
  | NUM of t__30__
  | OP of t__31__
  | OR of t__32__
  | PLUS of t__33__
  | RBRACKET of t__34__
  | RCURLY of t__35__
  | READ of t__36__
  | REDUCE of t__37__
  | REPLICATE of t__38__
  | RPAR of t__39__
  | SCAN of t__40__
  | STRINGLIT of t__41__
  | THEN of t__42__
  | TRUE of t__43__
  | WRITE of t__44__
end;

open Obj Parsing;
prim_val vector_ : int -> 'a -> 'a Vector.vector = 2 "make_vect";
prim_val update_ : 'a Vector.vector -> int -> 'a -> unit = 3 "set_vect_item";


(* A parser definition for Fasto, for use with mosmlyac. *)

open Fasto
open Fasto.UnknownTypes

(* Line 12, file Parser.sml *)
val yytransl = #[
  257 (* AND *),
  258 (* BOOL *),
  259 (* CHAR *),
  260 (* CHARLIT *),
  261 (* COMMA *),
  262 (* DEQ *),
  263 (* DIV *),
  264 (* ELSE *),
  265 (* EOF *),
  266 (* EQ *),
  267 (* FALSE *),
  268 (* FILTER *),
  269 (* FN *),
  270 (* FUN *),
  271 (* ID *),
  272 (* IF *),
  273 (* IN *),
  274 (* INT *),
  275 (* IOTA *),
  276 (* LBRACKET *),
  277 (* LCURLY *),
  278 (* LET *),
  279 (* LPAR *),
  280 (* LTH *),
  281 (* MAP *),
  282 (* MINUS *),
  283 (* MULT *),
  284 (* NOTBOOL *),
  285 (* NOTINT *),
  286 (* NUM *),
  287 (* OP *),
  288 (* OR *),
  289 (* PLUS *),
  290 (* RBRACKET *),
  291 (* RCURLY *),
  292 (* READ *),
  293 (* REDUCE *),
  294 (* REPLICATE *),
  295 (* RPAR *),
  296 (* SCAN *),
  297 (* STRINGLIT *),
  298 (* THEN *),
  299 (* TRUE *),
  300 (* WRITE *),
    0];

val yylhs = "\255\255\
\\001\000\002\000\002\000\003\000\003\000\004\000\004\000\004\000\
\\004\000\005\000\005\000\009\000\009\000\006\000\006\000\006\000\
\\006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
\\006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
\\006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
\\006\000\006\000\006\000\007\000\007\000\008\000\000\000";

val yylen = "\002\000\
\\002\000\003\000\002\000\007\000\006\000\001\000\001\000\001\000\
\\003\000\004\000\002\000\001\000\001\000\001\000\001\000\001\000\
\\001\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\\002\000\002\000\003\000\003\000\001\000\001\000\006\000\004\000\
\\003\000\004\000\004\000\004\000\006\000\008\000\006\000\009\000\
\\003\000\006\000\004\000\003\000\001\000\001\000\002\000";

val yydefred = "\000\000\
\\000\000\000\000\000\000\047\000\000\000\007\000\008\000\006\000\
\\000\000\000\000\000\000\001\000\000\000\002\000\000\000\009\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\015\000\
\\030\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\014\000\000\000\000\000\000\000\017\000\029\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\010\000\000\000\000\000\033\000\000\000\
\\000\000\000\000\000\000\018\000\000\000\041\000\046\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\043\000\032\000\000\000\
\\036\000\044\000\000\000\000\000\034\000\013\000\012\000\000\000\
\\000\000\000\000\035\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\039\000\000\000\000\000\037\000\000\000\
\\000\000\000\000\038\000\040\000";

val yydgoto = "\002\000\
\\004\000\005\000\010\000\019\000\020\000\049\000\050\000\080\000\
\\104\000";

val yysindex = "\018\000\
\\019\255\000\000\045\255\000\000\040\255\000\000\000\000\000\000\
\\045\255\019\255\038\255\000\000\024\255\000\000\036\255\000\000\
\\012\255\051\255\047\255\025\255\116\000\062\255\058\255\000\000\
\\000\000\037\255\116\000\046\255\116\000\066\255\116\000\050\255\
\\116\000\116\000\000\000\057\255\059\255\071\255\000\000\000\000\
\\082\255\104\001\045\255\116\000\116\000\085\000\060\000\116\000\
\\042\001\072\255\096\255\141\000\095\255\092\000\000\000\045\255\
\\245\254\116\000\116\000\116\000\116\000\116\000\116\000\116\000\
\\116\000\116\000\116\000\000\000\104\001\002\255\000\000\073\255\
\\116\000\155\000\116\000\000\000\116\000\000\000\000\000\113\255\
\\085\255\240\254\116\255\052\001\165\000\092\000\093\255\000\000\
\\093\255\254\254\000\000\065\255\254\254\000\000\000\000\080\001\
\\000\000\000\000\076\001\116\000\000\000\000\000\000\000\128\255\
\\116\000\116\000\000\000\116\000\116\000\169\000\116\000\090\001\
\\199\000\104\001\104\001\000\000\114\001\116\000\000\000\116\000\
\\209\000\213\000\000\000\000\000";

val yyrindex = "\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\129\255\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\098\255\000\000\000\000\
\\000\000\069\255\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\007\255\000\000\000\000\000\000\000\000\000\000\000\000\
\\239\254\000\000\000\000\000\000\000\000\014\000\108\255\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\041\255\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\046\000\224\255\122\255\
\\003\000\175\255\161\255\242\000\210\255\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\252\000\028\001\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000";

val yygindex = "\000\000\
\\000\000\134\000\000\000\254\255\102\000\235\255\212\255\094\000\
\\000\000";

val YYTABLESIZE = 659;
val yytable = "\042\000\
\\011\000\072\000\060\000\079\000\062\000\047\000\013\000\061\000\
\\062\000\052\000\102\000\054\000\055\000\006\000\007\000\005\000\
\\103\000\045\000\001\000\082\000\005\000\045\000\069\000\070\000\
\\065\000\063\000\074\000\064\000\065\000\008\000\098\000\009\000\
\\003\000\066\000\067\000\094\000\084\000\085\000\086\000\087\000\
\\088\000\089\000\090\000\091\000\092\000\093\000\006\000\007\000\
\\012\000\004\000\018\000\096\000\015\000\081\000\004\000\099\000\
\\045\000\016\000\017\000\046\000\021\000\022\000\008\000\023\000\
\\009\000\060\000\043\000\044\000\048\000\016\000\061\000\062\000\
\\053\000\016\000\016\000\016\000\016\000\016\000\110\000\056\000\
\\051\000\057\000\016\000\112\000\113\000\016\000\114\000\115\000\
\\063\000\117\000\064\000\065\000\016\000\058\000\016\000\016\000\
\\121\000\067\000\122\000\062\000\016\000\016\000\016\000\016\000\
\\059\000\077\000\076\000\016\000\026\000\079\000\016\000\095\000\
\\026\000\026\000\026\000\026\000\026\000\100\000\064\000\065\000\
\\105\000\026\000\022\000\101\000\026\000\067\000\022\000\022\000\
\\022\000\022\000\022\000\026\000\111\000\026\000\026\000\022\000\
\\011\000\003\000\022\000\026\000\026\000\026\000\026\000\014\000\
\\068\000\022\000\026\000\022\000\022\000\026\000\083\000\000\000\
\\000\000\022\000\022\000\022\000\022\000\000\000\000\000\000\000\
\\022\000\021\000\000\000\022\000\000\000\021\000\021\000\021\000\
\\021\000\021\000\000\000\000\000\000\000\000\000\021\000\020\000\
\\000\000\021\000\000\000\020\000\020\000\000\000\020\000\020\000\
\\021\000\000\000\021\000\021\000\020\000\000\000\000\000\020\000\
\\021\000\021\000\021\000\021\000\000\000\000\000\020\000\021\000\
\\020\000\000\000\021\000\000\000\000\000\000\000\020\000\020\000\
\\020\000\020\000\019\000\000\000\000\000\020\000\019\000\019\000\
\\020\000\019\000\019\000\000\000\000\000\000\000\000\000\019\000\
\\027\000\000\000\019\000\000\000\027\000\027\000\000\000\027\000\
\\027\000\019\000\000\000\019\000\000\000\027\000\000\000\000\000\
\\027\000\019\000\019\000\019\000\019\000\000\000\000\000\027\000\
\\019\000\000\000\000\000\019\000\000\000\000\000\000\000\027\000\
\\000\000\027\000\027\000\028\000\000\000\000\000\027\000\028\000\
\\028\000\027\000\028\000\028\000\000\000\000\000\025\000\000\000\
\\028\000\000\000\025\000\028\000\000\000\025\000\025\000\000\000\
\\000\000\000\000\028\000\025\000\000\000\000\000\025\000\000\000\
\\000\000\000\000\028\000\000\000\028\000\028\000\000\000\000\000\
\\000\000\028\000\000\000\000\000\028\000\025\000\023\000\025\000\
\\025\000\000\000\023\000\000\000\025\000\023\000\023\000\025\000\
\\000\000\000\000\000\000\023\000\060\000\000\000\023\000\000\000\
\\000\000\061\000\062\000\000\000\000\000\000\000\000\000\000\000\
\\000\000\000\000\000\000\000\000\000\000\023\000\000\000\023\000\
\\023\000\000\000\000\000\063\000\023\000\064\000\065\000\023\000\
\\024\000\000\000\000\000\066\000\067\000\000\000\000\000\025\000\
\\000\000\061\000\062\000\026\000\027\000\073\000\000\000\028\000\
\\000\000\029\000\030\000\031\000\000\000\032\000\000\000\000\000\
\\033\000\034\000\035\000\063\000\000\000\064\000\065\000\024\000\
\\036\000\037\000\038\000\071\000\067\000\039\000\025\000\040\000\
\\041\000\000\000\026\000\027\000\000\000\000\000\028\000\000\000\
\\029\000\030\000\031\000\000\000\032\000\060\000\000\000\033\000\
\\034\000\035\000\061\000\062\000\000\000\000\000\000\000\036\000\
\\037\000\038\000\000\000\060\000\039\000\000\000\040\000\041\000\
\\061\000\062\000\000\000\000\000\063\000\060\000\064\000\065\000\
\\000\000\060\000\061\000\062\000\066\000\067\000\061\000\062\000\
\\000\000\000\000\063\000\078\000\064\000\065\000\000\000\000\000\
\\000\000\000\000\066\000\067\000\063\000\000\000\064\000\065\000\
\\063\000\097\000\064\000\065\000\066\000\067\000\000\000\060\000\
\\066\000\067\000\000\000\107\000\061\000\062\000\000\000\116\000\
\\000\000\060\000\000\000\000\000\000\000\060\000\061\000\062\000\
\\000\000\000\000\061\000\062\000\000\000\000\000\063\000\000\000\
\\064\000\065\000\000\000\000\000\000\000\000\000\066\000\067\000\
\\063\000\000\000\064\000\065\000\063\000\119\000\064\000\065\000\
\\066\000\067\000\000\000\000\000\066\000\067\000\024\000\123\000\
\\000\000\024\000\024\000\124\000\000\000\000\000\000\000\024\000\
\\031\000\000\000\024\000\031\000\031\000\000\000\000\000\000\000\
\\000\000\031\000\000\000\000\000\031\000\000\000\000\000\000\000\
\\000\000\024\000\000\000\024\000\024\000\000\000\000\000\000\000\
\\024\000\000\000\000\000\024\000\000\000\031\000\031\000\000\000\
\\042\000\000\000\031\000\042\000\042\000\031\000\000\000\000\000\
\\000\000\042\000\060\000\000\000\042\000\000\000\075\000\061\000\
\\062\000\000\000\000\000\000\000\060\000\000\000\000\000\000\000\
\\106\000\061\000\062\000\000\000\000\000\042\000\042\000\000\000\
\\000\000\063\000\042\000\064\000\065\000\042\000\000\000\000\000\
\\000\000\066\000\067\000\063\000\060\000\064\000\065\000\000\000\
\\060\000\061\000\062\000\066\000\067\000\061\000\062\000\108\000\
\\000\000\000\000\060\000\000\000\109\000\000\000\118\000\061\000\
\\062\000\000\000\000\000\063\000\000\000\064\000\065\000\063\000\
\\060\000\064\000\065\000\066\000\067\000\061\000\062\000\066\000\
\\067\000\063\000\060\000\064\000\065\000\000\000\120\000\061\000\
\\062\000\066\000\067\000\000\000\000\000\000\000\000\000\063\000\
\\000\000\064\000\065\000\000\000\000\000\000\000\000\000\066\000\
\\067\000\063\000\000\000\064\000\065\000\000\000\000\000\000\000\
\\000\000\066\000\067\000";

val yycheck = "\021\000\
\\003\000\046\000\001\001\015\001\007\001\027\000\009\000\006\001\
\\007\001\031\000\027\001\033\000\034\000\002\001\003\001\009\001\
\\033\001\035\001\001\000\031\001\014\001\039\001\044\000\045\000\
\\027\001\024\001\048\000\026\001\027\001\018\001\075\000\020\001\
\\014\001\032\001\033\001\034\001\058\000\059\000\060\000\061\000\
\\062\000\063\000\064\000\065\000\066\000\067\000\002\001\003\001\
\\009\001\009\001\039\001\073\000\015\001\056\000\014\001\077\000\
\\020\001\034\001\023\001\023\001\010\001\015\001\018\001\039\001\
\\020\001\001\001\005\001\010\001\023\001\001\001\006\001\007\001\
\\023\001\005\001\006\001\007\001\008\001\009\001\100\000\023\001\
\\015\001\023\001\014\001\105\000\106\000\017\001\108\000\109\000\
\\024\001\111\000\026\001\027\001\024\001\023\001\026\001\027\001\
\\118\000\033\001\120\000\007\001\032\001\033\001\034\001\035\001\
\\023\001\010\001\035\001\039\001\001\001\015\001\042\001\039\001\
\\005\001\006\001\007\001\008\001\009\001\005\001\026\001\027\001\
\\005\001\014\001\001\001\039\001\017\001\033\001\005\001\006\001\
\\007\001\008\001\009\001\024\001\005\001\026\001\027\001\014\001\
\\039\001\009\001\017\001\032\001\033\001\034\001\035\001\010\000\
\\043\000\024\001\039\001\026\001\027\001\042\001\057\000\255\255\
\\255\255\032\001\033\001\034\001\035\001\255\255\255\255\255\255\
\\039\001\001\001\255\255\042\001\255\255\005\001\006\001\007\001\
\\008\001\009\001\255\255\255\255\255\255\255\255\014\001\001\001\
\\255\255\017\001\255\255\005\001\006\001\255\255\008\001\009\001\
\\024\001\255\255\026\001\027\001\014\001\255\255\255\255\017\001\
\\032\001\033\001\034\001\035\001\255\255\255\255\024\001\039\001\
\\026\001\255\255\042\001\255\255\255\255\255\255\032\001\033\001\
\\034\001\035\001\001\001\255\255\255\255\039\001\005\001\006\001\
\\042\001\008\001\009\001\255\255\255\255\255\255\255\255\014\001\
\\001\001\255\255\017\001\255\255\005\001\006\001\255\255\008\001\
\\009\001\024\001\255\255\026\001\255\255\014\001\255\255\255\255\
\\017\001\032\001\033\001\034\001\035\001\255\255\255\255\024\001\
\\039\001\255\255\255\255\042\001\255\255\255\255\255\255\032\001\
\\255\255\034\001\035\001\001\001\255\255\255\255\039\001\005\001\
\\006\001\042\001\008\001\009\001\255\255\255\255\001\001\255\255\
\\014\001\255\255\005\001\017\001\255\255\008\001\009\001\255\255\
\\255\255\255\255\024\001\014\001\255\255\255\255\017\001\255\255\
\\255\255\255\255\032\001\255\255\034\001\035\001\255\255\255\255\
\\255\255\039\001\255\255\255\255\042\001\032\001\001\001\034\001\
\\035\001\255\255\005\001\255\255\039\001\008\001\009\001\042\001\
\\255\255\255\255\255\255\014\001\001\001\255\255\017\001\255\255\
\\255\255\006\001\007\001\255\255\255\255\255\255\255\255\255\255\
\\255\255\255\255\255\255\255\255\255\255\032\001\255\255\034\001\
\\035\001\255\255\255\255\024\001\039\001\026\001\027\001\042\001\
\\004\001\255\255\255\255\032\001\033\001\255\255\255\255\011\001\
\\255\255\006\001\007\001\015\001\016\001\042\001\255\255\019\001\
\\255\255\021\001\022\001\023\001\255\255\025\001\255\255\255\255\
\\028\001\029\001\030\001\024\001\255\255\026\001\027\001\004\001\
\\036\001\037\001\038\001\039\001\033\001\041\001\011\001\043\001\
\\044\001\255\255\015\001\016\001\255\255\255\255\019\001\255\255\
\\021\001\022\001\023\001\255\255\025\001\001\001\255\255\028\001\
\\029\001\030\001\006\001\007\001\255\255\255\255\255\255\036\001\
\\037\001\038\001\255\255\001\001\041\001\255\255\043\001\044\001\
\\006\001\007\001\255\255\255\255\024\001\001\001\026\001\027\001\
\\255\255\001\001\006\001\007\001\032\001\033\001\006\001\007\001\
\\255\255\255\255\024\001\039\001\026\001\027\001\255\255\255\255\
\\255\255\255\255\032\001\033\001\024\001\255\255\026\001\027\001\
\\024\001\039\001\026\001\027\001\032\001\033\001\255\255\001\001\
\\032\001\033\001\255\255\039\001\006\001\007\001\255\255\039\001\
\\255\255\001\001\255\255\255\255\255\255\001\001\006\001\007\001\
\\255\255\255\255\006\001\007\001\255\255\255\255\024\001\255\255\
\\026\001\027\001\255\255\255\255\255\255\255\255\032\001\033\001\
\\024\001\255\255\026\001\027\001\024\001\039\001\026\001\027\001\
\\032\001\033\001\255\255\255\255\032\001\033\001\005\001\039\001\
\\255\255\008\001\009\001\039\001\255\255\255\255\255\255\014\001\
\\005\001\255\255\017\001\008\001\009\001\255\255\255\255\255\255\
\\255\255\014\001\255\255\255\255\017\001\255\255\255\255\255\255\
\\255\255\032\001\255\255\034\001\035\001\255\255\255\255\255\255\
\\039\001\255\255\255\255\042\001\255\255\034\001\035\001\255\255\
\\005\001\255\255\039\001\008\001\009\001\042\001\255\255\255\255\
\\255\255\014\001\001\001\255\255\017\001\255\255\005\001\006\001\
\\007\001\255\255\255\255\255\255\001\001\255\255\255\255\255\255\
\\005\001\006\001\007\001\255\255\255\255\034\001\035\001\255\255\
\\255\255\024\001\039\001\026\001\027\001\042\001\255\255\255\255\
\\255\255\032\001\033\001\024\001\001\001\026\001\027\001\255\255\
\\001\001\006\001\007\001\032\001\033\001\006\001\007\001\008\001\
\\255\255\255\255\001\001\255\255\017\001\255\255\005\001\006\001\
\\007\001\255\255\255\255\024\001\255\255\026\001\027\001\024\001\
\\001\001\026\001\027\001\032\001\033\001\006\001\007\001\032\001\
\\033\001\024\001\001\001\026\001\027\001\255\255\005\001\006\001\
\\007\001\032\001\033\001\255\255\255\255\255\255\255\255\024\001\
\\255\255\026\001\027\001\255\255\255\255\255\255\255\255\032\001\
\\033\001\024\001\255\255\026\001\027\001\255\255\255\255\255\255\
\\255\255\032\001\033\001";

val yyact = vector_ 48 (fn () => ((raise Fail "parser") : obj));
(* Rule 1, file Parser.grm, line 43 *)
val _ = update_ yyact 1
(fn () => repr(let
val d__1__ = peekVal 1 : Fasto.UnknownTypes.FunDec list
val d__2__ = peekVal 0 : (int*int)
in
( (d__1__) ) end : Fasto.UnknownTypes.Prog))
;
(* Rule 2, file Parser.grm, line 46 *)
val _ = update_ yyact 2
(fn () => repr(let
val d__1__ = peekVal 2 : (int*int)
val d__2__ = peekVal 1 : Fasto.UnknownTypes.FunDec
val d__3__ = peekVal 0 : Fasto.UnknownTypes.FunDec list
in
( (d__2__) :: (d__3__) ) end : Fasto.UnknownTypes.FunDec list))
;
(* Rule 3, file Parser.grm, line 47 *)
val _ = update_ yyact 3
(fn () => repr(let
val d__1__ = peekVal 1 : (int*int)
val d__2__ = peekVal 0 : Fasto.UnknownTypes.FunDec
in
( (d__2__) :: [] ) end : Fasto.UnknownTypes.FunDec list))
;
(* Rule 4, file Parser.grm, line 51 *)
val _ = update_ yyact 4
(fn () => repr(let
val d__1__ = peekVal 6 : Fasto.Type
val d__2__ = peekVal 5 : string*(int*int)
val d__3__ = peekVal 4 : (int*int)
val d__4__ = peekVal 3 : Fasto.Param list
val d__5__ = peekVal 2 : (int*int)
val d__6__ = peekVal 1 : (int*int)
val d__7__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( FunDec (#1 (d__2__), (d__1__), (d__4__), (d__7__), #2 (d__2__)) ) end : Fasto.UnknownTypes.FunDec))
;
(* Rule 5, file Parser.grm, line 53 *)
val _ = update_ yyact 5
(fn () => repr(let
val d__1__ = peekVal 5 : Fasto.Type
val d__2__ = peekVal 4 : string*(int*int)
val d__3__ = peekVal 3 : (int*int)
val d__4__ = peekVal 2 : (int*int)
val d__5__ = peekVal 1 : (int*int)
val d__6__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( FunDec (#1 (d__2__), (d__1__), [], (d__6__), #2 (d__2__)) ) end : Fasto.UnknownTypes.FunDec))
;
(* Rule 6, file Parser.grm, line 56 *)
val _ = update_ yyact 6
(fn () => repr(let
val d__1__ = peekVal 0 : (int*int)
in
( Int ) end : Fasto.Type))
;
(* Rule 7, file Parser.grm, line 57 *)
val _ = update_ yyact 7
(fn () => repr(let
val d__1__ = peekVal 0 : (int*int)
in
( Bool ) end : Fasto.Type))
;
(* Rule 8, file Parser.grm, line 58 *)
val _ = update_ yyact 8
(fn () => repr(let
val d__1__ = peekVal 0 : (int*int)
in
( Char ) end : Fasto.Type))
;
(* Rule 9, file Parser.grm, line 59 *)
val _ = update_ yyact 9
(fn () => repr(let
val d__1__ = peekVal 2 : (int*int)
val d__2__ = peekVal 1 : Fasto.Type
val d__3__ = peekVal 0 : (int*int)
in
( Array (d__2__) ) end : Fasto.Type))
;
(* Rule 10, file Parser.grm, line 62 *)
val _ = update_ yyact 10
(fn () => repr(let
val d__1__ = peekVal 3 : Fasto.Type
val d__2__ = peekVal 2 : string*(int*int)
val d__3__ = peekVal 1 : (int*int)
val d__4__ = peekVal 0 : Fasto.Param list
in
( Param (#1 (d__2__), (d__1__)) :: (d__4__) ) end : Fasto.Param list))
;
(* Rule 11, file Parser.grm, line 63 *)
val _ = update_ yyact 11
(fn () => repr(let
val d__1__ = peekVal 1 : Fasto.Type
val d__2__ = peekVal 0 : string*(int*int)
in
( Param (#1 (d__2__), (d__1__)) :: [] ) end : Fasto.Param list))
;
(* Rule 12, file Parser.grm, line 66 *)
val _ = update_ yyact 12
(fn () => repr(let
val d__1__ = peekVal 0 : (int*int)
in
( (Lambda
                           (Int, [Param ("x", Int),
                                        Param ("y", Int)],
                            Plus (Var ("x", (d__1__)),
                                        Var ("y", (d__1__)),
                                        (d__1__)) ,(d__1__)))
                        ) end : Fasto.UnknownTypes.FunArg))
;
(* Rule 13, file Parser.grm, line 73 *)
val _ = update_ yyact 13
(fn () => repr(let
val d__1__ = peekVal 0 : (int*int)
in
( (Lambda
                           (Int, [Param ("x", Int),
                                        Param ("y", Int)],
                            Times (Var ("x", (d__1__)),
                                        Var ("y", (d__1__)),
                                        (d__1__)) ,(d__1__)))
                        ) end : Fasto.UnknownTypes.FunArg))
;
(* Rule 14, file Parser.grm, line 82 *)
val _ = update_ yyact 14
(fn () => repr(let
val d__1__ = peekVal 0 : int*(int*int)
in
( Constant (IntVal (#1 (d__1__)), #2 (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 15, file Parser.grm, line 83 *)
val _ = update_ yyact 15
(fn () => repr(let
val d__1__ = peekVal 0 : char*(int*int)
in
( Constant (CharVal (#1 (d__1__)), #2 (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 16, file Parser.grm, line 84 *)
val _ = update_ yyact 16
(fn () => repr(let
val d__1__ = peekVal 0 : string*(int*int)
in
( Var (d__1__) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 17, file Parser.grm, line 85 *)
val _ = update_ yyact 17
(fn () => repr(let
val d__1__ = peekVal 0 : string*(int*int)
in
( StringLit (d__1__) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 18, file Parser.grm, line 87 *)
val _ = update_ yyact 18
(fn () => repr(let
val d__1__ = peekVal 2 : (int*int)
val d__2__ = peekVal 1 : Fasto.UnknownTypes.Exp list
val d__3__ = peekVal 0 : (int*int)
in
( ArrayLit ((d__2__), (), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 19, file Parser.grm, line 88 *)
val _ = update_ yyact 19
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Plus  ((d__1__), (d__3__), (d__2__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 20, file Parser.grm, line 89 *)
val _ = update_ yyact 20
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Minus ((d__1__), (d__3__), (d__2__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 21, file Parser.grm, line 90 *)
val _ = update_ yyact 21
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Times ((d__1__), (d__3__), (d__2__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 22, file Parser.grm, line 91 *)
val _ = update_ yyact 22
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Divide((d__1__), (d__3__), (d__2__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 23, file Parser.grm, line 92 *)
val _ = update_ yyact 23
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( And   ((d__1__), (d__3__), (d__2__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 24, file Parser.grm, line 93 *)
val _ = update_ yyact 24
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Or    ((d__1__), (d__3__), (d__2__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 25, file Parser.grm, line 94 *)
val _ = update_ yyact 25
(fn () => repr(let
val d__1__ = peekVal 1 : (int*int)
val d__2__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Not   ((d__2__), (d__1__))     ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 26, file Parser.grm, line 95 *)
val _ = update_ yyact 26
(fn () => repr(let
val d__1__ = peekVal 1 : (int*int)
val d__2__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Negate((d__2__), (d__1__))     ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 27, file Parser.grm, line 96 *)
val _ = update_ yyact 27
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Equal ((d__1__), (d__3__), (d__2__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 28, file Parser.grm, line 97 *)
val _ = update_ yyact 28
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Less  ((d__1__), (d__3__), (d__2__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 29, file Parser.grm, line 98 *)
val _ = update_ yyact 29
(fn () => repr(let
val d__1__ = peekVal 0 : (int*int)
in
( Constant(BoolVal(true), (d__1__))  ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 30, file Parser.grm, line 99 *)
val _ = update_ yyact 30
(fn () => repr(let
val d__1__ = peekVal 0 : (int*int)
in
( Constant(BoolVal(false), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 31, file Parser.grm, line 102 *)
val _ = update_ yyact 31
(fn () => repr(let
val d__1__ = peekVal 5 : (int*int)
val d__2__ = peekVal 4 : Fasto.UnknownTypes.Exp
val d__3__ = peekVal 3 : (int*int)
val d__4__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__5__ = peekVal 1 : (int*int)
val d__6__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( If ((d__2__), (d__4__), (d__6__), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 32, file Parser.grm, line 104 *)
val _ = update_ yyact 32
(fn () => repr(let
val d__1__ = peekVal 3 : string*(int*int)
val d__2__ = peekVal 2 : (int*int)
val d__3__ = peekVal 1 : Fasto.UnknownTypes.Exp list
val d__4__ = peekVal 0 : (int*int)
in
( Apply (#1 (d__1__), (d__3__), #2 (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 33, file Parser.grm, line 106 *)
val _ = update_ yyact 33
(fn () => repr(let
val d__1__ = peekVal 2 : string*(int*int)
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : (int*int)
in
( Apply (#1 (d__1__), [], #2 (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 34, file Parser.grm, line 109 *)
val _ = update_ yyact 34
(fn () => repr(let
val d__1__ = peekVal 3 : (int*int)
val d__2__ = peekVal 2 : (int*int)
val d__3__ = peekVal 1 : Fasto.Type
val d__4__ = peekVal 0 : (int*int)
in
( Read ((d__3__), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 35, file Parser.grm, line 111 *)
val _ = update_ yyact 35
(fn () => repr(let
val d__1__ = peekVal 3 : (int*int)
val d__2__ = peekVal 2 : (int*int)
val d__3__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__4__ = peekVal 0 : (int*int)
in
( Write ((d__3__), (), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 36, file Parser.grm, line 113 *)
val _ = update_ yyact 36
(fn () => repr(let
val d__1__ = peekVal 3 : (int*int)
val d__2__ = peekVal 2 : (int*int)
val d__3__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__4__ = peekVal 0 : (int*int)
in
( Iota ((d__3__), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 37, file Parser.grm, line 115 *)
val _ = update_ yyact 37
(fn () => repr(let
val d__1__ = peekVal 5 : (int*int)
val d__2__ = peekVal 4 : (int*int)
val d__3__ = peekVal 3 : Fasto.UnknownTypes.Exp
val d__4__ = peekVal 2 : (int*int)
val d__5__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__6__ = peekVal 0 : (int*int)
in
( Replicate ((d__3__), (d__5__), (), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 38, file Parser.grm, line 117 *)
val _ = update_ yyact 38
(fn () => repr(let
val d__1__ = peekVal 7 : (int*int)
val d__2__ = peekVal 6 : (int*int)
val d__3__ = peekVal 5 : Fasto.UnknownTypes.FunArg
val d__4__ = peekVal 4 : (int*int)
val d__5__ = peekVal 3 : Fasto.UnknownTypes.Exp
val d__6__ = peekVal 2 : (int*int)
val d__7__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__8__ = peekVal 0 : (int*int)
in
( Reduce ((d__3__), (d__5__), (d__7__), (), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 39, file Parser.grm, line 119 *)
val _ = update_ yyact 39
(fn () => repr(let
val d__1__ = peekVal 5 : (int*int)
val d__2__ = peekVal 4 : (int*int)
val d__3__ = peekVal 3 : Fasto.UnknownTypes.FunArg
val d__4__ = peekVal 2 : (int*int)
val d__5__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__6__ = peekVal 0 : (int*int)
in
( Map ((d__3__), (d__5__), (), (), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 40, file Parser.grm, line 121 *)
val _ = update_ yyact 40
(fn () => repr(let
val d__1__ = peekVal 8 : (int*int)
val d__2__ = peekVal 7 : (int*int)
val d__3__ = peekVal 6 : (int*int)
val d__4__ = peekVal 5 : Fasto.UnknownTypes.FunArg
val d__5__ = peekVal 4 : (int*int)
val d__6__ = peekVal 3 : Fasto.UnknownTypes.Exp
val d__7__ = peekVal 2 : (int*int)
val d__8__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__9__ = peekVal 0 : (int*int)
in
( Reduce ((d__4__), (d__6__), (d__8__), (), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 41, file Parser.grm, line 122 *)
val _ = update_ yyact 41
(fn () => repr(let
val d__1__ = peekVal 2 : (int*int)
val d__2__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__3__ = peekVal 0 : (int*int)
in
( (d__2__) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 42, file Parser.grm, line 124 *)
val _ = update_ yyact 42
(fn () => repr(let
val d__1__ = peekVal 5 : (int*int)
val d__2__ = peekVal 4 : string*(int*int)
val d__3__ = peekVal 3 : (int*int)
val d__4__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__5__ = peekVal 1 : (int*int)
val d__6__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( Let (Dec (#1 (d__2__), (d__4__), (d__3__)), (d__6__), (d__1__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 43, file Parser.grm, line 126 *)
val _ = update_ yyact 43
(fn () => repr(let
val d__1__ = peekVal 3 : string*(int*int)
val d__2__ = peekVal 2 : (int*int)
val d__3__ = peekVal 1 : Fasto.UnknownTypes.Exp
val d__4__ = peekVal 0 : (int*int)
in
( Index (#1 (d__1__), (d__3__), (), (d__2__)) ) end : Fasto.UnknownTypes.Exp))
;
(* Rule 44, file Parser.grm, line 129 *)
val _ = update_ yyact 44
(fn () => repr(let
val d__1__ = peekVal 2 : Fasto.UnknownTypes.Exp
val d__2__ = peekVal 1 : (int*int)
val d__3__ = peekVal 0 : Fasto.UnknownTypes.Exp list
in
( (d__1__) :: (d__3__) ) end : Fasto.UnknownTypes.Exp list))
;
(* Rule 45, file Parser.grm, line 130 *)
val _ = update_ yyact 45
(fn () => repr(let
val d__1__ = peekVal 0 : Fasto.UnknownTypes.Exp
in
( (d__1__) :: [] ) end : Fasto.UnknownTypes.Exp list))
;
(* Rule 46, file Parser.grm, line 133 *)
val _ = update_ yyact 46
(fn () => repr(let
val d__1__ = peekVal 0 : string*(int*int)
in
( FunName (#1 (d__1__)) ) end : Fasto.UnknownTypes.FunArg))
;
(* Entry Prog *)
val _ = update_ yyact 47 (fn () => raise yyexit (peekVal 0));
val yytables : parseTables =
  ( yyact,
    yytransl,
    yylhs,
    yylen,
    yydefred,
    yydgoto,
    yysindex,
    yyrindex,
    yygindex,
    YYTABLESIZE,
    yytable,
    yycheck );
fun Prog lexer lexbuf = yyparse yytables 1 lexer lexbuf;

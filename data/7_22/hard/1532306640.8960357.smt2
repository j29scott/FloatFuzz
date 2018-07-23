;  time  = 57.786595582962036
;  terms = 8
;  score = 57.786595582962036
;  stdout= sat

(fp.isNormal (fp.fma RNE (fp.rem x1 x2) (fp.fma RNE x2 x2 (fp.fma RNE x2 x2 x1)) (fp.fma RNE (fp.min x1 x1) (fp.min x2 x0) (fp.sub RNE x1 x1))))
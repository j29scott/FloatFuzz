;  time  = 60
;  terms = 11
;  score = 60
;  stdout= timeout

(fp.isSubnormal (fp.fma RNE (fp.fma RNE x0 x2 x0) (fp.rem x0 (fp.rem x2 x1)) (fp.sub RNE x0 x1)))
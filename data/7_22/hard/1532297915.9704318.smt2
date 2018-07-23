;  time  = 60
;  terms = 8
;  score = 60
;  stdout= timeout

(fp.isSubnormal (fp.fma RNE (fp.rem x0 x0) (fp.fma RNE x1 x0 (fp.min x2 x1)) (fp.rem (fp.fma RNE x1 x1 x1) (fp.fma RNE x0 x0 x0))))
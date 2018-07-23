;  time  = 60
;  terms = 7
;  score = 60
;  stdout= timeout

(fp.isSubnormal (fp.fma RNE (fp.fma RNE x1 x1 (fp.div RNE x0 x2)) (fp.sqrt RNE x0) (fp.rem (fp.sub RNE x1 x0) (fp.fma RNE x2 x1 x2))))
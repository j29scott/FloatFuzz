;  time  = 60
;  terms = 7
;  score = 60
;  stdout= timeout

(fp.isSubnormal (fp.rem (fp.div RNE x0 x1) (fp.rem x1 (fp.fma RNE x1 x1 x0))))
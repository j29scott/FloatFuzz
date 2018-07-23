;  time  = 60
;  terms = 13
;  score = 60
;  stdout= timeout

(fp.geq (fp.sub RNE (fp.rem x0 x1) (fp.rem x0 (fp.fma RNE x1 x1 x1))) (fp.rem (fp.min x0 x1) (fp.rem x1 (fp.div RNE x1 x1))))
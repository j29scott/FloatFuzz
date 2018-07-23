;  time  = 60
;  terms = 11
;  score = 60
;  stdout= timeout

(fp.eq (fp.rem (fp.rem x1 (fp.sub RNE x2 x0)) (fp.fma RNE (fp.sqrt RNE x1) (fp.div RNE x2 x1) (fp.sub RNE x0 x0))) (fp.rem (fp.div RNE x0 x0) (fp.rem x0 x0)))
;  time  = 60
;  terms = 7
;  score = 60
;  stdout= timeout

(fp.eq (fp.rem (fp.rem x1 (fp.fma RNE x2 x2 x1)) (fp.div RNE (fp.neg x1) (fp.add RNE x0 x2))) (fp.sqrt RNE (fp.rem x1 (fp.abs x0))))
;  time  = 60
;  terms = 10
;  score = 60
;  stdout= timeout

(fp.lt (fp.rem (fp.rem x2 (fp.rem x0 x1)) (fp.add RNE (fp.add RNE x1 x1) (fp.fma RNE x0 x2 x1))) (fp.rem (fp.rem x2 (fp.neg x1)) (fp.add RNE x2 x1)))
;  time  = 60
;  terms = 14
;  score = 60
;  stdout= timeout

(fp.eq (fp.add RNE (fp.rem x2 x0) (fp.fma RNE x1 x0 x0)) (fp.rem (fp.fma RNE x0 x1 x1) (fp.rem (fp.min x2 x2) (fp.add RNE x0 x1))))
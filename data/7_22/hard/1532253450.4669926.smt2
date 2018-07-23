;  time  = 60
;  terms = 16
;  score = 60
;  stdout= timeout

(fp.eq (fp.sqrt RNE (fp.max x0 x1)) (fp.fma RNE (fp.fma RNE x1 x2 x1) (fp.rem x0 x2) (fp.add RNE x2 x0)))
;  time  = 60
;  terms = 19
;  score = 60
;  stdout= timeout

(fp.lt (fp.mul RNE (fp.mul RNE x1 x2) (fp.fma RNE (fp.min x1 x1) (fp.max x2 x1) (fp.rem x2 x1))) (fp.sqrt RNE (fp.min x0 x1)))
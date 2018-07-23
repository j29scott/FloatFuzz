;  time  = 60
;  terms = 13
;  score = 60
;  stdout= timeout

(fp.lt (fp.add RNE (fp.min x2 x2) (fp.rem x1 (fp.min x0 x0))) (fp.rem (fp.max x2 x1) (fp.rem x0 (fp.fma RNE x0 x1 x2))))
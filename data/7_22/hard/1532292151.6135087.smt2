;  time  = 60
;  terms = 5
;  score = 60
;  stdout= timeout

(fp.isNaN (fp.rem (fp.rem x1 x1) (fp.fma RNE (fp.max x1 x1) (fp.rem x0 x0) (fp.abs x1))))
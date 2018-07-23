;  time  = 60
;  terms = 11
;  score = 60
;  stdout= timeout

(fp.gt (fp.div RNE (fp.rem x1 x0) (fp.rem x1 (fp.max x2 x0))) (fp.sqrt RNE (fp.rem x0 (fp.fma RNE x1 x0 x1))))
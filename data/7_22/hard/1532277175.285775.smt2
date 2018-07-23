;  time  = 60
;  terms = 12
;  score = 60
;  stdout= timeout

(fp.eq (fp.add RNE (fp.rem x0 x1) (fp.sqrt RNE x2)) (fp.div RNE (fp.rem x1 (fp.div RNE x0 x0)) (fp.rem x2 (fp.max x2 x2))))
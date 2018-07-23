;  time  = 60
;  terms = 12
;  score = 60
;  stdout= timeout

(fp.eq (fp.sqrt RNE (fp.add RNE x1 x2)) (fp.div RNE (fp.div RNE x1 x1) (fp.rem x2 x1)))
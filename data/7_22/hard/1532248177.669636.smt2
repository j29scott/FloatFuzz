;  time  = 60
;  terms = 14
;  score = 60
;  stdout= timeout

(fp.lt (fp.div RNE (fp.add RNE x1 x2) (fp.max x1 x1)) (fp.min (fp.div RNE x2 x1) (fp.neg x2)))
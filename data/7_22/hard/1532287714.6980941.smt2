;  time  = 57.454808473587036
;  terms = 13
;  score = 57.454808473587036
;  stdout= sat

(fp.eq (fp.roundToIntegral RNE (fp.rem x2 x1)) (fp.rem (fp.rem x1 x2) (fp.fma RNE x1 x2 x1)))
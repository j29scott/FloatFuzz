;  time  = 58.475048780441284
;  terms = 15
;  score = 58.475048780441284
;  stdout= sat

(fp.eq (fp.add RNE (fp.max x1 x0) (fp.roundToIntegral RNE x1)) (fp.div RNE (fp.fma RNE x0 x2 x1) (fp.rem x1 x2)))
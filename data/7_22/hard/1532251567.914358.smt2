;  time  = 57.26799035072327
;  terms = 14
;  score = 57.26799035072327
;  stdout= sat

(fp.gt (fp.roundToIntegral RNE (fp.abs x2)) (fp.rem (fp.div RNE x2 x2) (fp.fma RNE x2 x1 (fp.div RNE x2 x1))))
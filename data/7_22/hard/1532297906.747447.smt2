;  time  = 60
;  terms = 7
;  score = 60
;  stdout= timeout

(fp.eq (fp.min (fp.neg x0) (fp.fma RNE (fp.min x0 x0) (fp.abs x1) (fp.rem x0 x1))) (fp.abs (fp.min x1 (fp.min x1 x1))))
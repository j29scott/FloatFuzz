;  time  = 60
;  terms = 9
;  score = 60
;  stdout= timeout

(fp.eq (fp.abs (fp.rem x2 x1)) (fp.rem (fp.min x0 x1) (fp.min (fp.rem x1 x0) (fp.neg x0))))
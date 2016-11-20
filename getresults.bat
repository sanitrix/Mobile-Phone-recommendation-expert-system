(get-phone-list)
(do-for-all-facts ((?f phone-count)) (> ?f:count 0) (printout t ?f:label crlf))

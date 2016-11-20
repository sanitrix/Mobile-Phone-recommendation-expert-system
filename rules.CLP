(defrule MAIN::start
	(declare (salience 99))
    ?state <- (state start)
    =>
    (printout t crlf)
    (printout t "Welcome to Advanced Mobiles Recommendation System" crlf)
    (printout t crlf)
    (assert (state question))))

(deffacts MAIN::start
    (state start))

(defrule MAIN::create-count
	(declare (salience 10))
	(phone (label ?label))
	=>
	(assert (phone-count (label ?label) (matched "")))
)



(defrule MAIN::ask-brand
    (declare (salience 89))
    (not (asked brand))
    =>
    (printout t "Select a brand?" crlf)
    (printout t "(none/Apple/OnePlus/LeEco/MI/Samsung/Lenovo/Moto)" crlf)
    (bind ?response (read))
    (switch ?response
        (case Apple then (assert (preference (name brand) (value "Apple"))))
        (case OnePlus then (assert (preference (name brand) (value "OnePlus"))))
        (case LeEco then (assert (preference (name brand) (value "LeEco"))))
        (case MI then (assert (preference (name brand) (value "MI"))))
        (case Samsung then (assert (preference (name brand) (value "Samsung"))))
        (case Lenovo then (assert (preference (name brand) (value "Lenovo"))))
        (case Moto then (assert (preference (name brand) (value "Moto"))))
        (default (printout t "OK. Lets consider all brands!" crlf)))
    (assert (asked brand)))

(defrule MAIN::get-input-brand
	(preference (name brand) (value ?brand))
	(phone (label ?label) (brand ?brand))
=>
	(phone-modify-count ?label 1 brand))



  
 

(defrule MAIN::ask-price_range
    (declare (salience 90))
    (not (asked price_range))
    =>
    (printout t "Select a price range?" crlf)
    (printout t "(None/above_30k/25kto30k/20kto25k/15kto20k/10kto15k/5kto10k)" crlf)
    (bind ?response (read))
    (switch ?response
        (case above_30k then (assert (preference (name price) (value "above_30k"))))
        (case 25kto30k then (assert (preference (name price) (value "25kto30k"))))
        (case 20kto25k then (assert (preference (name price) (value "20kto25k"))))
        (case 15kto20k then (assert (preference (name price) (value "15kto20k"))))
        (case 10kto15k then (assert (preference (name price) (value "10kto15k"))))
        (case 5kto10k then (assert (preference (name price) (value "5kto10k"))))
        (default (printout t "OK. Lets consider all price_ranges!" crlf)))
    (assert (asked price_range)))

(defrule MAIN::get-input-price
	(preference (name price) (value ?price))
	(phone (label ?label) (price ?price))
=>
	(phone-modify-count ?label 1 price))



	


(defrule MAIN::ask-camera
    (declare (salience 88))
    (not (asked camera))
    =>
    (printout t "Select a camera?" crlf)
    (printout t "(None/5MP/8MP/13MP/16MP)" crlf)
    (bind ?response (read))
    (switch ?response
        (case 5MP then (assert (preference (name camera) (value "5MP"))))
        (case 8MP then (assert (preference (name camera) (value "8MP"))))
        (case 13MP then (assert (preference (name camera) (value "13MP"))))
        (case 16MP then (assert (preference (name camera) (value "16MP"))))
      	(default (printout t "OK. Lets consider all cameras!" crlf)))
    (assert (asked camera)))

(defrule MAIN::get-input-camera
	(preference (name camera) (value ?camera))
	(phone (label ?label) (camera ?camera))
=>
	(phone-modify-count ?label 1 camera))






(defrule MAIN::ask-battery
    (declare (salience 86))
    (not (asked battery))
    =>
    (printout t "Select a battery?" crlf)
    (printout t "(None/2000/3000/4000)" crlf)
    (bind ?response (read))
    (switch ?response
        (case 2000 then (assert (preference (name battery) (value "2000"))))
        (case 3000 then (assert (preference (name battery) (value "3000"))))
        (case 4000 then (assert (preference (name battery) (value "4000"))))
        (default (printout t "OK. Lets consider all batteries!" crlf)))
    (assert (asked battery)))

(defrule MAIN::get-input-battery
	(preference (name battery) (value ?battery))
	(phone (label ?label) (battery ?battery))
=>
	(phone-modify-count ?label 1 battery))






(defrule MAIN::ask-screenSize
    (declare (salience 87))
    (not (asked screenSize))
    =>
    (printout t "Select a screenSize?" crlf)
    (printout t "(None/4.5/5/5.5)" crlf)
    (bind ?response (read))
    (switch ?response
        (case 4.5 then (assert (preference (name screenSize) (value "4.5"))))
        (case 5 then (assert (preference (name screenSize) (value "5"))))
        (case 5.5 then (assert (preference (name screenSize) (value "5.5"))))
       (default (printout t "OK. Lets consider all screenSizes!" crlf)))
    (assert (asked screenSize)))

(defrule MAIN::get-input-screenSize
	(preference (name screenSize) (value ?screenSize))
	(phone (label ?label) (screenSize ?screenSize))
=>
	(phone-modify-count ?label 1 screenSize))
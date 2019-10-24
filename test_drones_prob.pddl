(define (problem test-drones-prob)
    (:domain test-drones)
  (:objects da db - drone
	    c1 c2 c3 c4 c5 - location)
  (:init (at da c1)
	 (at db c2)
	 (commrange home c1)
	 (commrange c1 c2)
	 (commrange c2 c3)
	 (commrange c3 c4)
	 (commrange c4 c5))
  (:goal (and (recorded da c5))))

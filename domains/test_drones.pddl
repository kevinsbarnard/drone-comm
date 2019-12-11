(define
  (domain test-drones)
  (:requirements :typing)
  (:types drone location)
  (:constants home - location)
  (:predicates
    (at ?d - drone ?l - location)
    (inrange ?l1 - location ?l2 - location))
  (:derived
    (linked ?l - location)
    (exists
      (?d - drone ?ld - location)
	    (or
        (or (= ?l home) (inrange ?l home) (inrange home ?l))
        (and
          (at ?d ?ld)
          (or (inrange ?l ?ld) (inrange ?ld ?l))
          (linked ?ld)))))
  (:action move
    :parameters (?d - drone ?li - location ?lf - location)
    :precondition (and
      (at ?d ?li)
      (linked ?lf))
    :effect (and
      (not (at ?d ?li))
		  (at ?d ?lf))))

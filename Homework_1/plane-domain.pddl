(define (domain planeDomain)
  (:requirements :strips)

  (:predicates (plane ?x)
               (cargo ?x)
               (airport ?x)
               (planeLoaded ?x)
               (planeAt-airport ?x ?y)
               (cargoAt-airport ?x ?y))

  (:action loadPlane
           :parameters (?p ?c)
           :precondition (and (plane ?p) (cargo ?c)  (not (planeLoaded ?p)))
           :effect (and (planeLoaded ?p)))

  (:action unloadPlane
           :parameters (?p ?c)
           :precondition (and (plane ?p) (cargo ?c)  (planeLoaded ?p))
           :effect (and (not (planeLoaded ?p))))

  (:action flyEmpty
           :parameters (?plane ?to ?from)
           :precondition (and (plane ?plane) (airport ?to) (airport ?from)(planeAt-airport ?plane ?from))
           :effect (and (planeAt-airport ?plane ?to) (not (planeAt-airport ?plane ?from))))

  (:action flyWithCargo
           :parameters (?plane ?cargo ?to ?from)
           :precondition (and (plane ?plane) (planeLoaded ?plane) (cargo ?cargo) (airport ?to) (airport ?from) (cargoAt-airport ?cargo ?from) (planeAt-airport ?plane ?from))
           :effect (and (cargoAt-airport ?cargo ?to) (planeAt-airport ?plane ?to) (not (cargoAt-airport ?cargo ?to)) (not (planeAt-airport ?plane ?from)) (not (planeLoaded ?plane))))
 )
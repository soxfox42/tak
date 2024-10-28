(ns tak)

(defn tak [x y z]
  (if (< y x)
    (tak
      (tak (dec x) y z)
      (tak (dec y) z x)
      (tak (dec z) x y))
    z))

(def args *command-line-args*)
(let [x (Integer/parseInt (nth args 0))
      y (Integer/parseInt (nth args 1))
      z (Integer/parseInt (nth args 2))]
  (println (tak x y z)))

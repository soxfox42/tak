(ns tak)

(defn tak ^long [^long x ^long y ^long z]
  (if (< y x)
    (tak
      (tak (dec x) y z)
      (tak (dec y) z x)
      (tak (dec z) x y))
    z))

(let [args *command-line-args*
      x (Long/parseLong (nth args 0))
      y (Long/parseLong (nth args 1))
      z (Long/parseLong (nth args 2))]
  (println (tak x y z)))

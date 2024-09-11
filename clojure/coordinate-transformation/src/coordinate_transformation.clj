(ns coordinate-transformation)

(defn translate2d [dx dy] (fn [a b] [(+ a dx) (+ b dy)])  )

(defn scale2d [sx sy] (fn [a b] [(* a sx) (* b sy)]))

(defn compose-transform [f g] #(apply g (f %1 %2)))

(defn memoize-transform [f] (let [mem (atom {})]
                              (fn [x y] (if (contains? @mem [x y]) (@mem [x y])
                                                                   (let [result (f x y)] (reset! mem {[x y] result}) result))))) 

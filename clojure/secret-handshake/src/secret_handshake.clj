(ns secret-handshake)
(def ^:private dict    {1 "wink"
                        2 "double blink"
                        4 "close your eyes"
                        8 "jump"})

(defn commands [mask]
  (let [msg (->> dict
                 (filter #(->> (key %) (bit-and mask) pos?))
                 (map #(val %))
                 (apply vector))]
    (if (->> 16 (bit-and mask) zero?) msg (->> msg reverse))))


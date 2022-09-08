(ns secret-handshake)
(def dict    {1 "wink"
              2 "double blink"
              4 "close your eyes"
              8 "jump"})

(defn commands [n]
  (let [msg (->> dict
             (filter #(->> (key %)
                           (bit-and n)
                           pos?))
             (map #(val %))
             (apply vector))]
    (if (zero? (bit-and n 16))
      msg
      (reverse msg))))


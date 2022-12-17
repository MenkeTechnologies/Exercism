(ns matching-brackets)

(def ^:private matching {\{ \}, \[ \], \( \)})

(def ^:private opening? (set (keys matching)))

(def ^:private bracket? (into opening? (vals matching)))

(defn valid? [s]
  (let [update-stack (fn [acc c]
                       (cond (opening? c) (conj acc c)
                             (= (matching (peek acc)) c) (pop acc)
                             :else (reduced [::not-empty])))]
    (->> s
         (filter bracket?)
         (reduce update-stack [])
         (empty?))))

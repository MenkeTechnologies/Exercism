(ns bank-account)

(defn open-account [] (atom  0))

(defn close-account [acct] (reset! acct nil))

(def get-balance deref)

(defn update-balance [acct amt]  (swap! acct (partial + amt)))

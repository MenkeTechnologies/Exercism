(ns interest-is-interesting)

(defn abs [n]
  (if (neg? n)
    (- n)
    n))

(defn interest-rate
  "Calculate the interest rate based on the specified balance."
  [balance]
  (cond
    (neg? balance) -3.213
    (< balance 1000.0M) 0.5
    (< balance 5000.0M) 1.621
    :else 2.475))

(defn interest [n]
  (*
    (bigdec (interest-rate n)) 0.01M (abs n))
  )

(defn annual-balance-update
  "Calculate the annual balance update taking into account the interest rate."
  [balance]
  (+
    (interest balance)
     balance))

(defn amount-to-donate
  "Calculate how much money to donate to charities based on the balance and the tax-free percentage that the government allows."
  [balance tax-free-percentage]
  (if (pos? balance)
    (int (* tax-free-percentage 0.01 balance 2))
    0))

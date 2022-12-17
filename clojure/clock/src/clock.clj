(ns clock)

(defn- norm [clk] (mod clk 1440))

(defn clock [hr min] (->> min (+ (* 60 hr)) norm))

(defn add-time [clk min] (->> min (+ clk) norm))

(defn clock->string [clk] (format "%02d:%02d" (quot clk 60) (mod clk 60)))

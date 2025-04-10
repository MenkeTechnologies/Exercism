use context essentials2020

provide: reversed end

fun reversed(s :: String) -> String:
  string-explode(s).reverse().join-str("")
end

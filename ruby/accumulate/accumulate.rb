class Array
  def accumulate(&clo)
    reduce([]) { _1 << clo.call(_2) }
  end
end

# frozen_string_literal: true

class Array
  def keep(&clo)
    reduce([]) { clo.call(_2) ? _1 << _2 : _1 }
  end

  def discard(&clo)
    reduce([]) { clo.call(_2) ? _1 : _1 << _2 }
  end
end

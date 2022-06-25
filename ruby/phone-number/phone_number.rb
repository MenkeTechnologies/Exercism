class PhoneNumber

  def self.clean(num)

    if num =~ /^\s*(\+?1?\s*)?\(?([2-9]\d{2})\)?[-.\s]*([2-9]\d{2})[-.\s]*(\d{4})\s*$/
      "#{$2}#{$3}#{$4}"
    end
  end


end

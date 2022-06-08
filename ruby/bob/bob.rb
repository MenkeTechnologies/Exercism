class Bob
  def self.hey(remark)
    remark.gsub!(/\s+/, '')

    return 'Fine. Be that way!' if remark.empty?

    if remark !~ /[a-z]/ && remark =~ /[A-Z]/
      return remark =~ /\?$/ ? "Calm down, I know what I'm doing!" : 'Whoa, chill out!'
    end

    remark =~ /\?$/ ? 'Sure.' : 'Whatever.'
  end
end

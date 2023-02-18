module PhoneNumber
  def self.clean(s : String) : String
    num = s.delete { |c| !c.ascii_number? }
    num = num.delete_at 0 if num.size == 11 && num.starts_with?('1')
    raise ArgumentError.new if num.size != 10 || num[0].to_i < 2 || num[3].to_i < 2
    num
  end
end


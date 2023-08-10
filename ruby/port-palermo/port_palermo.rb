module Port
  Identifier = :PALE
  def self.get_identifier(city)
    city.upcase.slice(0, 4).to_sym
  end
  def self.get_terminal(ship_identifier)
    identifier = ship_identifier.slice(0, 3)
    %w[OIL GAS].include?(identifier) ? :A : :B
  end
end

class Reactor
  def self.criticality_balanced?(temperature, neutrons_emitted)
    temperature < 800 && neutrons_emitted > 500 && temperature * neutrons_emitted < 500000
  end
  def self.reactor_efficiency(voltage, current, theoretical_max_power)
    efficiency = ((voltage * current) / theoretical_max_power) * 100
    efficiency >= 80 ? "green" : efficiency < 80 && efficiency >= 60 ? "orange" : efficiency < 60 && efficiency >= 30 ? "red" : "black"
  end
  def self.fail_safe(temperature, neutrons_produced_per_second, threshold)
    criticality = temperature * neutrons_produced_per_second
    thresh90 = 0.9 * threshold
    thresh10 = 0.1 * threshold
    criticality < thresh90 ? "LOW" : criticality > threshold - thresh10 && criticality < threshold + thresh10 ? "NORMAL" : "DANGER"
  end
end

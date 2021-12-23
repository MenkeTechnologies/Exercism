class LogLineParser
  def initialize(line)
    @lvl, @msg = line.match(/\[(.*)\]:\s+(.*\S)\s*/).captures
    @lvl = @lvl.downcase
  end

  def message
    @msg
  end

  def log_level
    @lvl
  end

  def reformat
    "#{@msg} (#{@lvl})"
  end
end

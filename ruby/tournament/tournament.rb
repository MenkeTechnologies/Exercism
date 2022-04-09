class Team
  WIN_POINTS = 3
  DRAW_POINTS = 1
  attr_accessor :name, :wins, :losses, :draws

  def initialize(name)
    @name = name
    @wins = 0
    @losses = 0
    @draws = 0
  end

  def matches
    @wins + @losses + @draws
  end

  def points
    @wins * WIN_POINTS + @draws * DRAW_POINTS
  end

  def info
    [@name, matches, @wins, @draws, @losses, points]
  end

  def won
    @wins += 1
  end

  def lost
    @losses += 1
  end

  def tied
    @draws += 1
  end

end

class Tournament
  REPORT_HEADER = %w[Team MP W D L P].freeze
  REPORT_FORMAT = "%-31s| %2s |  %s |  %s |  %s |  %s\n".freeze

  def self.tally(input)
    @teams = Hash.new { _1[_2] = Team.new(_2) }
    input.split("\n").each { parse(_1) }

    REPORT_FORMAT % REPORT_HEADER +
      @teams.values
            .sort_by { [-_1.points, _1.name] }
            .map { REPORT_FORMAT % _1.info }
            .join
  end

  def self.parse(line)
    t1, t2, r = line.split(';')
    case r
    when 'win'
      @teams[t1].won
      @teams[t2].lost
    when 'loss'
      @teams[t1].lost
      @teams[t2].won
    when 'draw'
      @teams[t1].tied
      @teams[t2].tied
    end
  end

end

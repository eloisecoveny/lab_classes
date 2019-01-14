class Team

  attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  def team_name()
    return @team_name
  end

  def players_names()
    return @players
  end

  def coach_name()
    return @coach
  end

  def set_new_coach(new_coach)
    @coach = new_coach
  end

  def add_new_player(new_player)
    @players << new_player
  end

  def check_player_in_team(name)
    return true if @players.include?(name)
  else
    return false
  end

  def team_points(result)
    return @points += 5 if result == "won"
    return @points += 0 if result == "lost"
  end


end

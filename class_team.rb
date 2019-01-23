class Team

  attr_accessor :coach
  attr_reader :team_name, :players, :points

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  # def get_name()
  #   return @team_name
  # end
  #
  # def get_players()
  #   return @players
  # end
  #
  # def get_coach()
  #   return @coach
  # end

  # def set_coach(new_coach)
  #   @coach = new_coach
  # end

  def add_player(new_player)
    @players << new_player
  end

  def check_player_in_team(name)
    return true if @players.include?(name)
  else
    return false
  end

  def update_points(result)
    @points += 1 if result == "win"
  end


end

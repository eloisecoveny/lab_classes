require("minitest/autorun")
require("minitest/rg")
require_relative("../class_team.rb")

class TestTeam < MiniTest::Test

  def setup
    @players = ["George", "Michael", "Trinity", "Eddie", "Sandy"]
    @team = Team.new("The Trotters", @players, "Hill Rothers")
  end

  def test_get_name
    assert_equal("The Trotters", @team.team_name)
  end

  def test_get_players
    expected = @players
    assert_equal(expected, @team.players)
  end

  def test_get_coach
    assert_equal("Hill Rothers", @team.coach)
  end

  def test_set_coach
    @team.coach = "Maggie Smith"
    assert_equal("Maggie Smith", @team.coach)
  end

  def test_add_player
    expected = 6
    @team.add_player("Billy")
    assert_equal(expected, @team.players.length)
  end

  def test_check_player_in_team__return_true
    in_team = @team.check_player_in_team("Eddie")
    assert_equal(true, in_team)
  end

  def test_check_player_in_team__return_false
    in_team = @team.check_player_in_team("Nina")
    assert_equal(false, in_team)
  end

  def test_get_points
    assert_equal(0, @team.points)
  end

  def test_update_points
    @team.update_points("win")
    assert_equal(1, @team.points)
  end


end

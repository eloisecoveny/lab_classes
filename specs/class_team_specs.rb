require("minitest/autorun")
require("minitest/rg")
require_relative("../class_team.rb")

class TestTeam < MiniTest::Test

  def test_team_name()
    team = Team.new("The Trotters", ["George", "Michael", "Trinity", "Eddie", "Sandy"], "Hill Rothers", 0)
    assert_equal("The Trotters", team.team_name)
  end

  def test_players_names()
    team = Team.new("The Trotters", ["George", "Michael", "Trinity", "Eddie", "Sandy"], "Hill Rothers", 0)
    assert_equal(["George", "Michael", "Trinity", "Eddie", "Sandy"], team.players_names)
  end

  def test_coach_name()
    team = Team.new("The Trotters", ["George", "Michael", "Trinity", "Eddie", "Sandy"], "Hill Rothers", 0)
    assert_equal("Hill Rothers", team.coach_name)
  end

  def test_set_new_coach()
    team = Team.new("The Trotters", ["George", "Michael", "Trinity", "Eddie", "Sandy"], "Hill Rothers", 0)
    team.set_new_coach("Maggie Smith")
    assert_equal("Maggie Smith", team.coach_name)
  end

  def test_add_new_player()
    team = Team.new("The Trotters", ["George", "Michael", "Trinity", "Eddie", "Sandy"], "Hill Rothers", 0)
    team.add_new_player("Billy")
    assert_equal(["George", "Michael", "Trinity", "Eddie", "Sandy", "Billy"], team.players_names)
  end

  def test_check_player_in_team__return_true()
    team = Team.new("The Trotters", ["George", "Michael", "Trinity", "Eddie", "Sandy"], "Hill Rothers", 0)
    assert_equal(true, team.check_player_in_team("Eddie"))
  end

  def test_check_player_in_team__return_false()
    team = Team.new("The Trotters", ["George", "Michael", "Trinity", "Eddie", "Sandy"], "Hill Rothers", 0)
    assert_equal(false, team.check_player_in_team("Nina"))
  end

  def test_team_points__won()
    team = Team.new("The Trotters", ["George", "Michael", "Trinity", "Eddie", "Sandy"], "Hill Rothers", 0)
    points = team.team_points("won")
    assert_equal(5, team.points)
  end

  def test_team_points__lost()
    team = Team.new("The Trotters", ["George", "Michael", "Trinity", "Eddie", "Sandy"], "Hill Rothers", 0)
    points = team.team_points("lost")
    assert_equal(0, team.points)
  end


end

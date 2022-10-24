class Team

  attr_reader :name, :city, :roster

  def initialize(name, city)
    @name = name
    @city = city
    @roster = []
  end

  def player_count
    @roster.length
  end

  def add_player(player)
    @roster << player
  end

  def long_term_players
    @roster.select do |player|
      player.long_term?
    end
  end

  def short_term_players
    @roster.select do |player|
      player.short_term?
    end
  end

  def total_value
    @roster.sum do |player|
      player.total_cost
    end
  end

  def details
    {"total_value" => total_value, "player_count" => player_count}
  end
end
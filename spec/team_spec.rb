require './lib/team'

describe Team do
  describe '#initialize' do
    it 'has a name' do
      team = Team.new('Dodgers', "Los Angeles")

      expect(team.name).to eq 'Dodgers'
    end

    it 'has a city' do
      team = Team.new('Dodgers', "Los Angeles")

      expect(team.city).to eq 'Los Angeles'
    end

    it 'has an empty roster array by default' do
      team = Team.new('Dodgers', "Los Angeles")

      expect(team.roster).to eq []
    end
  end

  describe '#add_player' do
  it "can add a player to the team's roster" do
    team = Team.new('Dodgers', "Los Angeles")

    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    team.add_player(player_1)

    expect(team.roster[0]).to eq player_1
  end
end
  
  describe '#player_count' do
    it "returns the total number of players in the team's roster" do
      team = Team.new('Dodgers', "Los Angeles")

      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)

      team.add_player(player_1)
      team.add_player(player_2)

      expect(team.player_count).to eq 2
    end
  end

  describe '#long_term_players' do
    it 'returns an array of players whose contracts are longer than 24' do
      team = Team.new('Dodgers', "Los Angeles")

      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)

      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)

      expect(team.long_term_players).to eq [player_1, player_3]
    end
  end

  describe '#short_term_players' do
    it 'returns an array of players whose contracts are less than or equal to 24' do
      team = Team.new('Dodgers', "Los Angeles")

      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)

      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)

      expect(team.short_term_players).to eq [player_2, player_4]
    end
  end

  describe '#total_value' do
    it "returns a sum of every player's total_cost" do
      team = Team.new('Dodgers', "Los Angeles")

      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)

      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)

      expect(team.total_value).to eq 85200000
    end
  end

  describe '#details' do
    it 'returns a hash containing the teams total_value and player_count' do
      team = Team.new('Dodgers', "Los Angeles")

      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)

      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)
      
      expect(team.details).to be == {"total_value" => 85200000, "player_count" => 4}
    end
  end

  describe '#average_cost_of_player' do
    it 'returns a striing representing the average cost of the players on the team' do
      team = Team.new('Dodgers', "Los Angeles")

      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)

      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)

      expect(team.average_cost_of_player).to eq "$21,300,000"
    end
  end

  describe '#players_by_last_name' do
    it 'returns a string of player last names sorted by alaphabetical order.' do
      team = Team.new('Dodgers', "Los Angeles")

      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)

      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)

      expect(team.players_by_last_name).to eq "DeNunez, McClennan, Palledorous, Porter"
    end
  end

end







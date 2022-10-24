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
end







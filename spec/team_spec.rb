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

  describe '#player_count' do
    it "returns the total number of players in the team's roster" do
    end
  end

  describe '#add_player' do
    it "can add a player to the team's roster" do
    end
  end
end







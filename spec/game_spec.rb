require "game"

describe Game do
  let(:question) { double('question') }

  let(:game) {Game.new(question)}
  context "CLASS METHOD #create" do
    it "creates a new instance of game" do
      game_id = 1
      Game.create(game_id)
      expect(Game.instance(game_id)).to be_instance_of(Game)
    end
  end

  context "CLASS METHOD #remove_instance" do
    it "removes instance of game" do
      game_id = 1
      Game.create(game_id)
      Game.remove_instance(game_id)
      expect(Game.instance(game_id)).to eq nil
    end

    it "it save multiple instances to hash" do
      first_game_id = 1
      second_game_id = 2
      Game.create(first_game_id)
      expect(Game.instance(first_game_id)).to be_instance_of(Game)
      Game.create(second_game_id)
      expect(Game.instance(second_game_id)).to be_instance_of(Game)
    end
  end

  context "#new_question" do
    it "returns a question" do
      allow(question).to receive(:random_question) { ["The Plaka is the oldest quarter of which city?","Athens",["Athens", "Prague","Rome","Vienna"]] }
      expect(game.new_question).to eq ["The Plaka is the oldest quarter of which city?","Athens",["Athens", "Prague","Rome","Vienna"]]
    end

    it "don't repeat the same question" do
      allow(question).to receive(:all) { [1] }
      allow(question).to receive(:random_question) { ["The Plaka is the oldest quarter of which city?","Athens",["Athens", "Prague","Rome","Vienna"]] }
      expect(game.new_question).to eq ["The Plaka is the oldest quarter of which city?","Athens",["Athens", "Prague","Rome","Vienna"]]
      allow(question).to receive(:random_question) { ["The Plaka is the oldest quarter of which city?","Athens",["Athens", "Prague","Rome","Vienna"]] }
      expect(game.new_question).to eq nil
      allow(question).to receive(:all) { [1,2] }
      allow(question).to receive(:random_question) { ["What is an axolotl?","A species of salamander",["A nerve in the brain","A multi-axled vehicle","A type of mortice lock","A species of salamander"]] }
      expect(game.new_question).to eq ["What is an axolotl?","A species of salamander",["A nerve in the brain","A multi-axled vehicle","A type of mortice lock","A species of salamander"]]
    end
  end
  context "#question_number" do
    it "adds and resets to question number" do
      expect{ game.question_number += 1 }.to change{ game.question_number }.by 1
      expect(game.question_number = 1).to eq 1
    end
  end

  context "#lives" do
    it "player starts with 3 lives" do
      expect(game.lives_remaining).to eq 3
    end

    it "player can lose lives" do
      expect{ game.lives_remaining -= 1 }.to change{ game.lives_remaining }.by -1
    end
  end

  context "#passes" do
    it "player starts with 2 passes" do
      expect(game.passes_remaining).to eq 2
    end

    it "player can lose lives" do
      expect{ game.passes_remaining -= 1 }.to change{ game.passes_remaining }.by -1
    end
  end
end

require "game"

describe Game do
  let(:question) { double('question') }

  let(:game) {Game.new(question)}
  context "#create" do
    it "creates a new instance of game" do
      Game.create
      expect(Game.instance).to be_instance_of(Game)
    end
  end

  context "#reset" do
    it "removes instance of game" do
      Game.create
      Game.reset
      expect(Game.instance).to_not be_instance_of(Game)
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

    context "#question_number" do
      it "adds to question number" do
        expect{ game.question_number += 1 }.to change{ game.question_number }.by 1
      end
    end
  end
end

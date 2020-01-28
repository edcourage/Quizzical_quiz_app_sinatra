require "game"

describe Game do
  let(:question) { double('question') }

  let(:game) {Game.new(question)}


  context "#new_question" do
    it "returns a question" do
      allow(question).to receive(:random_question) {["The Plaka is the oldest quarter of which city?","Athens",["Athens", "Prague","Rome","Vienna"]]}
      expect(game.new_question).to eq ["The Plaka is the oldest quarter of which city?","Athens",["Athens", "Prague","Rome","Vienna"]]
    end


  end
end

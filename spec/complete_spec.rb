require 'completer'

describe Completer do
    let(:completer) do
            nonsense_dictionary = ["foo", "bar", "fling"]
            completer = Completer.new(nonsense_dictionary)
    end
    describe "finding complete words in the dictionary" do
        
        it "doesn't find words that aren't in the dictionary" do
            expect(completer.is_word?("baz")).to be false
        end

        it "finds words that are in the dictionary" do
            expect(completer.is_word?("foo")).to be true
        end
  end

    describe "finding possible completions" do
        it "can find a partial word" do
            expect(completer.possible_words_for("fo")).to eql ["foo"]
        end
        it "can find two possible completions" do
            expect(completer.possible_words_for("f")).to eql ["foo", "fling"]
        end
    
        
        it "returns a blank array for a blank input"
        it "returns a blank array if there are no completions"
        
    end


end
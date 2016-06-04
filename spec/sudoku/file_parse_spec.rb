RSpec.describe Sudoku::FileParse do
  subject { described_class.new('spec/fixtures/valid_complete.sudoku') }

  context "it parses the input correctly" do
    it 'returns parsed input of the correct size for a 9 x 9 grid' do
      expect(subject.input_string.size).to eq(81)
    end

    it 'returns an array as grid' do
      expect(subject.grid).to be_instance_of(Array)
    end
  end
end

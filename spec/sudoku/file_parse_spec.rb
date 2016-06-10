RSpec.describe Sudoku::FileParse do
  subject do
    file_contents = File.read('spec/fixtures/valid_complete.sudoku')
    described_class.new(file_contents)
  end

  context "it parses the input correctly" do
    it 'returns parsed input of the correct size for a 9 x 9 grid' do
      expect(subject.input_string.size).to eq(81)
    end

    it 'returns an array as grid' do
      expect(subject.grid).to be_instance_of(Array)
    end
  end
end

module Sudoku
  class FileParse
    attr_reader :grid, :input_string

    def initialize(filepath)
      input           = IO.read(filepath)
      @input_string   = remove_non_dots_or_digits(input)
      @grid           = to_grid(@input_string)
    end

    private

    def remove_non_dots_or_digits(input)
      input.gsub(/[^0-9]/, "")
    end

    def to_grid(sanitized_input)
      sanitized_input.chars.each_slice(9).to_a
    end
  end
end


module Sudoku
  class FileParse
    attr_reader :grid, :input_string

    def initialize(puzzle_string)
      @input_string   = remove_non_dots_or_digits(puzzle_string)
      @grid           = to_grid(@input_string)
    end

    def remove_non_dots_or_digits(puzzle_string)
      puzzle_string.gsub(/[^0-9]/, "")
    end

    def to_grid(sanitized_input)
      sanitized_input.chars.each_slice(9).to_a
    end
  end
end



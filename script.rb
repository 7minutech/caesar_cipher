require "pry-byebug"

LAST_LOWER_CHAR = 122
LAST_UPPER_CHAR = 90
FIRST_UPPER_CHAR = 65
FIRST_LOWER_CHAR = 97
def upper?(char)
  /[[:upper:]]/.match(char)
end

def not_alpha?(char)
  !/[[:alpha:]]/.match(char)
end

def get_shift_num(char, shift)
  char.ord + shift
end

def char_is_valid?(char_num, shift)
  char_num + shift < if upper?(char_num.chr)
                       # over Z
                       LAST_UPPER_CHAR
                     else
                       LAST_LOWER_CHAR
                     end
end

def get_valid_char(char, shift)
  # must add by start off by 1 to wrap around
  if upper?(char)
    ((get_shift_num(char, shift) % LAST_UPPER_CHAR) + (FIRST_UPPER_CHAR - 1)).chr
  else
    ((get_shift_num(char, shift) % LAST_LOWER_CHAR) + (FIRST_LOWER_CHAR - 1)).chr
  end
end

def shift_char(char, shift)
  new_char = get_shift_num(char, shift)
  if char_is_valid?(char.ord, shift)
    new_char.chr
  else
    get_valid_char(char, shift)
  end
end

def caesar_cipher(word, shift)
  word_arr = word.chars
  cipher = word_arr.map do |char|
    # no need to shift char that are not a-z
    if not_alpha?(char)
      char
    else
      shift_char(char, shift)
    end
  end
  cipher.join
end

p caesar_cipher("What a string!", 5)

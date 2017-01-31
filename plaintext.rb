# Write a function named “plaintext”, which takes a single parameter of a string encoded in this format. It should return the decoded word in string form. Demonstrate good coding practices (clear variable names, comments, etc).
# You may assume that coded strings are always legally encoded with this system. You may also assume that the digit for the number of characters to skip will just be a single digit, not a multi-digit number (that is, you’ll never need to skip more than 9 characters)—but we welcome solutions that can handle multi-digit characters to skip.

def plaintext(code)
  each_char = code.split("")
  # digits = [0,1,2,3,4,5,6,7,8,9]
  idx = 0
  encryption = ""

  while idx < each_char.length
    # check for digits 0-9 number
    if /\d/.match(each_char[idx])
        targetNum = each_char[idx].to_i + 1
        # push to encryption string
        encryption << each_char[targetNum + idx].to_s
    end
   # move to the next index and repeat
  idx += 1
  end
encryption
end


code = "0h2zyi2467"
plaintext(code)

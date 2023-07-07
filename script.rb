def caesar_cipher(decrypted, num)
  r = (0..decrypted.length - 1).to_a;
  puts r
  puts decrypted

  for ind in r do
    # puts decrypted[ind].ord
    new_char_number = decrypted[ind].ord
    new_char_number += num
    if (new_char_number >= 97 && new_char_number <= 122)
      if(new_char_number >  122)
        new_char_number -=26;
      end
    else
        if(new_char_number >  90)
          new_char_number -=26;
        end
    end
      decrypted[ind] = new_char_number.chr
  end
  return decrypted
end

# puts caesar_cipher("ZzaA", 1)
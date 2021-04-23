def caesar_cipher(text, shift)
    for i in 0...text.length do
        ascii = text[i].ord
        shifted_ascii = ascii + shift
        if ascii.between?(65,90)
            text[i] = (65 + (shifted_ascii - 65) % 26).chr
        elsif ascii.ord.between?(97, 122)
            text[i] = (97 + (shifted_ascii - 97) % 26).chr
        end
    end   
    return text
end

puts caesar_cipher("What a string!", 21)
puts caesar_cipher("What a string!", 5)


def caesar_cipher(frase, shift)

    alphabet = [*("a".."z")].reverse()


    frase.each_char do |c|

        if alphabet.include?(c.downcase)
            if c == c.upcase
                print alphabet[alphabet.find_index(c.downcase).to_i - shift].upcase
            else
                print alphabet[alphabet.find_index(c.downcase).to_i - shift]
            end
            
        else
            print c

        end

        
    end
end

caesar_cipher('What a String!', 5)
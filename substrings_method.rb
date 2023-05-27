def substrings(words,dictionary)

    result = Hash.new(0)
    dictionary.each do |word| 
        result[word]  += words.downcase.scan(word).length unless words.downcase.scan(word).length == 0
    end
    puts result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
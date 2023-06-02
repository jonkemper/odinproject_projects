def substrings(search_term, dictonary)
    search_results = Hash.new(0)
    
    dictonary.each do |word|
        search_term.split.each do |term_word|
            if term_word.downcase.include?(word)
                search_results[word] += 1
            end
        end
    end

    search_results
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
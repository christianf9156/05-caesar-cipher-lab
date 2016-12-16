def caesar_encode(str,off_set)
    alpha_bet = [*("a".."z")]
    num = off_set
    str.downcase.split(//).map do |letters|
        if alpha_bet.include?(letters)
            alpha_bet[(alpha_bet.index(letters)+num)%26]
        else
            letters
        end
    end.join("")
end



def caesar_decode(str,off_set)
  alpha_bet_lowcase = [*("a".."z")]
  alpha_bet_upcase = [*("A".."Z")]
    num = off_set
    str.split(//).map do |letters|
        if alpha_bet_lowcase.include?(letters)
            alpha_bet_lowcase[(alpha_bet_lowcase.index(letters.downcase)+num)%26]
        elsif alpha_bet_upcase.include?(letters)
          alpha_bet_upcase[(alpha_bet_upcase.index(letters.upcase)+num)%26]
        else
            letters
        end
    end.join("")
end
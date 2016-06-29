def caesar_cipher(phrase, shift)
	phrase.chars.map do |char|
		case char.ord
		when 65..90 then
			char = (char.ord + shift) > 90 ? char.ord + shift - 26 : char.ord + shift
			char = char.chr
		when 97..122 then
			char = (char.ord + shift) > 122 ? char.ord + shift - 26 : char.ord + shift
			char = char.chr
		else
			char
		end
		char
    end.join()
end

puts caesar_cipher("What a string!", 5)
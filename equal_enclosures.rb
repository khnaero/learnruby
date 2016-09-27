def enclosure_parentheses(str)
	i = 0
	str.each_char do |char|
		char == '(' ? i += 1 : i -= 1
		puts false if i < 0
	end
	puts i == 0
end

enclosure_parentheses("(()(())(()()))")
enclosure_parentheses(")(")


def enclosure_all(str)
	stack = []
	legend = { "(" => ")", "{" => "}", "[" => "]", "<" => ">"}
	
	if str.length.even?
		str.each_char do |char|
			stack << char
			if legend.keys.include?(stack[0])
				if stack.length >= 2
					if stack[-1] == legend[stack[-2]]
						stack.pop(2)
					end
				end
			else
				puts "false bad first"
				break
			end
		end
		puts "true" if stack.empty?
	else
		puts "false not even"
	end
end


enclosure_all("][{})")
enclosure_all("[]{()}")

# Chris' Python version
# def all_match(string):
#   things_to_match = ["()", "{}", "[]"]
#   openers = []
#   closers = {}

#   for thing in things_to_match:
#     opener, closer = list(thing)
#     openers.append(opener)
#     closers[closer] = opener

#   stack = []
#   for char in list(string):
#     if char in openers:
#       stack.append(char)
#     elif char in closers:
#       opener = closers[char]
#       if len(stack) == 0 or stack.pop() != opener:
#         return False

#   return len(stack) == 0


# print all_match("}(){")
# print all_match("({)}")
# print all_match("(a(b))()()")
# print all_match("(a(b)))()()")
# print all_match("(a{b})c[{]")
# print all_match("((((a{{{{b[[[[]c]]]}}d}}))))")
# print all_match("({[([[([{({[]})}])]])]})")
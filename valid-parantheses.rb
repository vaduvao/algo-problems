# O(n) time

def is_valid(s)
    while !s.empty?
        return false unless check_substring(s)
    end
    true
end

def check_substring(s)
    deleted = false
    ['()', '[]', '{}'].each do |type|
        if s.include?(type)
            s.gsub!(type, '')
            deleted = true
        end
    end

    deleted
end


# O(n) time | O(n) space
def is_valid(s)
    open_p = {
        '(' => ')',
        '[' => ']',
        '{' => '}',
    }
    close_p = {
        ')' => true,
        ']' => true,
        '}' => true,
    }
    stack = []

    s.each_char do |char|
        if open_p[char]
            stack.append(char)
        elsif close_p[char]
            if open_p[stack.last] == char
                stack.pop
            else
                return false
            end
        end
    end

    stack.empty? ? true : false
end
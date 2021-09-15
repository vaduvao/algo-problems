#O(n) time | O(1) space
def is_palindrome(s)
        
    conv_s = s.downcase.gsub(/[^0-9a-z]/i, '')
    i, j = 0, conv_s.length - 1
    
    while i < j
        if conv_s[i] == conv_s[j]
            i += 1
            j -= 1
        else
            return false
        end
    end
    true
end
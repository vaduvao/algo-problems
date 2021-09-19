#O(n) time | O(1) space
def is_palindrome(x)    
    return false if x < 0    
    string = x.to_s
    i, j = 0, string.length - 1
    
    while i < j
        if string[i] == string[j]
            i += 1
            j -= 1
        else
            return false
        end
    end 
    return true    
end
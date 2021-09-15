#O(n^2) time | O(1) space
def max_length_between_equal_characters(s)
    max = 0
    n = s.length - 1
    i, j = 0, n
    current_max = 0
    found = false
    
    while i < n
        while j > i
            if s[i] == s[j]
                current_max = j - i - 1 
                max = current_max if max < current_max
                found = true
            end 
            j -= 1
        end
        i += 1
        j = n
    end
    
    found ? max : -1
end
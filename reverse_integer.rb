#O(1) time | O(1) space
def reverse(x)
    
    if (-2 ** 31 <= x.to_s.reverse.to_i) && (x.to_s.reverse.to_i <= 2 ** 31 - 1)
        if x < 0             
            x = x.to_s.reverse.to_i * -1
        else
            x.to_s.reverse.to_i
        end
    else
        0
    end
end
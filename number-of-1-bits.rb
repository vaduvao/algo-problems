#O(n) time | O(1) space
def hamming_weight(n)
    sum = 0
    
    n.to_s(2).each_char do |i|
        if i == '1'
           sum += 1 
        end
    end    
    sum    
end
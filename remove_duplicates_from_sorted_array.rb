#O(n^2) time | O(1) space
def remove_duplicates(nums)
    return 0 if nums.empty?
    return 1 if nums.length == 1
    n = nums.length - 1
    i, j = 0, 1
    
    while i < n
        if i == j
            j += 1
            while (nums[i] == nums[j] || nums[j] == '_')
                nums[j] = '_'
                return i + 1 if j == n
                j += 1
            end
        else
            while (nums[i] == nums[j] || nums[j] == '_')
                nums[j] = '_'
                return i + 1 if j == n
                j += 1
            end
        end
        nums[i + 1] = nums[j] if nums[j] != '_' && i < n
        i += 1 
    end    
end

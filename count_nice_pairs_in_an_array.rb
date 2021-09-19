require 'pry'
# def count_nice_pairs(nums)
#     n = nums.length
#     nice_pairs = Hash.new(0)
    
#     nums = nums.map { |num| num - rev(num) }
#     nums.each do |num|
#         nice_pairs[num] += 1
#     end
#     binding.pry
#     nice_pairs.inject(0) { |acc, (k, v)| acc += calculate_pairs(v) }
#     binding.pry
    
# end
    
# def rev(int)
#     string = int.to_s
#     test = string.reverse     
#     test.to_i
# end

# def calculate_pairs(n)
#     ((1..n).inject(:*) || 1) / (2 * ((1..n-2).inject(:*) || 1))
# end
def count_nice_pairs(nums)
  y = Hash.new { |h, x| h[x] = x - x.to_s.reverse.to_i }
  res = 0
  c = Hash.new(0)
  for x in nums
    res += c[y[x]]
    binding.pry
    c[y[x]] += 1
  end
  binding.pry
  res % 1000000007
end
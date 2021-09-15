#O(n) time | O(1) space
def roman_to_int(s)
    roman_num = {
        'I' => 1,
        'V' => 5,
        'X' => 10,
        'L' => 50,
        'C' => 100,
        'D' => 500,
        'M' => 1000        
    }
    roman_num_special = {
        'IV' => 4,
        'IX' => 9,
        'XL' => 40,
        'XC' => 90,
        'CD' => 400,
        'CM' => 900
    }
    sum = 0
    i = 0
    
    while i < s.length
        case s[i]
            when 'I'
                if s[i + 1] == 'V'
                    sum += roman_num_special['IV']
                    i += 1
                elsif s[i + 1] == 'X'
                    sum += roman_num_special['IX']
                    i += 1
                else 
                    sum += roman_num[s[i]]
                end
            when 'V'
                sum += roman_num[s[i]]
            when 'X'
                if s[i + 1] == 'L'
                    sum += roman_num_special['XL']
                    i += 1
                elsif s[i + 1] == 'C'
                    sum += roman_num_special['XC']
                    i += 1
                else 
                    sum += roman_num[s[i]]
                end
            when 'L'
                sum += roman_num[s[i]]
            when 'C'
                if s[i + 1] == 'D'
                    sum += roman_num_special['CD']
                    i += 1
                elsif s[i + 1] == 'M'
                    sum += roman_num_special['CM']
                    i += 1
                else 
                    sum += roman_num[s[i]]
                end 
            when 'D'
                sum += roman_num[s[i]]
            when 'M'
                sum += roman_num[s[i]]
        end  
        i += 1
    end
    
    sum
end
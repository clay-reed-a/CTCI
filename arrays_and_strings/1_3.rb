"
A method to determine if one string 
is a permutation of the other...  

"

class String 
  def permutation_of? other
    self.split('').sort ==
    other.split('').sort 
  end 
end 

if 'life'.permutation_of?('file') && 
  'file'.permutation_of?('lief') &&
!'lief'.permutation_of?('death')
  puts "\033[0;32mGood\033[0m"
else 
  puts "\033[0;31mBad\033[0m"
end  
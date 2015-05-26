require 'pry'

# Add Two Numbers      # 
# w/o the Add Operator # 

"
The pattern here, 
once one has peeked at an answer,
is as simple 
as it is unforgettable." 

def add(a, b)
  return b if a.zero? 
  return a if b.zero? 
  sum = a ^ b            # the sum is the XOR of a and b 
  carry = (a & b) << 1   # the carry is the AND of a and b, right-shifted,  
  return add(sum, carry) # and we add those via the same pattern, 
end                      # basically until there is no more carry... 

binding.pry # This will work.   

"
However, it is not immediately easy to understand why it works.
Even by writing it all out: 
"  
3 ^  2 == 1  # 0000_0011 ^ 0000_0010 == 0000_0001  
3 &  2 == 2  # 0000_0011 & 0000_0010 == 0000_0010 
2 << 1 == 4  # 0000_0010 << 1        == 0000_0100 
1 ^  4 == 5  # 0000_0001 ^ 0000_0100 == 0000_0101 
1 &  4 == 0  # 0000_0001 & 0000_0100 == 0000_0000, no alignment of bits 
0 << 1 == 0  # no set bits, no difference, 
             # so b == 0, a base case, the next recursion will return a, 5

"
This explination from Stackoverflow helped me: 
http://stackoverflow.com/a/9071437/3390483"

#== 4 Possibilities for Each Bit: ==# 
                
#              XOR can get us... 
#   0 + 0 == 0  
#   1 + 0 == 1 
#   0 + 1 == 1 

#              but AND can get us:  
#   1 + 1 == 0 w/ carry (think of it as 10)
#         
#              All 1 + 1s will be 1 w/ AND. 
#              If we right-shift these 1s, those will then work as carries. 
#              All the bits saved in sum will be ignored,
#              so we can add the two together w/o repeats
#              until there is no carry. 

"
This is similar to how we would 
add large numbers by hand,
except more broken down." 

      # All at Once # 

 1111     # w/ carries 
  1245 + 
  9865 == 
 11110 

      # Broken Down # 

        # pretend carries don't exist 
  1245 + 
  9865 == 
  0000 

       # add carries we ignored to the answer 
  0000 + 
 11110 ==   
 11110
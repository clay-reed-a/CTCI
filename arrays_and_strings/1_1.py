"""An algorithm to determine whether 
a string has all unique characters""" 

def all_unique(string): 
  seens = set()
  for char in string:
    if char in seens:
      return False
    else:
      seens.add(char)

  return True 


"""What if you could not use additional data structures?""" 

def all_unique_in_place(string):
  for idx, char in enumerate(string):
    for other_char in string[idx+1:]:
      if char == other_char:
        return False 

  return True 

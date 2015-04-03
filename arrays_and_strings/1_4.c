// Replace spaces in a string w/ '%20'
// There is additional space at the end of the string 
// You are given the "true" length of the string 

void url_encode_spaces(char* str, int truth)
{
  char space[] = {'%', '2', '0'};
  int length = strlen(str); 
  int j; 
  int i;

  for (i = truth-1; i >= 0; i--)
  {
    if (str[i] == ' ') 
    {
      for (j = length; j >= i; j--) 
      {
        str[j+2] = str[j];
      }
      str[i] = space[0];
      str[i+1] = space[1];
      str[i+2] = space[2]; 
    }
  }
}

int main(void)
{
  char hello[] = {
    'H', 'i', ',', ' ', 
    'I', '\'', 'm', ' ', 
    'C', 'l', 'a', 'y', 't', 'o', 'n', '!', 
' ', ' ', ' ', ' ', 
'\0'};
  int truth = 16;

  url_encode_spaces(hello, truth);

  printf("%s\n", hello);

  return 0;
}
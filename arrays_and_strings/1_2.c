// A function which reverses 
// a null-terminated string

void reverse(char* str){
  int length = strlen(str);
  int i; 
  int I; 

  char c; 

  for(i = 0; i < length/2; i++)
  {
    I = length-i-1; 
    c = str[i];
    str[i] = str[I];
    str[I] = c;
  }
}

int main(void)
{
  char abc[] = {
    'a', 'b', 'c', 
'\0'};
  char clay[] = {
    'c', 'l', 'a', 'y', 't', 'o', 'n', 
'\0'};

  printf("%s\n", abc);
  reverse(abc);
  printf("%s\n", abc);

  printf("%s\n", clay);
  reverse(clay);
  printf("%s\n", clay);

  return 0; 
}
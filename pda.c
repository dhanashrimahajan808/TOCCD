#include<stdio.h>
#include<string.h>
int main()
{
char tape[100];
int left , right;
int palindrome=1;
printf("Enter a string :");
scanf("%99s",tape);
left=0;
right=strlen(tape)-1;
while(left<right)
{
if(tape[left] != tape[right])
{
palindrome=0;
break;
}
left++;
right--;
}
if(palindrome)
printf("String accpeted(Palindrome)\n");
else
printf("String rejected(Not a Palindrome)\n");
return 0;
}


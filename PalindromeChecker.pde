public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}

public boolean palindrome(String word)
{
  String backwards = noCapitals(onlyLetters(word));
  if(backwards.equals(reverse(backwards)))
    return true;
  else
    return false;
}

public String reverse(String str)
{
    String sNew = new String();
    //your code here
    for(int i = str.length()-1; i >= 0; i--)
      sNew = sNew + str.substring(i,i+1);
    return sNew;
}

public String onlyLetters(String sString){
  String result = new String();
  for(int i = 0; i < sString.length(); i++)
    if(Character.isLetter(sString.charAt(i)))
      result = result + sString.substring(i,i+1);
  return result;
}

public String noCapitals(String sWord){
  return sWord.toLowerCase();
}

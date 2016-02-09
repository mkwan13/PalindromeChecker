public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(letters(lines[i]))==true)
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
  String reverse = "";
  for(int i=word.length(); i>=0 ; i--)
  {
    if(i==word.length())
    {
      reverse = reverse.concat(word.substring(i));
    }
    else
    {
      reverse = reverse.concat(word.substring(i,i+1));
    }
  }
  return reverse.equals(word);
}

public String letters(String word)
{
  String s = "";
  for(int i=0; i<word.length(); i++)
  {
    if(Character.isLetter(word.charAt(i)))
      s = s.concat(word.substring(i,i+1));
  }
  return s.toLowerCase();
}
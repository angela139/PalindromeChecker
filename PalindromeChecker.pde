public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  // empty string to put modified version of word
  String newWord = "";
  // makes new word without punctuation marks or letters
  for (int i = 0; i < word.length(); i++){
    if (Character.isLetter(word.charAt(i)) == true){
      newWord += word.substring(i, i+1);
    }
  }
  // checks palindrome while ignoring uppercase/lowercase
  if (reverse(newWord).equalsIgnoreCase(newWord)){
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for (int i = str.length(); i > 0; i--){
        sNew += str.substring(i - 1, i);
  }
    return sNew;
}

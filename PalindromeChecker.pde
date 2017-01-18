//make MULTIPLE_LINES true if the file is currently on multiple lines but would like to see if whole is palindrome
public final static boolean MULTIPLE_LINES=true;

public void setup()
{
  String lines[] = loadStrings("worldsLongestPalindrome.txt");
  println("there are " + lines.length + " lines");
  if(MULTIPLE_LINES){
    boolean isPalindrome=palindrome(rewrite(removeLineBreaks(lines)));
    println(removeLineBreaks(lines)+(isPalindrome?(" IS a palindrome."):(" is NOT a palindrome.")));
  }
  else{
    for (int i=0; i<lines.length; i++) 
      if(palindrome(rewrite(lines[i]))==true)
        println(lines[i] + " IS a palidrome.");
      else
        println(lines[i] + " is NOT a palidrome.");
  }
    exit();
}

public boolean palindrome(String word)
{
  for(int i = 0; i<(int)(word.length()/2); i++)
    if(word.charAt(i)!=word.charAt(word.length()-1-i)) return false;
  return true;
}

public String rewrite(String str)
{//I wish curly braces didn't exist
  String sNew = new String("");
  for(int i=0; i<str.length(); i++)
    if(Character.isLetter(str.charAt(i)))
      sNew+=str.charAt(i);
  return sNew.toLowerCase();
}

public String removeLineBreaks(String[] lines){
  String temp="";
  for(String line:lines)
    temp+=line;
  return temp;
}



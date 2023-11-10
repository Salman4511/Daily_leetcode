class Solution {
  int lengthOfLastWord(String s) {
    s = s.trim();
    List<String> res = s.split(" ");
    String l = res.last;
    int i = l.length;
    return i;
  }
}

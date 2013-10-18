package com.google.a.a;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class bn
{
  private final Map<Character, String> a = new HashMap();
  private int b = -1;

  public final bn a(char paramChar, String paramString)
  {
    this.a.put(Character.valueOf(paramChar), paramString);
    if (paramChar > this.b)
      this.b = paramChar;
    return this;
  }

  public final char[][] a()
  {
    char[][] arrayOfChar = new char[1 + this.b][];
    Iterator localIterator = this.a.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      arrayOfChar[((Character)localEntry.getKey()).charValue()] = ((String)localEntry.getValue()).toCharArray();
    }
    return arrayOfChar;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.bn
 * JD-Core Version:    0.6.2
 */
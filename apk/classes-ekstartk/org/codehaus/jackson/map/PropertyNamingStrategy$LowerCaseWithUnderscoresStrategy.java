package org.codehaus.jackson.map;

public class PropertyNamingStrategy$LowerCaseWithUnderscoresStrategy extends PropertyNamingStrategy.PropertyNamingStrategyBase
{
  public String translate(String paramString)
  {
    if (paramString == null)
      return paramString;
    int i = paramString.length();
    StringBuilder localStringBuilder = new StringBuilder(i * 2);
    int j = 0;
    int k = 0;
    int m = 0;
    label31: char c1;
    int i1;
    int n;
    char c2;
    if (j < i)
    {
      c1 = paramString.charAt(j);
      if ((j <= 0) && (c1 == '_'))
        break label163;
      if (Character.isUpperCase(c1))
      {
        if ((k == 0) && (m > 0) && (localStringBuilder.charAt(m - 1) != '_'))
        {
          localStringBuilder.append('_');
          m++;
        }
        char c3 = Character.toLowerCase(c1);
        i1 = 1;
        n = m;
        c2 = c3;
        label116: localStringBuilder.append(c2);
        m = n + 1;
      }
    }
    while (true)
    {
      j++;
      k = i1;
      break label31;
      n = m;
      c2 = c1;
      i1 = 0;
      break label116;
      if (m <= 0)
        break;
      return localStringBuilder.toString();
      label163: i1 = k;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.PropertyNamingStrategy.LowerCaseWithUnderscoresStrategy
 * JD-Core Version:    0.6.2
 */
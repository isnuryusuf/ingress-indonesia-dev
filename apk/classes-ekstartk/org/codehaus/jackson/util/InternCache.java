package org.codehaus.jackson.util;

import java.util.LinkedHashMap;
import java.util.Map.Entry;

public final class InternCache extends LinkedHashMap<String, String>
{
  public static final InternCache instance = new InternCache();

  private InternCache()
  {
    super(192, 0.8F, true);
  }

  public final String intern(String paramString)
  {
    try
    {
      String str = (String)get(paramString);
      if (str == null)
      {
        str = paramString.intern();
        put(str, str);
      }
      return str;
    }
    finally
    {
    }
  }

  protected final boolean removeEldestEntry(Map.Entry<String, String> paramEntry)
  {
    return size() > 192;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.util.InternCache
 * JD-Core Version:    0.6.2
 */
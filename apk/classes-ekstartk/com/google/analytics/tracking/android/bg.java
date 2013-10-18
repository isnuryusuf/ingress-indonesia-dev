package com.google.analytics.tracking.android;

import java.util.HashMap;
import java.util.Map;

final class bg
{
  private Map<String, String> a = new HashMap();
  private Map<String, String> b = new HashMap();

  public final void a()
  {
    try
    {
      this.a.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(String paramString1, String paramString2)
  {
    try
    {
      this.a.put(paramString1, paramString2);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(Map<String, String> paramMap, Boolean paramBoolean)
  {
    try
    {
      if (paramBoolean.booleanValue())
        this.a.putAll(paramMap);
      while (true)
      {
        return;
        this.b.putAll(paramMap);
      }
    }
    finally
    {
    }
  }

  public final Map<String, String> b()
  {
    try
    {
      HashMap localHashMap = new HashMap(this.b);
      localHashMap.putAll(this.a);
      return localHashMap;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void b(String paramString1, String paramString2)
  {
    try
    {
      this.b.put(paramString1, paramString2);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.analytics.tracking.android.bg
 * JD-Core Version:    0.6.2
 */
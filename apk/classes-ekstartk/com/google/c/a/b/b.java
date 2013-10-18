package com.google.c.a.b;

import android.util.Log;

public final class b extends RuntimeException
{
  public b()
  {
    Log.w("MAPS", "Created AssertionError");
  }

  public b(String paramString)
  {
    super(paramString);
    Log.w("MAPS", "Created AssertionError:" + paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.c.a.b.b
 * JD-Core Version:    0.6.2
 */
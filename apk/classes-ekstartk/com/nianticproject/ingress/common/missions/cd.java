package com.nianticproject.ingress.common.missions;

import com.google.a.a.ag;
import com.google.a.c.hc;
import com.nianticproject.ingress.common.ui.widget.z;
import java.util.Map;

public final class cd
{
  private final Map<String, ce> a = hc.c();
  private final String b;
  private final String c;
  private final z d;

  public cd(cd paramcd, String paramString)
  {
    this.a.putAll(paramcd.a);
    this.b = paramString;
    this.c = paramcd.c;
    this.d = paramcd.d;
  }

  public cd(String paramString, z paramz)
  {
    this.b = paramString;
    this.c = paramString;
    this.d = paramz;
  }

  final void a(String paramString1, String paramString2, z paramz, ck paramck)
  {
    this.a.put(paramString1, new ce(paramString2, paramz, paramck));
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof cd;
    boolean bool2 = false;
    if (bool1)
    {
      cd localcd = (cd)paramObject;
      boolean bool3 = ag.a(this.a, localcd.a);
      bool2 = false;
      if (bool3)
      {
        boolean bool4 = ag.a(this.b, localcd.b);
        bool2 = false;
        if (bool4)
        {
          boolean bool5 = ag.a(this.c, localcd.c);
          bool2 = false;
          if (bool5)
            bool2 = true;
        }
      }
    }
    return bool2;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.cd
 * JD-Core Version:    0.6.2
 */
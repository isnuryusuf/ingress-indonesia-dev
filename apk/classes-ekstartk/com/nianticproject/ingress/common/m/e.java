package com.nianticproject.ingress.common.m;

import com.nianticproject.ingress.common.q;
import com.nianticproject.ingress.common.s.c;
import com.nianticproject.ingress.common.u.b;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.knobs.ClientFeatureKnobBundle;
import com.nianticproject.ingress.shared.invites.InviteInfo;
import com.nianticproject.ingress.shared.rpc.o;

public class e
  implements d
{
  private final aa a = new aa(e.class);
  private int b = 0;
  private boolean c = false;
  private final a d = new a(paramb, paramString, this);
  private boolean e = false;
  private boolean f = false;

  public e(b paramb, String paramString)
  {
  }

  public final void a(int paramInt)
  {
    int i = c.c();
    try
    {
      this.b = paramInt;
      if (paramInt > i)
        this.e = true;
      this.f = true;
      c.a(paramInt);
      return;
    }
    finally
    {
    }
  }

  public final void a(int paramInt, String paramString)
  {
  }

  public final void a(int paramInt, String paramString, o paramo)
  {
  }

  public final void a(InviteInfo paramInviteInfo)
  {
    a(paramInviteInfo.a());
    try
    {
      this.c = false;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean a()
  {
    boolean bool1 = false;
    if (!q.f().h());
    while (true)
    {
      return bool1;
      if (this.b <= 0)
        return false;
      long l1 = c.e();
      long l2 = q.f().i();
      try
      {
        if (!this.e)
        {
          boolean bool2 = l1 < l2;
          bool1 = false;
          if (!bool2);
        }
        else
        {
          this.e = false;
          bool1 = true;
        }
        if (!bool1)
          continue;
        c.d();
        return bool1;
      }
      finally
      {
      }
    }
  }

  public final boolean b()
  {
    return this.f;
  }

  public final void c()
  {
    try
    {
      this.c = false;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void d()
  {
    try
    {
      if (this.c)
        return;
      this.c = true;
      this.d.a();
      return;
    }
    finally
    {
    }
  }

  public final int e()
  {
    return this.b;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.m.e
 * JD-Core Version:    0.6.2
 */
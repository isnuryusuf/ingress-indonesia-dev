package com.nianticproject.ingress.n;

import android.content.Context;
import android.support.v4.app.Fragment;

final class z
{
  private final Context a;
  private final ab b;

  public z(Context paramContext, ab paramab)
  {
    this.a = paramContext;
    this.b = paramab;
  }

  private String a(int paramInt, Object[] paramArrayOfObject)
  {
    return this.a.getString(paramInt, paramArrayOfObject);
  }

  public final Fragment a(ae paramae)
  {
    switch (aa.a[paramae.ordinal()])
    {
    default:
      return null;
    case 1:
      return c.a(null);
    case 2:
      return c.a(a(2131296377, new Object[0]));
    case 3:
      return h.a(a(2131296296, new Object[0]), false);
    case 4:
      return h.a(a(2131296299, new Object[0]), true);
    case 5:
      return m.a(a(2131296297, new Object[0]));
    case 6:
      return m.a(a(2131296298, new Object[0]));
    case 7:
      return f.a(this.b.b());
    case 8:
      return d.a(this.b.b());
    case 9:
      return y.a(a(2131296311, new Object[0]), a(2131296310, new Object[0]));
    case 10:
      return y.a(a(2131296312, new Object[0]), a(2131296310, new Object[0]));
    case 11:
      return aj.F();
    case 12:
      return a.F();
    case 13:
      return y.a(a(2131296313, new Object[0]), a(2131296310, new Object[0]));
    case 14:
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = com.nianticproject.ingress.common.s.c.b(null);
      return y.a(a(2131296314, arrayOfObject), a(2131296310, new Object[0]));
    case 15:
      return j.a(this.b.c());
    case 16:
      return y.a(a(2131296303, new Object[0]), a(2131296316, new Object[0]));
    case 17:
      return y.a(a(2131296304, new Object[0]), a(2131296310, new Object[0]));
    case 18:
      return y.a(a(2131296302, new Object[0]), a(2131296310, new Object[0]));
    case 19:
      return y.a(a(2131296300, new Object[0]), a(2131296310, new Object[0]));
    case 20:
      return y.a(a(2131296301, new Object[0]), a(2131296310, new Object[0]));
    case 21:
      return y.a(a(2131296305, new Object[0]), a(2131296310, new Object[0]));
    case 22:
      return af.F();
    case 23:
      return m.a(a(2131296438, new Object[0]));
    case 24:
      return n.F();
    case 25:
    }
    return y.a(a(2131296440, new Object[0]), a(2131296310, new Object[0]));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.n.z
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.common.model.a;

import com.google.a.a.ab;
import com.google.a.a.an;
import com.google.a.a.bb;
import java.util.List;

public abstract class j<T>
{
  private static String a = ":delim:";
  private static final bb b = bb.a(":delim:");
  private static final ab c = ab.a(a);
  private final T d;
  private final long e;
  private boolean f;

  public j(T paramT, long paramLong)
  {
    this.d = paramT;
    this.e = paramLong;
    this.f = false;
  }

  public j(String paramString)
  {
    List localList = b.b(paramString);
    if (localList.size() <= 1)
      throw new IllegalArgumentException("Did not contain a delimiter");
    String str = (String)localList.get(0);
    this.e = Long.parseLong((String)localList.get(1));
    this.d = a(str);
    if (localList.size() > 2)
    {
      this.f = Boolean.parseBoolean((String)localList.get(2));
      return;
    }
    this.f = false;
  }

  public final T a()
  {
    return this.d;
  }

  protected abstract T a(String paramString);

  public final long b()
  {
    return this.e;
  }

  public final boolean c()
  {
    return this.f;
  }

  public final void d()
  {
    this.f = true;
  }

  public final String e()
  {
    String str = this.d.toString();
    if (str.indexOf(a) == -1);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "Value string must not contain the DELIMETER string");
      ab localab = c;
      Long localLong = Long.valueOf(this.e);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Boolean.TRUE;
      return localab.a(str, localLong, arrayOfObject);
    }
  }

  public String toString()
  {
    String str = this.d.toString();
    if (str.indexOf(a) == -1);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "Value string must not contain the DELIMETER string");
      ab localab = c;
      Long localLong = Long.valueOf(this.e);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Boolean.valueOf(this.f);
      return localab.a(str, localLong, arrayOfObject);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.model.a.j
 * JD-Core Version:    0.6.2
 */
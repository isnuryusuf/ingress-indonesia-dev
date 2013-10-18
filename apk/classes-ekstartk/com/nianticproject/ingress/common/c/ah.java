package com.nianticproject.ingress.common.c;

public abstract class ah
  implements Comparable<ah>
{
  private static int a;
  protected final int d;

  protected ah()
  {
    int i = a;
    a = i + 1;
    this.d = i;
  }

  protected final int a(int paramInt)
  {
    if (paramInt > 15)
      paramInt = 15;
    return (paramInt << 16) + (0xFFFF & this.d);
  }

  protected abstract String a();

  protected abstract void b();

  protected int c()
  {
    return a(5);
  }

  protected boolean d()
  {
    return true;
  }

  protected String e()
  {
    return "";
  }

  protected void f()
  {
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(c());
    arrayOfObject[1] = a();
    arrayOfObject[2] = e();
    return String.format("{%d %s %s}", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.c.ah
 * JD-Core Version:    0.6.2
 */
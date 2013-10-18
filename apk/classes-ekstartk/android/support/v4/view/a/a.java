package android.support.v4.view.a;

import android.os.Build.VERSION;

public final class a
{
  private static final c a = new e();
  private final Object b;

  static
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new d();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new b();
      return;
    }
  }

  public a(Object paramObject)
  {
    this.b = paramObject;
  }

  public final Object a()
  {
    return this.b;
  }

  public final void a(int paramInt)
  {
    a.a(this.b, paramInt);
  }

  public final void a(CharSequence paramCharSequence)
  {
    a.a(this.b, paramCharSequence);
  }

  public final void a(boolean paramBoolean)
  {
    a.a(this.b, paramBoolean);
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    a locala;
    do
    {
      do
      {
        return true;
        if (paramObject == null)
          return false;
        if (getClass() != paramObject.getClass())
          return false;
        locala = (a)paramObject;
        if (this.b != null)
          break;
      }
      while (locala.b == null);
      return false;
    }
    while (this.b.equals(locala.b));
    return false;
  }

  public final int hashCode()
  {
    if (this.b == null)
      return 0;
    return this.b.hashCode();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.a.a
 * JD-Core Version:    0.6.2
 */
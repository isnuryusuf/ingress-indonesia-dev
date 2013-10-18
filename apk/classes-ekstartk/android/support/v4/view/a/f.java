package android.support.v4.view.a;

import android.os.Build.VERSION;
import java.util.List;

public final class f
{
  private static final g a = new j();
  private final Object b;

  static
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new h();
      return;
    }
  }

  public f()
  {
    this.b = a.a(this);
  }

  public f(Object paramObject)
  {
    this.b = paramObject;
  }

  public static a b()
  {
    return null;
  }

  public static boolean c()
  {
    return false;
  }

  public static List<a> d()
  {
    return null;
  }

  public final Object a()
  {
    return this.b;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.a.f
 * JD-Core Version:    0.6.2
 */
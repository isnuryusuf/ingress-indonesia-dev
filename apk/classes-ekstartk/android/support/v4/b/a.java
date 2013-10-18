package android.support.v4.b;

import android.os.Build.VERSION;
import android.os.Parcelable.Creator;

public final class a
{
  public static <T> Parcelable.Creator<T> a(c<T> paramc)
  {
    if (Build.VERSION.SDK_INT >= 13)
      new d(paramc);
    return new b(paramc);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.b.a
 * JD-Core Version:    0.6.2
 */
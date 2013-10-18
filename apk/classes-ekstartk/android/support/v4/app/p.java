package android.support.v4.app;

import android.os.Parcelable;
import android.support.v4.view.v;
import android.view.View;
import android.view.ViewGroup;

public abstract class p extends v
{
  private final j a;
  private s b = null;
  private Fragment c = null;

  public p(j paramj)
  {
    this.a = paramj;
  }

  private static String a(int paramInt, long paramLong)
  {
    return "android:switcher:" + paramInt + ":" + paramLong;
  }

  public abstract Fragment a(int paramInt);

  public final Object a(ViewGroup paramViewGroup, int paramInt)
  {
    if (this.b == null)
      this.b = this.a.a();
    long l = paramInt;
    String str = a(paramViewGroup.getId(), l);
    Fragment localFragment = this.a.a(str);
    if (localFragment != null)
      this.b.d(localFragment);
    while (true)
    {
      if (localFragment != this.c)
      {
        localFragment.a(false);
        localFragment.b(false);
      }
      return localFragment;
      localFragment = a(paramInt);
      this.b.a(paramViewGroup.getId(), localFragment, a(paramViewGroup.getId(), l));
    }
  }

  public final void a()
  {
    if (this.b != null)
    {
      this.b.b();
      this.b = null;
      this.a.b();
    }
  }

  public final void a(int paramInt, Object paramObject)
  {
    if (this.b == null)
      this.b = this.a.a();
    this.b.c((Fragment)paramObject);
  }

  public final void a(Parcelable paramParcelable, ClassLoader paramClassLoader)
  {
  }

  public final void a(Object paramObject)
  {
    Fragment localFragment = (Fragment)paramObject;
    if (localFragment != this.c)
    {
      if (this.c != null)
      {
        this.c.a(false);
        this.c.b(false);
      }
      if (localFragment != null)
      {
        localFragment.a(true);
        localFragment.b(true);
      }
      this.c = localFragment;
    }
  }

  public final boolean a(View paramView, Object paramObject)
  {
    return ((Fragment)paramObject).p() == paramView;
  }

  public final Parcelable b()
  {
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.p
 * JD-Core Version:    0.6.2
 */
package android.support.v4.view;

import android.database.DataSetObserver;

final class y extends DataSetObserver
  implements ay, az
{
  private int b;

  private y(PagerTitleStrip paramPagerTitleStrip)
  {
  }

  public final void a(int paramInt)
  {
    if (this.b == 0)
      this.a.a(this.a.a.b(), this.a.a.a());
  }

  public final void a(int paramInt, float paramFloat)
  {
    if (paramFloat > 0.5F)
      paramInt++;
    this.a.a(paramInt, paramFloat, false);
  }

  public final void a(v paramv1, v paramv2)
  {
    this.a.a(paramv1, paramv2);
  }

  public final void b(int paramInt)
  {
    this.b = paramInt;
  }

  public final void onChanged()
  {
    this.a.a(this.a.a.b(), this.a.a.a());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.y
 * JD-Core Version:    0.6.2
 */
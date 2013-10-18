package android.support.v4.view;

import android.database.DataSetObserver;

final class ba extends DataSetObserver
{
  private ba(ViewPager paramViewPager)
  {
  }

  public final void onChanged()
  {
    this.a.c();
  }

  public final void onInvalidated()
  {
    this.a.c();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.ba
 * JD-Core Version:    0.6.2
 */
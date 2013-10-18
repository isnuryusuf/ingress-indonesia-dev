package android.support.v4.view;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

final class ax extends a
{
  ax(ViewPager paramViewPager)
  {
  }

  public final void a(View paramView, android.support.v4.view.a.a parama)
  {
    int i = 1;
    super.a(paramView, parama);
    parama.a(ViewPager.class.getName());
    if ((ViewPager.a(this.b) != null) && (ViewPager.a(this.b).c() > i));
    while (true)
    {
      parama.a(i);
      if ((ViewPager.a(this.b) != null) && (ViewPager.b(this.b) >= 0) && (ViewPager.b(this.b) < -1 + ViewPager.a(this.b).c()))
        parama.a(4096);
      if ((ViewPager.a(this.b) != null) && (ViewPager.b(this.b) > 0) && (ViewPager.b(this.b) < ViewPager.a(this.b).c()))
        parama.a(8192);
      return;
      int j = 0;
    }
  }

  public final boolean a(View paramView, int paramInt, Bundle paramBundle)
  {
    if (super.a(paramView, paramInt, paramBundle))
      return true;
    switch (paramInt)
    {
    default:
      return false;
    case 4096:
      if ((ViewPager.a(this.b) != null) && (ViewPager.b(this.b) >= 0) && (ViewPager.b(this.b) < -1 + ViewPager.a(this.b).c()))
      {
        this.b.a(1 + ViewPager.b(this.b));
        return true;
      }
      return false;
    case 8192:
    }
    if ((ViewPager.a(this.b) != null) && (ViewPager.b(this.b) > 0) && (ViewPager.b(this.b) < ViewPager.a(this.b).c()))
    {
      this.b.a(-1 + ViewPager.b(this.b));
      return true;
    }
    return false;
  }

  public final void d(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.d(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(ViewPager.class.getName());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.ax
 * JD-Core Version:    0.6.2
 */
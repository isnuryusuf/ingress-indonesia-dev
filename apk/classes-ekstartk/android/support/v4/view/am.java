package android.support.v4.view;

import android.view.View;
import android.view.View.AccessibilityDelegate;

class am extends al
{
  public final void a(View paramView, a parama)
  {
    paramView.setAccessibilityDelegate((View.AccessibilityDelegate)parama.a());
  }

  public final boolean a(View paramView, int paramInt)
  {
    return paramView.canScrollHorizontally(paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.am
 * JD-Core Version:    0.6.2
 */
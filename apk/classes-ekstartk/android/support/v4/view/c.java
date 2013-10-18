package android.support.v4.view;

import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

final class c
  implements j
{
  c(b paramb, a parama)
  {
  }

  public final void a(View paramView, int paramInt)
  {
    a.a(paramView, paramInt);
  }

  public final void a(View paramView, Object paramObject)
  {
    this.a.a(paramView, new android.support.v4.view.a.a(paramObject));
  }

  public final boolean a(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return a.b(paramView, paramAccessibilityEvent);
  }

  public final boolean a(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    return a.a(paramViewGroup, paramView, paramAccessibilityEvent);
  }

  public final void b(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    this.a.d(paramView, paramAccessibilityEvent);
  }

  public final void c(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    a.c(paramView, paramAccessibilityEvent);
  }

  public final void d(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    a.a(paramView, paramAccessibilityEvent);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.c
 * JD-Core Version:    0.6.2
 */
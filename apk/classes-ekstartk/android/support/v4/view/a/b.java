package android.support.v4.view.a;

import android.view.accessibility.AccessibilityNodeInfo;

class b extends e
{
  public final void a(Object paramObject, int paramInt)
  {
    ((AccessibilityNodeInfo)paramObject).addAction(paramInt);
  }

  public final void a(Object paramObject, CharSequence paramCharSequence)
  {
    ((AccessibilityNodeInfo)paramObject).setClassName(paramCharSequence);
  }

  public final void a(Object paramObject, boolean paramBoolean)
  {
    ((AccessibilityNodeInfo)paramObject).setScrollable(paramBoolean);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.a.b
 * JD-Core Version:    0.6.2
 */
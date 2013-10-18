package android.support.v4.view;

import android.os.Bundle;
import android.view.View;
import android.view.View.AccessibilityDelegate;
import android.view.accessibility.AccessibilityNodeProvider;

final class e extends b
{
  public final android.support.v4.view.a.f a(Object paramObject, View paramView)
  {
    AccessibilityNodeProvider localAccessibilityNodeProvider = ((View.AccessibilityDelegate)paramObject).getAccessibilityNodeProvider(paramView);
    if (localAccessibilityNodeProvider != null)
      return new android.support.v4.view.a.f(localAccessibilityNodeProvider);
    return null;
  }

  public final Object a(a parama)
  {
    return new l(new f(this, parama));
  }

  public final boolean a(Object paramObject, View paramView, int paramInt, Bundle paramBundle)
  {
    return ((View.AccessibilityDelegate)paramObject).performAccessibilityAction(paramView, paramInt, paramBundle);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.e
 * JD-Core Version:    0.6.2
 */
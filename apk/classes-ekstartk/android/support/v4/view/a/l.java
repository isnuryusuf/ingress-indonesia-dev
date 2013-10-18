package android.support.v4.view.a;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;

final class l extends AccessibilityNodeProvider
{
  l(m paramm)
  {
  }

  public final AccessibilityNodeInfo createAccessibilityNodeInfo(int paramInt)
  {
    this.a.c();
    return null;
  }

  public final List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String paramString, int paramInt)
  {
    return this.a.b();
  }

  public final boolean performAction(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    return this.a.a();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.a.l
 * JD-Core Version:    0.6.2
 */
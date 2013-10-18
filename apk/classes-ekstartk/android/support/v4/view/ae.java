package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.VelocityTracker;

public final class ae
{
  static final ah a = new af();

  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new ag();
      return;
    }
  }

  public static float a(VelocityTracker paramVelocityTracker, int paramInt)
  {
    return a.a(paramVelocityTracker, paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.ae
 * JD-Core Version:    0.6.2
 */
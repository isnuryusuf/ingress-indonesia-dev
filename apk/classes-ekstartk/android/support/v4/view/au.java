package android.support.v4.view;

import android.view.animation.Interpolator;

final class au
  implements Interpolator
{
  public final float getInterpolation(float paramFloat)
  {
    float f = paramFloat - 1.0F;
    return 1.0F + f * (f * (f * (f * f)));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.view.au
 * JD-Core Version:    0.6.2
 */
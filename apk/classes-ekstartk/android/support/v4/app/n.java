package android.support.v4.app;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class n
  implements Animation.AnimationListener
{
  n(k paramk, Fragment paramFragment)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    if (this.a.k != null)
    {
      this.a.k = null;
      this.b.a(this.a, this.a.l, 0, 0, false);
    }
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.n
 * JD-Core Version:    0.6.2
 */
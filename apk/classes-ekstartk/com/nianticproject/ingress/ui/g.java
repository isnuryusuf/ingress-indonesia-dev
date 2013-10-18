package com.nianticproject.ingress.ui;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.TranslateAnimation;
import com.nianticproject.ingress.ec;

public final class g
  implements Animation.AnimationListener
{
  private final View a;
  private final TranslateAnimation b;
  private final TranslateAnimation c;
  private i d;
  private i e;

  public g(View paramView)
  {
    this.a = paramView;
    this.b = new TranslateAnimation(1, 1.0F, 1, 0.0F, 1, 0.0F, 1, 0.0F);
    this.b.setDuration(250L);
    this.b.setAnimationListener(this);
    this.c = new TranslateAnimation(1, 0.0F, 1, 1.0F, 1, 0.0F, 1, 0.0F);
    this.c.setDuration(250L);
    this.c.setAnimationListener(this);
    this.d = i.d;
  }

  public final void a()
  {
    ec.a("show");
    switch (h.a[this.d.ordinal()])
    {
    case 1:
    case 2:
    default:
      return;
    case 3:
      this.e = null;
      this.d = i.a;
      this.a.setVisibility(0);
      this.a.startAnimation(this.b);
      return;
    case 4:
    }
    this.e = i.b;
  }

  public final void b()
  {
    ec.a("hide");
    switch (h.a[this.d.ordinal()])
    {
    case 3:
    case 4:
    default:
      return;
    case 1:
      this.e = null;
      this.d = i.c;
      this.a.startAnimation(this.c);
      return;
    case 2:
    }
    this.e = i.d;
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    switch (h.a[this.d.ordinal()])
    {
    case 3:
    default:
    case 4:
    case 2:
    }
    while (true)
    {
      if (this.e != null);
      switch (h.a[this.e.ordinal()])
      {
      case 2:
      default:
        return;
        if (this.c.getDuration() != 250L)
          this.c.setDuration(250L);
        this.a.setVisibility(4);
        this.d = i.d;
        continue;
        this.d = i.b;
      case 3:
      case 1:
      }
    }
    b();
    return;
    a();
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ui.g
 * JD-Core Version:    0.6.2
 */
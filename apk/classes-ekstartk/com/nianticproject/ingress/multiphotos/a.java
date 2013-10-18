package com.nianticproject.ingress.multiphotos;

import android.content.Context;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import com.google.a.a.an;

public final class a
  implements Animation.AnimationListener
{
  private final View a;
  private final View b;
  private final Animation c;
  private final Animation d;
  private final Animation e;
  private final Animation f;
  private c g = c.a;
  private c h = null;

  public a(Context paramContext, View paramView1, View paramView2)
  {
    this.a = ((View)an.a(paramView1));
    this.b = ((View)an.a(paramView2));
    Animation localAnimation1 = AnimationUtils.loadAnimation(paramContext, 2130968579);
    localAnimation1.setAnimationListener(this);
    this.c = localAnimation1;
    Animation localAnimation2 = AnimationUtils.loadAnimation(paramContext, 2130968578);
    localAnimation2.setAnimationListener(this);
    this.d = localAnimation2;
    Animation localAnimation3 = AnimationUtils.loadAnimation(paramContext, 2130968577);
    localAnimation3.setAnimationListener(this);
    this.e = localAnimation3;
    Animation localAnimation4 = AnimationUtils.loadAnimation(paramContext, 2130968576);
    localAnimation4.setAnimationListener(this);
    this.f = localAnimation4;
  }

  private void b()
  {
    this.g = c.b;
    this.a.startAnimation(this.c);
    this.b.startAnimation(this.d);
  }

  private void c()
  {
    this.g = c.d;
    this.a.setVisibility(0);
    this.b.setVisibility(0);
    this.a.startAnimation(this.e);
    this.b.startAnimation(this.f);
  }

  public final void a()
  {
    switch (b.a[this.g.ordinal()])
    {
    default:
      return;
    case 1:
      b();
      return;
    case 2:
      c();
      return;
    case 3:
      this.h = c.a;
      return;
    case 4:
    }
    this.h = c.c;
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    switch (b.a[this.g.ordinal()])
    {
    default:
      if (this.h != null)
        switch (b.a[this.h.ordinal()])
        {
        default:
        case 1:
        case 2:
        }
      break;
    case 4:
    case 3:
    }
    while (true)
    {
      this.h = null;
      return;
      this.g = c.a;
      break;
      this.g = c.c;
      this.a.setVisibility(8);
      this.b.setVisibility(8);
      break;
      c();
      continue;
      b();
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
 * Qualified Name:     com.nianticproject.ingress.multiphotos.a
 * JD-Core Version:    0.6.2
 */
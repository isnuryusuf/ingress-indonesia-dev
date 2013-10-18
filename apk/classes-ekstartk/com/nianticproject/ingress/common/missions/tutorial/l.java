package com.nianticproject.ingress.common.missions.tutorial;

import com.nianticproject.ingress.common.ac;
import com.nianticproject.ingress.common.w.g;

final class l extends g
{
  private final u a;
  private final ac b;

  public l(u paramu, ac paramac)
  {
    super("RequestCameraState");
    this.a = paramu;
    this.b = paramac;
  }

  public final void a()
  {
    TutorialDialog.Style localStyle = new TutorialDialog.Style();
    localStyle.showArrowLine = false;
    m localm = new m(this, localStyle);
    this.a.a(localm);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.tutorial.l
 * JD-Core Version:    0.6.2
 */
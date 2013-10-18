package com.nianticproject.ingress.common.missions.tutorial;

import com.nianticproject.ingress.common.scanner.e;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.common.ui.elements.ModalDialog;

final class g extends com.nianticproject.ingress.common.w.g
  implements com.nianticproject.ingress.common.scanner.f
{
  private final u a;
  private final e b;
  private ModalDialog c;

  public g(u paramu, e parame)
  {
    super("HackIntroState");
    this.a = paramu;
    this.b = parame;
  }

  public final void a()
  {
    TutorialDialog.Style localStyle = new TutorialDialog.Style();
    localStyle.showArrowLine = false;
    this.c = new h(this, localStyle);
    this.a.a(this.c);
    this.b.a(this);
    this.a.a().add(new SingleActionTutorialConstraints(t.a));
  }

  public final void a(ej paramej)
  {
    this.c.g();
  }

  public final void u_()
  {
    this.b.b(this);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.tutorial.g
 * JD-Core Version:    0.6.2
 */
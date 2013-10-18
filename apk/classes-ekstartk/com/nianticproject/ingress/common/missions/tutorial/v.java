package com.nianticproject.ingress.common.missions.tutorial;

import com.nianticproject.ingress.common.c.bn;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.e;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.ui.elements.aa;

final class v extends aa
{
  private bn c = null;

  v(TutorialDialog paramTutorialDialog, TutorialDialog.Style paramStyle)
  {
  }

  public final void a()
  {
    if (this.a.narration != null)
    {
      this.c = this.a.narration.a();
      o.a().a(this.c);
    }
  }

  public final void b()
  {
    if (this.c != null)
    {
      this.c.n();
      this.c = null;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.tutorial.v
 * JD-Core Version:    0.6.2
 */
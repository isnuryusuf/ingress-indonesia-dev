package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.graphics.Color;
import com.nianticproject.ingress.common.c.ba;
import com.nianticproject.ingress.common.gameentity.e;
import com.nianticproject.ingress.common.gameentity.g;
import com.nianticproject.ingress.common.inventory.ui.q;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.gameentity.components.StoryItem;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.af;

final class as
{
  public final e a;
  public final ba b;
  public String c;
  public Color d;
  public String e;
  public int f;
  public boolean g = false;
  public boolean h = false;
  public final f i;

  public as(HackController paramHackController, q paramq)
  {
    this.i = paramq.h();
    this.a = g.h(this.i);
    this.b = g.f(this.i);
    this.f = paramq.g();
    switch (ar.a[paramq.a().ordinal()])
    {
    default:
      this.e = paramq.i();
      if (paramq.b())
      {
        this.c = paramq.f();
        this.d = com.nianticproject.ingress.common.ui.l.a(HackController.d(this.j), paramq.e());
      }
      break;
    case 1:
    }
    while ((!paramq.c()) || (paramq.a() == af.i))
    {
      do
      {
        return;
        this.e = "Unknown media";
        StoryItem localStoryItem = (StoryItem)paramq.h().getComponent(StoryItem.class);
        if (localStoryItem != null)
        {
          this.h = true;
          this.e = localStoryItem.getShortDescription();
        }
      }
      while (this.f <= 1);
      HackController.c().c("Media items should _always_ be distinguishable, but these " + this.f + " aren't: " + paramq.h());
      return;
    }
    this.g = true;
    com.nianticproject.ingress.gameentity.components.l locall = paramq.d();
    this.c = locall.a();
    this.d = com.nianticproject.ingress.common.ui.l.a(HackController.d(this.j), locall);
  }

  public final String a()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(this.f);
    return String.format("[x%d]", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.as
 * JD-Core Version:    0.6.2
 */
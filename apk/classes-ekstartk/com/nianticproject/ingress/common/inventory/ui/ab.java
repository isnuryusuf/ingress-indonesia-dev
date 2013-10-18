package com.nianticproject.ingress.common.inventory.ui;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.google.a.c.hc;
import com.nianticproject.ingress.common.ui.widget.WidgetCarousel;
import com.nianticproject.ingress.common.ui.widget.bb;
import com.nianticproject.ingress.common.ui.widget.bc;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class ab
  implements bb, bc
{
  private List<q> b;
  private final Map<Integer, ag> c = hc.b();
  private final Map<ag, Integer> d = hc.b();
  private ag e;

  private ab(v paramv)
  {
  }

  private void c()
  {
    Iterator localIterator = this.c.values().iterator();
    while (localIterator.hasNext())
      ((ag)localIterator.next()).a();
    this.c.clear();
    this.d.clear();
  }

  public final int a(Actor paramActor)
  {
    ag localag = (ag)paramActor;
    Integer localInteger = (Integer)this.d.get(localag);
    if (localInteger == null)
      return -1;
    return localInteger.intValue();
  }

  public final Actor a(int paramInt)
  {
    Object localObject = (ag)this.c.get(Integer.valueOf(paramInt));
    if ((localObject == null) && (this.b != null))
    {
      q localq = (q)this.b.get(paramInt);
      ag localag = new ag(this.a, localq);
      this.c.put(Integer.valueOf(paramInt), localag);
      this.d.put(localag, Integer.valueOf(paramInt));
      v.q(this.a).addActor(localag);
      localObject = localag;
    }
    return localObject;
  }

  public final void a()
  {
  }

  public final void a(Actor paramActor, boolean paramBoolean)
  {
    ag localag = (ag)paramActor;
    Integer localInteger = (Integer)this.d.get(localag);
    if (localInteger != null)
    {
      if (!paramBoolean)
      {
        localag.a(false);
        this.c.remove(localInteger);
        this.d.remove(localag);
        localag.a();
      }
    }
    else
      return;
    localag.a(true);
  }

  public final int b()
  {
    if (this.b != null)
      return this.b.size();
    return 0;
  }

  public final void b(Actor paramActor)
  {
    ag localag = (ag)paramActor;
    if (this.e != null)
      this.e.b(false);
    this.e = localag;
    v.b(this.a).f = ag.b(this.e).a();
    if (this.e != null)
      this.e.b(true);
  }

  public final void c(Actor paramActor)
  {
    ag localag = (ag)paramActor;
    if ((Integer)this.d.get(localag) != null)
      localag.c();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.inventory.ui.ab
 * JD-Core Version:    0.6.2
 */
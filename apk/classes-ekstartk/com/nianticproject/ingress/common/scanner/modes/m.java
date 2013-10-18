package com.nianticproject.ingress.common.scanner.modes;

import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.gameentity.g;
import com.nianticproject.ingress.common.itemupgrade.a;
import com.nianticproject.ingress.common.ui.widget.ActionButton;
import com.nianticproject.ingress.gameentity.components.Resource;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.af;
import java.util.Iterator;
import java.util.List;

final class m extends aa
{
  public m(l paraml)
  {
    super("FIRE");
  }

  private void f()
  {
    Object localObject1 = null;
    af localaf1;
    int j;
    if ((this.c != null) && (!l.g(this.a)))
      if (l.h(this.a) == null)
      {
        l.a(this.a, com.nianticproject.ingress.common.inventory.ui.q.a(l.a(this.a)));
        if (l.f(this.a) != null)
        {
          af localaf2 = ((Resource)l.f(this.a).getComponent(Resource.class)).getResourceType();
          int i1 = g.b(l.f(this.a));
          localaf1 = localaf2;
          j = i1;
        }
      }
    while (true)
    {
      Iterator localIterator = l.h(this.a).iterator();
      label115: Object localObject2;
      int k;
      label155: int m;
      label174: int n;
      if (localIterator.hasNext())
      {
        localObject2 = (com.nianticproject.ingress.common.inventory.ui.q)localIterator.next();
        if ((localaf1 != null) && (localaf1 != ((com.nianticproject.ingress.common.inventory.ui.q)localObject2).a()))
        {
          k = 0;
          if ((j != -1) && (((com.nianticproject.ingress.common.inventory.ui.q)localObject2).e() > j))
            break label243;
          m = 1;
          if ((localObject1 != null) && (((com.nianticproject.ingress.common.inventory.ui.q)localObject2).e() < localObject1.e()))
            break label249;
          n = 1;
          label193: if ((k == 0) || (m == 0) || (n == 0))
            break label349;
        }
      }
      int i;
      while (true)
      {
        localObject1 = localObject2;
        break label115;
        i = com.nianticproject.ingress.common.s.c.i();
        if (i == -1)
          break label355;
        localaf1 = com.nianticproject.ingress.common.s.c.d(af.b);
        j = i;
        break;
        k = 1;
        break label155;
        label243: m = 0;
        break label174;
        label249: n = 0;
        break label193;
        l.e(this.a).a(l.h(this.a), localObject1);
        l.b(this.a, l.e(this.a).a());
        if (l.f(this.a) != null)
        {
          a.b(this.c.b(), l.f(this.a), this.a.b);
          this.c.b(true);
          return;
        }
        this.c.b().a("No XMP");
        return;
        label349: localObject2 = localObject1;
      }
      label355: j = i;
      localaf1 = null;
    }
  }

  protected final void a()
  {
    if (l.f(this.a) != null)
      l.a(this.a, l.f(this.a));
  }

  protected final void a(Skin paramSkin, Stage paramStage, Table paramTable)
  {
    l.a(this.a, new com.nianticproject.ingress.common.ui.widget.q(paramSkin));
    l.e(this.a).a(new o(this.a, (byte)0));
    paramTable.row();
    paramTable.add(l.e(this.a)).n().g().l();
    super.a(paramSkin, paramStage, paramTable);
    f();
  }

  protected final void b()
  {
    this.a.h();
  }

  public final void c()
  {
    l.a(this.a, true);
    this.c.b().b("Firing...");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.m
 * JD-Core Version:    0.6.2
 */
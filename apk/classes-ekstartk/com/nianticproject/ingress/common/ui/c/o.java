package com.nianticproject.ingress.common.ui.c;

import com.badlogic.gdx.math.Vector2;
import com.google.a.c.jc;
import com.nianticproject.ingress.common.j.h;
import com.nianticproject.ingress.common.scanner.ej;
import com.nianticproject.ingress.common.scanner.fk;
import com.nianticproject.ingress.common.scanner.k;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.model.b;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class o
  implements q
{
  private final ej a;

  public o(ej paramej)
  {
    this.a = paramej;
  }

  public final boolean a(k paramk, h paramh, Vector2 paramVector2, float paramFloat)
  {
    if (this.a == null)
      return true;
    if (this.a.b().tmp().sub(paramVector2).len() - 20.0F <= paramFloat)
    {
      fk localfk = (fk)this.a;
      if (localfk != null)
        localfk.a(paramVector2, paramFloat);
      f localf = this.a.e();
      String[] arrayOfString = new String[1];
      arrayOfString[0] = localf.getGuid();
      HashSet localHashSet = jc.a(arrayOfString);
      Iterator localIterator = ((Portal)localf.getComponent(Portal.class)).getLinkedEdges().iterator();
      while (localIterator.hasNext())
        localHashSet.add(((b)localIterator.next()).a());
      paramk.b(localHashSet);
      return true;
    }
    return false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.c.o
 * JD-Core Version:    0.6.2
 */
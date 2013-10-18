package com.nianticproject.ingress.common.scanner.modes;

import com.nianticproject.ingress.common.scanner.ag;
import com.nianticproject.ingress.common.scanner.ea;
import com.nianticproject.ingress.common.scanner.visuals.bt;
import com.nianticproject.ingress.common.scanner.visuals.c;
import com.nianticproject.ingress.common.x.b;
import com.nianticproject.ingress.gameentity.components.Resonator;
import com.nianticproject.ingress.shared.ad;
import com.nianticproject.ingress.shared.rpc.RpcResult;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class bc extends b<RpcResult<Void, ad>>
{
  private c b = new c(ag.L, ea.a(ba.d(this.a).h()));

  private bc(ba paramba)
  {
    super("SelectedResonatorUi.recharge");
    this.a.c.l().b(this.b);
    if (this.a.h != null)
    {
      Resonator localResonator2 = (Resonator)ba.i(this.a).get(this.a.h);
      if (localResonator2 != null)
        ba.a(this.a, localResonator2.getEntityGuid());
    }
    while (true)
    {
      return;
      Iterator localIterator = ba.i(this.a).entrySet().iterator();
      while (localIterator.hasNext())
      {
        Resonator localResonator1 = (Resonator)((Map.Entry)localIterator.next()).getValue();
        if (localResonator1 != null)
        {
          Double localDouble = ba.a(localResonator1);
          if ((localDouble != null) && (localDouble.doubleValue() < 100.0D))
            ba.a(this.a, localResonator1.getEntityGuid());
        }
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.bc
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.shared.rpc;

import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.model.ApGain;
import com.nianticproject.ingress.shared.model.LevelUp;
import com.nianticproject.ingress.shared.model.PlayerDamage;
import java.util.List;
import java.util.Set;

public final class e
{
  public e(GameBasket paramGameBasket)
  {
  }

  public final f a()
  {
    return GameBasket.a(this.a);
  }

  public final Set<PlayerDamage> b()
  {
    return GameBasket.b(this.a);
  }

  public final LevelUp c()
  {
    return GameBasket.c(this.a);
  }

  public final List<ApGain> d()
  {
    return GameBasket.d(this.a);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.rpc.e
 * JD-Core Version:    0.6.2
 */
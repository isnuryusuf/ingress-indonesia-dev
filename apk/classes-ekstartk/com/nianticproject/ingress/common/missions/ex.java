package com.nianticproject.ingress.common.missions;

import com.google.a.c.du;
import com.nianticproject.ingress.common.model.m;
import com.nianticproject.ingress.common.w.g;
import com.nianticproject.ingress.gameentity.JsonConstants.SerializationTag;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.model.PlayerDamage;
import java.util.concurrent.TimeUnit;

final class ex extends g
{
  ex(eu parameu, String paramString)
  {
    super(paramString);
  }

  public final void a()
  {
    du localdu = du.b(new PlayerDamage(100L, this.a.c.getGuid(), JsonConstants.SerializationTag.TURRET));
    this.a.k.a(localdu);
    this.a.k.b(100L);
    this.a.a(eu.c(this.a), 3, TimeUnit.SECONDS);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.ex
 * JD-Core Version:    0.6.2
 */
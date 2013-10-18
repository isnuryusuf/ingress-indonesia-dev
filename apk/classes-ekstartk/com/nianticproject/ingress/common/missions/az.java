package com.nianticproject.ingress.common.missions;

import com.google.a.c.du;
import com.nianticproject.ingress.common.model.m;
import com.nianticproject.ingress.common.w.g;
import com.nianticproject.ingress.gameentity.JsonConstants.SerializationTag;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.model.PlayerDamage;
import java.util.concurrent.TimeUnit;

final class az extends g
{
  az(aw paramaw, String paramString)
  {
    super(paramString);
  }

  public final void a()
  {
    du localdu = du.b(new PlayerDamage(300L, this.a.c.getGuid(), JsonConstants.SerializationTag.TURRET));
    this.a.k.a(localdu);
    this.a.k.b(300L);
    this.a.a(aw.e(this.a), 1, TimeUnit.SECONDS);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.az
 * JD-Core Version:    0.6.2
 */
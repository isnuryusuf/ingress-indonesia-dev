package com.nianticproject.ingress.common.model;

import com.nianticproject.ingress.common.ad;
import com.nianticproject.ingress.common.playerprofile.j;
import com.nianticproject.ingress.shared.ai;
import com.nianticproject.ingress.shared.f;
import com.nianticproject.ingress.shared.model.ApGain;
import com.nianticproject.ingress.shared.model.PlayerDamage;
import java.util.List;

public abstract interface l
{
  public abstract String a();

  public abstract void a(int paramInt, boolean paramBoolean);

  public abstract void a(long paramLong1, long paramLong2, long paramLong3, z paramz);

  public abstract void a(long paramLong, List<ApGain> paramList);

  public abstract void a(ad paramad);

  public abstract void a(j paramj);

  public abstract void a(ai paramai1, ai paramai2);

  public abstract void a(f paramf1, f paramf2);

  public abstract void a(PlayerDamage paramPlayerDamage);

  public abstract void a(String paramString);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.model.l
 * JD-Core Version:    0.6.2
 */
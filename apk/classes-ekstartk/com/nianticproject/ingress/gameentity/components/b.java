package com.nianticproject.ingress.gameentity.components;

import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.ai;

public final class b
{
  public static ai a(ControllingTeam paramControllingTeam)
  {
    if (paramControllingTeam == null)
      return ai.c;
    return paramControllingTeam.getTeam();
  }

  public static ai a(f paramf)
  {
    return a((ControllingTeam)paramf.getComponent(ControllingTeam.class));
  }

  public static boolean a(f paramf, ai paramai)
  {
    ai localai = a(paramf);
    return (localai != ai.c) && (localai != paramai);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.b
 * JD-Core Version:    0.6.2
 */
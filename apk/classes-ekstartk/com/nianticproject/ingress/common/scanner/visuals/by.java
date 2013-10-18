package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.graphics.Color;
import com.nianticproject.ingress.common.ad;
import com.nianticproject.ingress.common.model.n;
import com.nianticproject.ingress.common.scanner.ea;
import com.nianticproject.ingress.shared.ai;
import com.nianticproject.ingress.shared.model.PlayerDamage;
import java.util.List;

final class by extends n
{
  by(bt parambt)
  {
  }

  public final String a()
  {
    return "PlayerVisuals:playerListener";
  }

  public final void a(ad paramad)
  {
    bt.f(this.a);
  }

  public final void a(ai paramai1, ai paramai2)
  {
    bt.a(this.a, Color.GRAY);
    bt.b(this.a, ea.a(paramai2));
  }

  public final void a(PlayerDamage paramPlayerDamage)
  {
    bt.g(this.a).add(paramPlayerDamage);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.by
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.graphics.Color;
import com.nianticproject.ingress.common.ui.hud.b;
import com.nianticproject.ingress.gameentity.components.Portal;
import com.nianticproject.ingress.gameentity.components.Resonator;
import com.nianticproject.ingress.gameentity.components.Resource;
import com.nianticproject.ingress.gameentity.f;

public final class ff
{
  public static final Color a = Color.GRAY;
  public static final Color b = new Color(0.96F, 0.62F, 1.0F, 1.0F);
  public static final Color c = new Color(1.0F, 0.53F, 0.21F, 1.0F);
  public static final Color d = Color.YELLOW;
  public static final Color e = new Color(0.56F, 0.48F, 1.0F, 1.0F);

  static fg a(eo parameo, f paramf, ge paramge)
  {
    Object localObject;
    if (paramf.getComponent(Portal.class) != null)
      localObject = new fk(parameo);
    while (true)
    {
      if (localObject != null)
        ((fg)localObject).a(paramf);
      return localObject;
      if (paramf.getComponent(Resonator.class) != null)
      {
        localObject = new fu(parameo);
      }
      else
      {
        Resource localResource = (Resource)paramf.getComponent(Resource.class);
        if (localResource != null)
          localObject = ek.a(paramge, parameo, localResource);
        else
          localObject = null;
      }
    }
  }

  static b a()
  {
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.ff
 * JD-Core Version:    0.6.2
 */
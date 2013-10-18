package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.nianticproject.ingress.common.w.aa;
import java.util.ArrayList;

final class ec extends Color
{
  private final String c;

  ec(String paramString, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this(paramString, paramFloat1, paramFloat2, paramFloat3, 1.0F);
  }

  ec(String paramString, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    super(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    this.c = paramString;
    ea.a().add(this);
  }

  final void a(Skin paramSkin)
  {
    try
    {
      set((Color)paramSkin.get(this.c, Color.class));
      return;
    }
    catch (GdxRuntimeException localGdxRuntimeException)
    {
      ea.b().c("Unable to load color for key: " + this.c);
      set(Color.RED);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.ec
 * JD-Core Version:    0.6.2
 */
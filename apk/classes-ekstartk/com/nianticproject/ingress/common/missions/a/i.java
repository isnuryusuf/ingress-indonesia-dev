package com.nianticproject.ingress.common.missions.a;

import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.missions.cr;
import com.nianticproject.ingress.common.ui.ad;
import com.nianticproject.ingress.common.ui.t;
import com.nianticproject.ingress.common.ui.widget.z;

public final class i extends a
{
  private final String d;
  private final float e;
  private final z f;
  private final z g;
  private final boolean h;

  public i(ad paramad, String paramString, float paramFloat, z paramz1, z paramz2, t paramt, boolean paramBoolean)
  {
    super(paramad, paramt);
    this.d = paramString;
    this.e = paramFloat;
    this.f = paramz1;
    this.g = paramz2;
    this.h = paramBoolean;
  }

  protected final Table a(Skin paramSkin, float paramFloat)
  {
    return a(paramSkin, "ADA", "unknown", paramFloat, true);
  }

  protected final Table b(Skin paramSkin, float paramFloat)
  {
    return a(paramSkin, paramSkin.getDrawable("score-resistance-background"), paramFloat, null, this.d, null, this.e);
  }

  protected final Table c(Skin paramSkin, float paramFloat)
  {
    if (this.h);
    for (String str = "End Training"; ; str = "Next Mission")
      return a(paramSkin, paramFloat, this.f, this.g, str, "Skip", false);
  }

  public final cr g()
  {
    return this.a;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.a.i
 * JD-Core Version:    0.6.2
 */
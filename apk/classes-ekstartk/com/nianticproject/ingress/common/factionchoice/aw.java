package com.nianticproject.ingress.common.factionchoice;

import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.nianticproject.ingress.common.missions.a.a;
import com.nianticproject.ingress.common.missions.cr;
import com.nianticproject.ingress.common.ui.ad;
import com.nianticproject.ingress.common.ui.t;
import com.nianticproject.ingress.common.ui.widget.z;

public abstract class aw extends a
{
  private final String d;
  private final float e;
  private final z f;
  private final String g;
  private final String h;

  protected aw(ad paramad, String paramString1, float paramFloat, z paramz, String paramString2, String paramString3, t paramt)
  {
    super(paramad, paramt);
    this.d = paramString1;
    this.e = paramFloat;
    this.f = paramz;
    this.g = paramString2;
    this.h = paramString3;
  }

  protected final Table a(Skin paramSkin, float paramFloat)
  {
    return a(paramSkin, this.g, this.h, paramFloat, true);
  }

  protected final Table b(Skin paramSkin, float paramFloat)
  {
    if (this.g.equals("ADA"));
    for (Drawable localDrawable = paramSkin.getDrawable("score-resistance-background"); ; localDrawable = paramSkin.getDrawable("score-enlightened-background"))
      return a(paramSkin, localDrawable, paramFloat, null, this.d, null, this.e);
  }

  protected final Table c(Skin paramSkin, float paramFloat)
  {
    return a(paramSkin, paramFloat, this.f, null, "Proceed", "", false);
  }

  public final cr d()
  {
    return this.a;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.factionchoice.aw
 * JD-Core Version:    0.6.2
 */
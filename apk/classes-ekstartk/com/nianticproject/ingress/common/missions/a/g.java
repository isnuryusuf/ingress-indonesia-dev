package com.nianticproject.ingress.common.missions.a;

import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.missions.cr;
import com.nianticproject.ingress.common.ui.ad;
import com.nianticproject.ingress.common.ui.t;
import com.nianticproject.ingress.common.ui.widget.z;
import java.util.List;

public final class g extends a
{
  private final List<String> d;
  private final String e;
  private final String f;
  private final float g;
  private final z h;
  private final z i;
  private final boolean j;

  public g(ad paramad, List<String> paramList, String paramString1, String paramString2, float paramFloat, z paramz1, z paramz2, t paramt, boolean paramBoolean)
  {
    super(paramad, paramt);
    this.d = paramList;
    this.e = paramString1;
    this.f = paramString2;
    this.g = paramFloat;
    this.h = paramz1;
    this.i = paramz2;
    this.j = paramBoolean;
  }

  protected final Table a(Skin paramSkin, float paramFloat)
  {
    return a(paramSkin, "ADA", "unknown", paramFloat, true);
  }

  protected final Table b(Skin paramSkin, float paramFloat)
  {
    return a(paramSkin, paramSkin.getDrawable("score-resistance-background"), paramFloat, this.d, this.f, this.e, this.g);
  }

  protected final Table c(Skin paramSkin, float paramFloat)
  {
    if (this.j);
    for (String str = "Start Training"; ; str = "Start")
      return a(paramSkin, paramFloat, this.h, this.i, str, "Skip", true);
  }

  public final cr g()
  {
    return this.a;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.a.g
 * JD-Core Version:    0.6.2
 */
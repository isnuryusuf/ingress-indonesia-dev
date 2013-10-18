package com.nianticproject.ingress.common.ui;

import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.ac;
import com.nianticproject.ingress.common.ui.widget.aa;
import com.nianticproject.ingress.common.ui.widget.af;
import com.nianticproject.ingress.common.ui.widget.ag;

public abstract class h extends a
{
  private final af a;
  private final ac b;
  private final i c;
  private final ag d;
  private final String e;
  private final String f;
  private final float g;
  private final float h;
  private aa i;

  public h(String paramString1, ac paramac, af paramaf, ag paramag, String paramString2, String paramString3, float paramFloat1, float paramFloat2)
  {
    super(paramString1);
    this.b = paramac;
    this.a = paramaf;
    this.d = paramag;
    this.e = paramString2;
    this.f = paramString3;
    this.g = paramFloat1;
    this.h = paramFloat2;
    this.c = new i(this, (byte)0);
    K().a(this.c);
  }

  public void a()
  {
    this.i.a();
  }

  protected void a(Table paramTable, Skin paramSkin)
  {
  }

  protected abstract void a(ac paramac);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.h
 * JD-Core Version:    0.6.2
 */
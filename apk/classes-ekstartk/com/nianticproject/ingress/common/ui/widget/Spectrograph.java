package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.google.a.a.an;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.c.bi;
import com.nianticproject.ingress.common.c.bm;
import com.nianticproject.ingress.common.ui.a.d;
import java.util.Iterator;
import java.util.List;

public final class Spectrograph extends Table
{
  int a;
  private List<bm> b;
  private final Spectrograph.SpectrographStyle c;
  private double d;
  private boolean e;

  public Spectrograph(Skin paramSkin)
  {
    this((Spectrograph.SpectrographStyle)paramSkin.get(Spectrograph.SpectrographStyle.class));
  }

  private Spectrograph(Spectrograph.SpectrographStyle paramSpectrographStyle)
  {
    this.c = ((Spectrograph.SpectrographStyle)an.a(paramSpectrographStyle, "null SpectrographStyle"));
    getColor().r = 1.0F;
    getColor().g = 1.0F;
    getColor().b = 1.0F;
    setVisible(false);
    getColor().a = 0.0F;
    this.e = false;
  }

  public final void a()
  {
    this.a = 0;
    this.d = 0.0D;
  }

  public final void a(List<bi> paramList)
  {
    this.a = 0;
    this.d = 0.0D;
    this.e = false;
    this.b = eq.a();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      bi localbi = (bi)localIterator.next();
      this.b.add(new bm(localbi.a()));
    }
  }

  public final void a(boolean paramBoolean)
  {
    this.e = paramBoolean;
  }

  public final void act(float paramFloat)
  {
    if ((isVisible()) && (!this.e))
      this.d += paramFloat;
    super.act(paramFloat);
  }

  public final boolean b()
  {
    return this.a == this.b.size();
  }

  public final void c()
  {
    clearActions();
    this.e = false;
    addAction(Actions.sequence(new d(), Actions.fadeIn(1.0F)));
  }

  public final void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    float f1 = paramFloat * getColor().a;
    if (f1 != 1.0F);
    bm localbm;
    int j;
    for (int i = 1; ; i = 0)
    {
      if ((this.a < this.b.size()) && (isVisible()) && (f1 > 0.0F))
      {
        localbm = (bm)this.b.get(this.a);
        j = (int)(1000.0D * (this.d - 0.1749999970197678D));
        if (j < 0)
          j = 0;
        int k = localbm.b();
        if (j <= k)
          break;
        this.a = (1 + this.a);
        this.d = ((j - k) / 1000.0F);
        this.d -= 0.1749999970197678D;
      }
      return;
    }
    float f2 = getWidth() / localbm.a();
    float f3 = getHeight();
    TextureRegion localTextureRegion = this.c.bar;
    Color localColor2;
    if (i != 0)
    {
      localColor2 = paramSpriteBatch.getColor();
      paramSpriteBatch.setColor(localColor2.r, localColor2.g, localColor2.b, paramFloat * localColor2.a);
    }
    for (Color localColor1 = localColor2; ; localColor1 = null)
    {
      byte[] arrayOfByte = localbm.a(j);
      for (int m = 0; m < localbm.a(); m++)
      {
        float f4 = (0xFF & arrayOfByte[m]) / 255.0F;
        paramSpriteBatch.draw(localTextureRegion.getTexture(), getX() + f2 * m, getY(), f2, f3 * f4, localTextureRegion.getU(), localTextureRegion.getV(), localTextureRegion.getU2(), localTextureRegion.getV() + f4 * (localTextureRegion.getV2() - localTextureRegion.getV()));
      }
      if (i != 0)
        paramSpriteBatch.setColor(localColor1);
      super.draw(paramSpriteBatch, paramFloat);
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.Spectrograph
 * JD-Core Version:    0.6.2
 */
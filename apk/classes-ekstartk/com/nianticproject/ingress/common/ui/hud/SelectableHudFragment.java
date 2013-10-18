package com.nianticproject.ingress.common.ui.hud;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.c.a.a.a.a;
import com.google.a.a.an;
import com.nianticproject.ingress.common.j.h;
import com.nianticproject.ingress.common.j.l;
import com.nianticproject.ingress.common.w.i;

public class SelectableHudFragment
  implements b
{
  private static final float a = (float)Math.toRadians(90.0D);
  private static final float b = (float)Math.toRadians(30.0D);
  private static final float c = (float)Math.toRadians(45.0D);
  private final Color d = new Color();
  private final Color e = new Color();
  private final Rectangle f = new Rectangle();
  private final h g;
  private final SelectableHudFragment.SelectableHudStyle h;
  private boolean i = true;
  private boolean j = true;
  private float k;
  private float l = 0.0F;
  private a m;

  public SelectableHudFragment(h paramh)
  {
    this(paramh, new SelectableHudFragment.SelectableHudStyle());
  }

  public SelectableHudFragment(h paramh, SelectableHudFragment.SelectableHudStyle paramSelectableHudStyle)
  {
    this.g = ((h)an.a(paramh));
    this.h = ((SelectableHudFragment.SelectableHudStyle)an.a(paramSelectableHudStyle));
  }

  private boolean f()
  {
    return (this.i) || (this.k > 0.001F);
  }

  public final void a()
  {
    this.j = false;
    this.i = false;
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
  }

  public final void a(boolean paramBoolean)
  {
    this.j = paramBoolean;
  }

  public final boolean a(float paramFloat)
  {
    this.l = (paramFloat + this.l);
    float f1 = this.k;
    float f2;
    if (this.j)
    {
      f2 = 1.0F;
      if (!this.j)
        break label62;
    }
    label62: for (float f3 = this.h.selectionSpeed; ; f3 = this.h.deselectionSpeed)
    {
      this.k = (f1 + f3 * (f2 - f1));
      return f();
      f2 = 0.0F;
      break;
    }
  }

  public final boolean a(Rectangle paramRectangle)
  {
    this.f.set(paramRectangle);
    if (this.h.markerSlices > 1)
    {
      double d1 = this.l * this.h.markerRotationRad;
      float f12 = this.k;
      float f13 = this.h.defaultMarkerRadius;
      float f14 = f13 + f12 * (this.h.selectedMarkerRadius - f13);
      float f15 = this.h.defaultMarkerWidth;
      float f16 = f15 + f12 * (this.h.selectedMarkerWidth - f15);
      i.a(this.d, this.h.defaultColor, this.h.selectedColor, f12);
      if (this.m != null)
      {
        Color localColor3 = this.d;
        localColor3.a *= this.m.a();
      }
      float f17 = this.f.x + this.f.width / 2.0F;
      float f18 = this.f.y + this.f.height / 2.0F;
      float f19 = 6.283186F / (2 * this.h.markerSlices);
      for (int i1 = 0; i1 < this.h.markerSlices; i1++)
      {
        float f20 = (float)(d1 + f19 * (i1 * 2));
        float f21 = f20 + f19;
        Vector2 localVector27 = new Vector2(MathUtils.cos(f20), MathUtils.sin(f20));
        Vector2 localVector28 = new Vector2(localVector27);
        Vector2 localVector29 = new Vector2(MathUtils.cos(f21), MathUtils.sin(f21));
        Vector2 localVector210 = new Vector2(localVector29);
        localVector27.mul(f14).add(f17, f18);
        localVector28.mul(f14 + f16).add(f17, f18);
        localVector29.mul(f14 + f16).add(f17, f18);
        localVector210.mul(f14).add(f17, f18);
        this.g.a(l.b, localVector27, localVector28, localVector29, this.d);
        this.g.a(l.b, localVector27, localVector29, localVector210, this.d);
      }
    }
    if ((this.k <= 0.001D) || (this.h.caliperCount <= 1));
    while (true)
    {
      return f();
      float f1 = this.f.x + this.f.width / 2.0F;
      float f2 = this.f.y + this.f.height / 2.0F;
      float f3 = 0.5F * Math.max(this.f.width, this.f.height);
      float f4 = this.h.defaultCaliperRadius;
      float f5 = this.h.selectedCaliperRadius;
      float f6 = f3 * (f4 + this.k * (f5 - f4));
      i.a(this.e, this.h.defaultColor, this.h.selectedColor, this.k);
      this.e.a = this.k;
      if (this.m != null)
      {
        Color localColor2 = this.e;
        localColor2.a *= this.m.a();
      }
      float f7 = 6.283186F / this.h.caliperCount;
      float f8 = this.h.wedgeOffsetRad + f7 * this.k;
      for (int n = 0; n < this.h.caliperCount; n++)
      {
        float f9 = f8 + f7 * n;
        float f10 = f6 + 2.0F * this.h.selectedMarkerRadius;
        float f11 = 0.5F * this.h.wedgeExtentRad;
        Color localColor1 = this.e;
        Vector2 localVector21 = new Vector2(MathUtils.cos(f9 - f11), MathUtils.sin(f9 - f11));
        Vector2 localVector22 = new Vector2(localVector21);
        Vector2 localVector23 = new Vector2(MathUtils.cos(f9), MathUtils.sin(f9));
        Vector2 localVector24 = new Vector2(localVector23);
        Vector2 localVector25 = new Vector2(MathUtils.cos(f9 + f11), MathUtils.sin(f9 + f11));
        Vector2 localVector26 = new Vector2(localVector25);
        localVector21.mul(0.9F * f10).add(f1, f2);
        localVector22.mul(0.9F * f10 + this.h.selectedMarkerWidth).add(f1, f2);
        localVector23.mul(f10).add(f1, f2);
        localVector24.mul(f10 + this.h.selectedMarkerWidth).add(f1, f2);
        localVector25.mul(0.9F * f10).add(f1, f2);
        localVector26.mul(0.9F * f10 + this.h.selectedMarkerWidth).add(f1, f2);
        this.g.a(l.c, localVector21, localVector22, localVector23, localColor1);
        this.g.a(l.c, localVector23, localVector22, localVector24, localColor1);
        this.g.a(l.c, localVector23, localVector24, localVector25, localColor1);
        this.g.a(l.c, localVector25, localVector24, localVector26, localColor1);
      }
    }
  }

  public final SelectableHudFragment.SelectableHudStyle b()
  {
    return this.h;
  }

  public void dispose()
  {
    this.i = false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.hud.SelectableHudFragment
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.common.ui.widget;

import com.a.a.c;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.google.a.a.an;
import com.nianticproject.ingress.common.w.l;

public final class v extends Table
{
  private Image a;
  private Image b;
  private Image c = null;
  private float d = 0.0F;
  private float e = 0.0F;
  private float f = 5.0F;
  private float g = 0.0F;
  private float h = l.a(1.0F);

  public v(Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, Drawable paramDrawable4)
  {
    if (paramDrawable1 != null)
    {
      setBackground(paramDrawable1);
      this.g = paramDrawable1.getMinWidth();
    }
    this.a = new Image((Drawable)an.a(paramDrawable2));
    this.b = new Image((Drawable)an.a(paramDrawable3));
    if (paramDrawable4 != null)
      this.c = new Image(paramDrawable4);
    this.g += paramDrawable2.getMinWidth();
  }

  private void a()
  {
    clear();
    if (this.d < 1.0F)
    {
      add(this.a).n().f();
      float f1 = Math.round((getWidth() - this.g) * (1.0F - this.d));
      add(this.b).p().h().d(Math.max(this.h, f1));
      return;
    }
    if (this.c != null)
    {
      add(this.c).n().f();
      return;
    }
    add(this.a).n().f();
  }

  public final void a(float paramFloat)
  {
    if ((paramFloat >= 0.0F) && (paramFloat <= 1.0F));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "Progress must be between 0.0 and 1.0");
      this.e = paramFloat;
      return;
    }
  }

  public final void act(float paramFloat)
  {
    if (this.e > this.d)
    {
      this.d = Math.min(this.e, this.d + paramFloat * this.f);
      a();
    }
    while (true)
    {
      super.act(paramFloat);
      return;
      if (this.e < this.d)
      {
        this.d = Math.max(this.e, this.d - paramFloat * this.f);
        a();
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.v
 * JD-Core Version:    0.6.2
 */
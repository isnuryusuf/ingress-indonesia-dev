package com.nianticproject.ingress.common.ui.elements;

import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.utils.Scaling;

final class aw extends Image
{
  private boolean b = false;
  private boolean c = false;
  private final int d;
  private final int e;

  aw(PortalInfoDialog paramPortalInfoDialog, Drawable paramDrawable, TextureRegion paramTextureRegion, int paramInt)
  {
    super(paramDrawable);
    setScaling(Scaling.none);
    setColor(1.0F, 1.0F, 1.0F, 0.0F);
    this.d = paramTextureRegion.getRegionWidth();
    this.e = paramTextureRegion.getRegionHeight();
    setX(paramTextureRegion.getRegionX());
    setY(paramInt - paramTextureRegion.getRegionY() - this.e);
  }

  public final void a()
  {
    if (this.b)
    {
      this.b = false;
      this.c = false;
      PortalInfoDialog.a(this);
      a(0.0F);
    }
  }

  public final void a(float paramFloat)
  {
    float f = paramFloat * this.e;
    if (getHeight() != f)
    {
      setWidth(this.d);
      setHeight(f);
      setScaling(Scaling.stretch);
      invalidate();
    }
  }

  public final void a(boolean paramBoolean)
  {
    if ((!this.b) || (paramBoolean != this.c))
    {
      this.b = true;
      this.c = paramBoolean;
      PortalInfoDialog.a(this, paramBoolean);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.aw
 * JD-Core Version:    0.6.2
 */
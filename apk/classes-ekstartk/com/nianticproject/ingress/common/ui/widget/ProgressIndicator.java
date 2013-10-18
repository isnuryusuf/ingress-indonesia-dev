package com.nianticproject.ingress.common.ui.widget;

import com.a.a.c;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.ui.Image;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.utils.Scaling;
import com.google.a.a.an;

public final class ProgressIndicator extends Table
{
  private final Scaling a = Scaling.none;
  private final ProgressIndicator.ProgressIndicatorStyle b;
  private double c;

  public ProgressIndicator(Skin paramSkin)
  {
    this((ProgressIndicator.ProgressIndicatorStyle)paramSkin.get(ProgressIndicator.ProgressIndicatorStyle.class));
  }

  public ProgressIndicator(ProgressIndicator.ProgressIndicatorStyle paramProgressIndicatorStyle)
  {
    this.b = ((ProgressIndicator.ProgressIndicatorStyle)an.a(paramProgressIndicatorStyle, "null ProgressIndicatorStyle"));
    Image localImage = new Image((TextureRegion)an.a(paramProgressIndicatorStyle.outer));
    localImage.setScaling(this.a);
    localImage.setVisible(false);
    add(localImage).n().i();
    setVisible(false);
    getColor().a = 0.0F;
  }

  private void a(SpriteBatch paramSpriteBatch, TextureRegion paramTextureRegion, float paramFloat)
  {
    float f1 = paramTextureRegion.getRegionWidth();
    float f2 = paramTextureRegion.getRegionHeight();
    Vector2 localVector2 = this.a.apply(f1, f2, getWidth(), getHeight());
    float f3 = (getWidth() - localVector2.x) / 2.0F;
    float f4 = (getHeight() - localVector2.y) / 2.0F;
    paramSpriteBatch.draw(paramTextureRegion, f3 + getX(), f4 + getY(), localVector2.x / 2.0F, localVector2.y / 2.0F, localVector2.x, localVector2.y, 1.0F, 1.0F, paramFloat);
  }

  public final void a(boolean paramBoolean)
  {
    clearActions();
    if (paramBoolean)
    {
      addAction(Actions.sequence(Actions.visible(true), Actions.fadeIn(1.0F)));
      return;
    }
    addAction(Actions.sequence(Actions.fadeOut(1.0F), Actions.visible(false)));
  }

  public final void act(float paramFloat)
  {
    if (isVisible())
      this.c += paramFloat;
    super.act(paramFloat);
  }

  public final void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    float f = paramFloat * getColor().a;
    if (f != 1.0F);
    for (int i = 1; ; i = 0)
    {
      if ((isVisible()) && (f > 0.0F))
      {
        Color localColor = null;
        if (i != 0)
        {
          localColor = paramSpriteBatch.getColor();
          paramSpriteBatch.setColor(localColor.r, localColor.g, localColor.b, paramFloat * localColor.a);
        }
        a(paramSpriteBatch, this.b.inner, 360.0F * (float)(this.c / this.b.innerTime));
        a(paramSpriteBatch, this.b.outer, 360.0F * (float)(this.c / this.b.outerTime));
        if (i != 0)
          paramSpriteBatch.setColor(localColor);
        super.draw(paramSpriteBatch, paramFloat);
      }
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.ProgressIndicator
 * JD-Core Version:    0.6.2
 */
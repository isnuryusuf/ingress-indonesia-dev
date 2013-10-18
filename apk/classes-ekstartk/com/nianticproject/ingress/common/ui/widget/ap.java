package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Sprite;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton.TextButtonStyle;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.SpriteDrawable;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.google.a.a.an;
import com.nianticproject.ingress.common.i.d;

public class ap extends f
{
  private final d a;
  private final d b;
  private final Drawable c;
  private final boolean d;

  public ap(String paramString, TextButton.TextButtonStyle paramTextButtonStyle)
  {
    this(paramString, paramTextButtonStyle, false);
  }

  public ap(String paramString, TextButton.TextButtonStyle paramTextButtonStyle, boolean paramBoolean)
  {
  }

  private static Drawable a(Drawable paramDrawable)
  {
    if ((paramDrawable instanceof TextureRegionDrawable));
    for (Object localObject = new SpriteDrawable(new Sprite(((TextureRegionDrawable)paramDrawable).getRegion())); ; localObject = paramDrawable)
    {
      an.a(localObject instanceof SpriteDrawable);
      SpriteDrawable localSpriteDrawable = (SpriteDrawable)localObject;
      d locald = new d();
      locald.set(localSpriteDrawable.getSprite());
      return new SpriteDrawable(locald);
    }
  }

  public final void a(float paramFloat)
  {
    this.a.a(paramFloat);
    this.b.a(paramFloat);
  }

  public final void a(Color paramColor)
  {
    if (!this.d)
      return;
    setColor(paramColor);
  }

  protected final void a(SpriteBatch paramSpriteBatch)
  {
    if (this.c != null)
      this.c.draw(paramSpriteBatch, getX(), getY(), getWidth(), getHeight());
  }

  protected final void a(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    super.draw(paramSpriteBatch, paramFloat);
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    super.draw(paramSpriteBatch, paramFloat);
    a(paramSpriteBatch);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.ap
 * JD-Core Version:    0.6.2
 */
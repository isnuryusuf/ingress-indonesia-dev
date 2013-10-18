package com.badlogic.gdx.scenes.scene2d.utils;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.Sprite;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;

public class SpriteDrawable extends EmptyDrawable
{
  private Sprite sprite;

  public SpriteDrawable()
  {
  }

  public SpriteDrawable(Sprite paramSprite)
  {
    setSprite(paramSprite);
  }

  public SpriteDrawable(SpriteDrawable paramSpriteDrawable)
  {
    super(paramSpriteDrawable);
    setSprite(paramSpriteDrawable.sprite);
  }

  public void draw(SpriteBatch paramSpriteBatch, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.sprite.setBounds(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    Color localColor = this.sprite.getColor();
    this.sprite.setColor(Color.tmp.set(localColor).mul(paramSpriteBatch.getColor()));
    this.sprite.draw(paramSpriteBatch);
    this.sprite.setColor(localColor);
  }

  public Sprite getSprite()
  {
    return this.sprite;
  }

  public void setSprite(Sprite paramSprite)
  {
    this.sprite = paramSprite;
    setMinWidth(paramSprite.getWidth());
    setMinHeight(paramSprite.getHeight());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.utils.SpriteDrawable
 * JD-Core Version:    0.6.2
 */
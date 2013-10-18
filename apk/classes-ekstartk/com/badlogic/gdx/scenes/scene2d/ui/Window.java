package com.badlogic.gdx.scenes.scene2d.ui;

import com.a.a.e;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.BitmapFont.TextBounds;
import com.badlogic.gdx.graphics.g2d.BitmapFontCache;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Touchable;

public class Window extends Table
{
  final Vector2 dragOffset = new Vector2();
  boolean dragging;
  boolean isModal;
  boolean isMovable = true;
  private Window.WindowStyle style;
  private String title;
  private BitmapFontCache titleCache;

  public Window(String paramString, Skin paramSkin)
  {
    this(paramString, (Window.WindowStyle)paramSkin.get(Window.WindowStyle.class));
    setSkin(paramSkin);
  }

  public Window(String paramString1, Skin paramSkin, String paramString2)
  {
    this(paramString1, (Window.WindowStyle)paramSkin.get(paramString2, Window.WindowStyle.class));
    setSkin(paramSkin);
  }

  public Window(String paramString, Window.WindowStyle paramWindowStyle)
  {
    if (paramString == null)
      throw new IllegalArgumentException("title cannot be null.");
    this.title = paramString;
    setTouchable(Touchable.enabled);
    setClip(true);
    setStyle(paramWindowStyle);
    setWidth(150.0F);
    setHeight(150.0F);
    addCaptureListener(new Window.1(this));
    addListener(new Window.2(this));
  }

  protected void drawBackground(SpriteBatch paramSpriteBatch, float paramFloat)
  {
    super.drawBackground(paramSpriteBatch, paramFloat);
    this.titleCache.setPosition(getX(), getY());
    this.titleCache.draw(paramSpriteBatch, paramFloat);
  }

  public Window.WindowStyle getStyle()
  {
    return this.style;
  }

  public String getTitle()
  {
    return this.title;
  }

  float getTitleBarHeight()
  {
    return getPadTop().c(this);
  }

  public Actor hit(float paramFloat1, float paramFloat2)
  {
    Actor localActor = super.hit(paramFloat1, paramFloat2);
    if ((localActor == null) && (this.isModal))
      return this;
    return localActor;
  }

  public boolean isDragging()
  {
    return this.dragging;
  }

  public void layout()
  {
    super.layout();
    BitmapFont.TextBounds localTextBounds = this.style.titleFont.getMultiLineBounds(this.title);
    this.titleCache.setMultiLineText(this.title, getWidth() / 2.0F - localTextBounds.width / 2.0F, getHeight() - getTitleBarHeight() / 2.0F + localTextBounds.height / 2.0F);
  }

  public void setModal(boolean paramBoolean)
  {
    this.isModal = paramBoolean;
  }

  public void setMovable(boolean paramBoolean)
  {
    this.isMovable = paramBoolean;
  }

  public void setStyle(Window.WindowStyle paramWindowStyle)
  {
    if (paramWindowStyle == null)
      throw new IllegalArgumentException("style cannot be null.");
    this.style = paramWindowStyle;
    setBackground(paramWindowStyle.background);
    this.titleCache = new BitmapFontCache(paramWindowStyle.titleFont);
    this.titleCache.setColor(paramWindowStyle.titleFontColor);
    invalidateHierarchy();
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.Window
 * JD-Core Version:    0.6.2
 */
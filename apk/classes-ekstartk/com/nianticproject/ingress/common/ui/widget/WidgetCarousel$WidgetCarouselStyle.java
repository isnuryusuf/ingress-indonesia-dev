package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.graphics.g2d.NinePatch;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.google.a.a.an;

public class WidgetCarousel$WidgetCarouselStyle
{
  public NinePatch background;
  public boolean centerOnSelection = false;
  public float curveFalloff = 2.0F;
  public float flingTimeS = 1.0F;
  public NinePatch hScroll;
  public Integer hScrollBarHeightDp;
  public NinePatch hScrollKnob;
  public Integer hScrollKnobHeightDp;
  public Integer hScrollKnobWidthDp;
  public boolean keepActorsInside = true;
  public Drawable leftButton;
  public Drawable rightButton;
  public float scrollSpeedScalar = 1.1F;
  public boolean useScissor = false;
  public float widgetAlpha = 0.33F;
  public float widgetOverdraw = 0.6F;
  public float widgetScaling = 0.75F;
  public int widgetsPerSide = 2;

  public WidgetCarousel$WidgetCarouselStyle()
  {
  }

  public WidgetCarousel$WidgetCarouselStyle(NinePatch paramNinePatch1, NinePatch paramNinePatch2, NinePatch paramNinePatch3)
  {
    this.background = paramNinePatch1;
    this.hScroll = paramNinePatch2;
    this.hScrollKnob = paramNinePatch3;
  }

  public WidgetCarouselStyle setFalloffCurve(float paramFloat)
  {
    if (paramFloat > 0.0F);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.curveFalloff = paramFloat;
      return this;
    }
  }

  public WidgetCarouselStyle setFlingTimeS(float paramFloat)
  {
    if (paramFloat > 0.0F);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.flingTimeS = paramFloat;
      return this;
    }
  }

  public WidgetCarouselStyle setImagesPerSide(int paramInt)
  {
    if (paramInt > 0);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.widgetsPerSide = paramInt;
      return this;
    }
  }

  public WidgetCarouselStyle setScrollSpeedScalar(float paramFloat)
  {
    this.scrollSpeedScalar = paramFloat;
    return this;
  }

  public WidgetCarouselStyle setWidgetAlpha(float paramFloat)
  {
    if ((paramFloat >= 0.0F) && (paramFloat <= 1.0F));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.widgetAlpha = paramFloat;
      return this;
    }
  }

  public WidgetCarouselStyle setWidgetOverdraw(float paramFloat)
  {
    if ((paramFloat >= 0.0F) && (paramFloat <= 1.0F));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.widgetOverdraw = paramFloat;
      return this;
    }
  }

  public WidgetCarouselStyle setWidgetScaling(float paramFloat)
  {
    this.widgetScaling = paramFloat;
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.WidgetCarousel.WidgetCarouselStyle
 * JD-Core Version:    0.6.2
 */
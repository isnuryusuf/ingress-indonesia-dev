package com.nianticproject.ingress.common.ui.widget;

import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.BitmapFont.TextBounds;
import com.badlogic.gdx.graphics.g2d.BitmapFontCache;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.google.a.a.ag;
import com.nianticproject.ingress.shared.aj;

public class g extends Label
{
  private static final CharSequence b = "...";
  protected final int a;
  private float c = -1.0F;
  private float d = 0.0F;
  private CharSequence e;
  private boolean f = false;

  public g(CharSequence paramCharSequence, Label.LabelStyle paramLabelStyle, int paramInt)
  {
    super(paramCharSequence, paramLabelStyle);
    this.a = Math.max(0, paramInt);
    this.e = paramCharSequence;
  }

  private void a(BitmapFont.TextBounds paramTextBounds, CharSequence paramCharSequence)
  {
    paramTextBounds.set(getFontCache().getFont().getMultiLineBounds(paramCharSequence));
  }

  public float getMinWidth()
  {
    return 0.0F;
  }

  public void layout()
  {
    while (true)
    {
      try
      {
        aj.a("AutoEllipsisLabel.layout");
        super.layout();
        float f1 = getWidth();
        if (this.e != null)
        {
          Object localObject2;
          BitmapFont.TextBounds localTextBounds;
          if (this.c < 0.0F)
          {
            i = 1;
            if (i == 0)
              continue;
            localObject2 = this.e;
            localTextBounds = new BitmapFont.TextBounds();
            a(localTextBounds, (CharSequence)localObject2);
            this.d = 3.4028235E+38F;
            int j = -1 + this.e.length();
            if ((j > 1) && (localTextBounds.width > f1))
            {
              int k = ((CharSequence)localObject2).length();
              int m = Math.max(0, j - 1 - this.a);
              CharSequence localCharSequence1 = ((CharSequence)localObject2).subSequence(0, m);
              CharSequence localCharSequence2 = ((CharSequence)localObject2).subSequence(k - Math.max(0, j - 1 - m), k);
              localObject2 = localCharSequence1 + b + localCharSequence2;
              this.d = localTextBounds.width;
              a(localTextBounds, (CharSequence)localObject2);
              j--;
              continue;
            }
          }
          else
          {
            if (this.f)
            {
              boolean bool2 = f1 < this.c;
              i = 0;
              if (!bool2)
                continue;
              i = 1;
              continue;
            }
            if (f1 < this.c)
              break label298;
            boolean bool1 = f1 < this.d;
            i = 0;
            if (!bool1)
              continue;
            break label298;
          }
          this.c = Math.min(f1, localTextBounds.width);
          if (!ag.a(localObject2, getText()))
            super.setText((CharSequence)localObject2);
        }
        return;
      }
      finally
      {
        aj.b();
      }
      label298: int i = 1;
    }
  }

  public void setText(CharSequence paramCharSequence)
  {
    this.e = paramCharSequence;
    this.c = -1.0F;
    super.setText(this.e);
  }

  public void setWrap(boolean paramBoolean)
  {
    throw new UnsupportedOperationException("setWrap is not supported");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.widget.g
 * JD-Core Version:    0.6.2
 */
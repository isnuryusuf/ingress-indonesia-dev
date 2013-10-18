package com.nianticproject.ingress.common.ui.elements;

import com.a.a.c;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.google.a.a.an;
import com.nianticproject.ingress.common.w.l;

public final class SegmentedProgressBar extends Table
{
  private final int a;
  private final SegmentedProgressBar.SegmentedProgressBarStyle b;
  private final bn c;
  private float d;
  private float e;

  public SegmentedProgressBar(SegmentedProgressBar.SegmentedProgressBarStyle paramSegmentedProgressBarStyle, float paramFloat)
  {
    super("SegmentedProgressBar");
    an.a(bool1);
    boolean bool2;
    if (paramSegmentedProgressBarStyle != null)
    {
      bool2 = bool1;
      an.a(bool2);
      if (paramFloat < 0.0F)
        break label128;
    }
    while (true)
    {
      an.a(bool1);
      this.a = 8;
      this.b = paramSegmentedProgressBarStyle;
      this.c = new bn(this, (byte)0);
      this.e = 0.0F;
      this.d = 0.0F;
      float f = l.a(paramSegmentedProgressBarStyle.heightDp);
      while (i < 8)
      {
        add(new bm(this, i)).o().g().c(f).i();
        i++;
      }
      bool2 = false;
      break;
      label128: bool1 = false;
    }
  }

  public final int a()
  {
    return this.a;
  }

  public final void act(float paramFloat)
  {
    super.act(paramFloat);
    this.c.b(paramFloat);
  }

  public final bn b()
  {
    return this.c;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.SegmentedProgressBar
 * JD-Core Version:    0.6.2
 */
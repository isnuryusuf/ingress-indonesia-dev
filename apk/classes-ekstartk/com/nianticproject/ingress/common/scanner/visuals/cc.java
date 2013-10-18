package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.common.ui.ac;
import com.nianticproject.ingress.common.ui.hud.d;
import com.nianticproject.ingress.common.w.y;

public final class cc
  implements ac
{
  private final float b = 10.0F;
  private long c = 0L;
  private Label d = null;
  private float e;
  private float f;
  private float g;
  private Stage h;
  private boolean i = true;

  public cc(bt parambt)
  {
  }

  public final void a(long paramLong)
  {
    this.c = (paramLong + this.c);
    long l = Math.max(1L, 100L * this.c / bt.e(this.a).c());
    this.d.setText("-" + l + "%");
    if (this.i)
    {
      this.h.addActor(this.d);
      this.i = false;
    }
    this.g = 0.0F;
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    this.h = paramStage;
    this.d = new Label("", (Label.LabelStyle)paramSkin.get("large", Label.LabelStyle.class));
    this.d.setColor(paramSkin.getColor("red"));
  }

  public final boolean a(float paramFloat)
  {
    if (!this.i)
    {
      Rectangle localRectangle = d.a(this.h, bt.d(this.a));
      this.d.setX(localRectangle.x + localRectangle.width / 2.0F - this.d.getPrefWidth() / 2.0F);
      this.e = localRectangle.y;
      this.f = (localRectangle.y + 2.0F * localRectangle.height);
      this.g = (paramFloat + this.g);
      float f1 = y.b(this.g / 0.4F);
      Label localLabel = this.d;
      float f2 = this.e;
      float f3 = this.f;
      localLabel.setY(f2 + y.a(f1) * (f3 - f2));
      float f4 = y.a(1.0F - y.b((this.g - 9.2F) / 0.8F));
      this.d.getColor().a = (f1 * f4);
      if (this.g < 10.0F)
        break label205;
    }
    label205: for (boolean bool = true; ; bool = false)
    {
      this.i = bool;
      if (this.i)
      {
        this.c = 0L;
        this.d.remove();
      }
      return true;
    }
  }

  public final void dispose()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.cc
 * JD-Core Version:    0.6.2
 */
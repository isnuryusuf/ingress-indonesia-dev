package com.nianticproject.ingress.common.scanner.visuals;

import com.a.a.c;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.ui.a.f;
import com.nianticproject.ingress.common.ui.ac;
import com.nianticproject.ingress.common.ui.widget.ScrollLabel;

final class bb
  implements ac
{
  private Stage b = null;
  private Table c = null;
  private String d;

  bb(aw paramaw, String paramString)
  {
    this.d = paramString;
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    this.b = paramStage;
    Label.LabelStyle localLabelStyle = new Label.LabelStyle(paramSkin.getFont("default-font"), Color.WHITE);
    ScrollLabel localScrollLabel = new ScrollLabel(this.d, localLabelStyle, 10.0F);
    localScrollLabel.addAction(Actions.forever(Actions.sequence(new f(localScrollLabel), Actions.delay(6.0F, new com.nianticproject.ingress.common.ui.a.e()))));
    localScrollLabel.setAlignment(1);
    this.c = new Table();
    this.c.setWidth(this.b.getWidth());
    this.c.defaults().f().o().d(com.a.a.e.b(0.02F));
    this.c.setX(0.5F * (this.b.getWidth() - this.c.getWidth()));
    this.c.setY(0.6F * this.b.getHeight());
    this.c.add(localScrollLabel);
    this.c.setBackground(paramSkin.getDrawable("transparent-outline-red"));
    this.c.pack();
    this.b.addActor(this.c);
  }

  public final boolean a(float paramFloat)
  {
    return true;
  }

  public final void dispose()
  {
    if (this.b != null)
    {
      this.c.remove();
      this.b = null;
    }
    this.c = null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.bb
 * JD-Core Version:    0.6.2
 */
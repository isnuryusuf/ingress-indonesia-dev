package com.nianticproject.ingress.common.ui.b;

import com.a.a.c;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Button;
import com.badlogic.gdx.scenes.scene2d.ui.Button.ButtonStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.ui.ac;
import com.nianticproject.ingress.common.ui.widget.ProgressIndicator;
import com.nianticproject.ingress.common.ui.widget.ProgressIndicator.ProgressIndicatorStyle;

final class r
  implements ac
{
  private final String a;
  private Table b;
  private Button c;

  public r(String paramString)
  {
    this.a = paramString;
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    this.b = new Table();
    this.b.setX(0.0F);
    this.b.setY(0.0F);
    this.b.setWidth(paramStage.getWidth());
    this.b.setHeight(paramStage.getHeight());
    this.b.pad(15.0F);
    Table localTable = new Table();
    ProgressIndicator localProgressIndicator = new ProgressIndicator((ProgressIndicator.ProgressIndicatorStyle)paramSkin.get("ada-wheels-sm", ProgressIndicator.ProgressIndicatorStyle.class));
    localProgressIndicator.a(true);
    localTable.add(localProgressIndicator).i();
    localTable.row();
    localTable.add(new Label(this.a, (Label.LabelStyle)paramSkin.get("message-label", Label.LabelStyle.class))).i();
    this.c = new Button((Button.ButtonStyle)paramSkin.get("default", Button.ButtonStyle.class));
    this.c.setX(paramStage.getWidth());
    paramStage.addActor(this.c);
    this.b.add(localTable).i();
    paramStage.addActor(this.b);
  }

  public final boolean a(float paramFloat)
  {
    return true;
  }

  public final void dispose()
  {
    this.c.remove();
    this.b.remove();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.b.r
 * JD-Core Version:    0.6.2
 */
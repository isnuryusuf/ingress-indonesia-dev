package com.nianticproject.ingress.common.k;

import com.a.a.c;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.c.bn;
import com.nianticproject.ingress.common.c.bs;
import com.nianticproject.ingress.common.c.e;
import com.nianticproject.ingress.common.c.o;
import com.nianticproject.ingress.common.ui.elements.a;
import com.nianticproject.ingress.common.ui.widget.ScrollLabel;
import com.nianticproject.ingress.common.w.l;

public final class ab extends a
{
  private ScrollLabel a;
  private boolean b = false;
  private bn c = bs.aT.a();

  public ab()
  {
    o.a().e(this.c);
  }

  private void a()
  {
    if (this.b)
    {
      if (this.c != null)
        this.c.n();
      this.b = false;
    }
  }

  public final void a(String paramString)
  {
    if (!this.a.getText().equals(paramString))
    {
      this.a.setText(paramString);
      this.a.a();
      if (!this.b)
      {
        o.a().a(this.c);
        this.b = true;
      }
    }
  }

  public final boolean a(float paramFloat)
  {
    if (this.a.b())
      a();
    return super.a(paramFloat);
  }

  protected final Actor b(Skin paramSkin, Stage paramStage)
  {
    Table localTable = new Table();
    localTable.setWidth(paramStage.getWidth() - 10.0F);
    localTable.setX(5.0F);
    localTable.setY(l.a(44.0F));
    Label.LabelStyle localLabelStyle = new Label.LabelStyle((Label.LabelStyle)paramSkin.get("default", Label.LabelStyle.class));
    localLabelStyle.fontColor = Color.WHITE;
    this.a = new ScrollLabel("", localLabelStyle);
    localTable.add(this.a).g().j();
    localTable.row();
    return localTable;
  }

  public final void dispose()
  {
    a();
    super.dispose();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.k.ab
 * JD-Core Version:    0.6.2
 */
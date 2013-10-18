package com.nianticproject.ingress.common.v;

import com.a.a.c;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton;
import com.nianticproject.ingress.common.ui.widget.f;

class aj extends Table
{
  private Label a;
  private TextButton b;

  public aj(Skin paramSkin, String paramString)
  {
    a(paramSkin, paramString);
  }

  public TextButton a()
  {
    this.b.setVisible(true);
    return this.b;
  }

  protected void a(Skin paramSkin, String paramString)
  {
    Label.LabelStyle localLabelStyle = (Label.LabelStyle)paramSkin.get("small-white", Label.LabelStyle.class);
    b(paramSkin, paramString);
    this.a = new Label("", localLabelStyle);
    this.a.setWrap(true);
    add(this.a).o().k();
    row();
    this.b = new f(paramSkin);
    this.b.setVisible(false);
    add(this.b).b(Integer.valueOf(2)).o().a(Float.valueOf(0.5F), Float.valueOf(0.0F)).m().g(8.0F);
  }

  public void a(String paramString)
  {
    this.a.setText(paramString);
  }

  protected final void b(Skin paramSkin, String paramString)
  {
    setBackground(paramSkin.getDrawable("nav-button-clear"));
    Label.LabelStyle localLabelStyle = (Label.LabelStyle)paramSkin.get("small-white", Label.LabelStyle.class);
    Table localTable = new Table();
    localTable.setBackground(paramSkin.getDrawable("nav-button"));
    localTable.add(new Label(paramString, localLabelStyle)).a(0.0F, 8.0F, 0.0F, 8.0F);
    add(localTable).k().j().a(8.0F, -8.0F, 8.0F, 8.0F);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.v.aj
 * JD-Core Version:    0.6.2
 */
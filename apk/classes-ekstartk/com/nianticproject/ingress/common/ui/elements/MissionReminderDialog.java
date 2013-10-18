package com.nianticproject.ingress.common.ui.elements;

import com.a.a.c;
import com.a.a.e;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Button;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.utils.ClickListener;
import com.nianticproject.ingress.common.ui.widget.f;

public final class MissionReminderDialog extends ModalDialog
{
  private static final e e = e.a(0.06F);
  private static final e f = e.a(0.6F);
  private static final e g = e.a(0.15F);
  private static final e h = e.a(0.03F);
  private static final e i = e.a(0.03F);
  private final ClickListener a;
  private final ClickListener b;
  private final ClickListener d;

  public MissionReminderDialog(ClickListener paramClickListener1, ClickListener paramClickListener2, ClickListener paramClickListener3)
  {
    super(new MissionReminderDialog.Style());
    this.a = new w(this, paramClickListener1);
    this.b = new w(this, paramClickListener2);
    this.d = new w(this, paramClickListener3);
  }

  protected final Table a(Skin paramSkin, Stage paramStage, int paramInt)
  {
    Table localTable = new Table();
    Label localLabel = new Label("You have skipped some of the training missions. To ensure maximum agent effectiveness, it is recommended that you complete all training.", new Label.LabelStyle(paramSkin.getFont("default-font"), Color.WHITE));
    localLabel.setWrap(true);
    localLabel.setAlignment(10);
    localTable.defaults().d(e);
    localTable.add(localLabel).n().f();
    localTable.row();
    f localf1 = new f("Resume Training", paramSkin);
    localf1.addListener(this.a);
    f localf2 = new f("Ask Later", paramSkin);
    localf2.addListener(this.b);
    f localf3 = new f("Never Ask Again", paramSkin);
    localf3.addListener(this.d);
    localTable.add(localf1).o().g().e(h).g(i).e(e).a(f, g);
    localTable.row();
    localTable.add(localf2).o().g().e(h).g(i).a(f, g);
    localTable.row();
    localTable.add(localf3).o().g().e(h).g(i).a(f, g);
    localTable.padBottom(e);
    return localTable;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.MissionReminderDialog
 * JD-Core Version:    0.6.2
 */
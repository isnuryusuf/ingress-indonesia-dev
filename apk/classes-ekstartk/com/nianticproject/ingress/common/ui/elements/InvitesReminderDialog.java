package com.nianticproject.ingress.common.ui.elements;

import com.a.a.c;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.badlogic.gdx.scenes.scene2d.ui.TextButton.TextButtonStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Window;
import com.nianticproject.ingress.common.a.a;
import com.nianticproject.ingress.common.ac;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.ui.widget.f;

public final class InvitesReminderDialog extends ModalDialog
{
  private final ac a;
  private float b = 0.0F;

  public InvitesReminderDialog(ac paramac)
  {
    super(new InvitesReminderDialog.Style());
    a.a("InviteNag", "show");
    this.a = paramac;
  }

  protected final Table a(Skin paramSkin, Stage paramStage, int paramInt)
  {
    Label.LabelStyle localLabelStyle1 = (Label.LabelStyle)paramSkin.get("default-blue", Label.LabelStyle.class);
    Label.LabelStyle localLabelStyle2 = (Label.LabelStyle)paramSkin.get("default-yellow", Label.LabelStyle.class);
    String str = p.a().A().e();
    Table localTable1 = new Table();
    localTable1.add(new Label("You have ", localLabelStyle1));
    localTable1.add(new Label(str, localLabelStyle2));
    localTable1.add(new Label(" unused invites.", localLabelStyle1));
    float f = 0.04F * paramStage.getWidth();
    f localf = new f("Recruit", (TextButton.TextButtonStyle)paramSkin.get("default", TextButton.TextButtonStyle.class));
    Table localTable2 = new Table();
    localf.addListener(new v(this));
    localTable2.add(localf).a(com.a.a.e.a(0.4F)).n().i().k(f).i(f).j(f);
    Table localTable3 = new Table();
    localTable3.add(localTable1);
    localTable3.row();
    localTable3.add(localTable2).o().g();
    return localTable3;
  }

  protected final void a(c<?> paramc)
  {
    paramc.j().n().g();
  }

  protected final void a(Window paramWindow, Skin paramSkin)
  {
    paramWindow.setBackground(paramSkin.getDrawable("default-message-window"));
  }

  public final boolean a(float paramFloat)
  {
    return super.a(paramFloat);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.InvitesReminderDialog
 * JD-Core Version:    0.6.2
 */
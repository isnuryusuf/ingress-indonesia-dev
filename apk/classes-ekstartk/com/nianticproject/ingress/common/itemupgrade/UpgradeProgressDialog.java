package com.nianticproject.ingress.common.itemupgrade;

import com.a.a.c;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.ui.Label;
import com.badlogic.gdx.scenes.scene2d.ui.Label.LabelStyle;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.google.a.a.an;
import com.nianticproject.ingress.common.ui.elements.ModalDialog;
import com.nianticproject.ingress.common.ui.widget.ScrollLabel;

public final class UpgradeProgressDialog extends ModalDialog
{
  private ScrollLabel a;
  private final String b;

  private UpgradeProgressDialog(UpgradeProgressDialog.Style paramStyle, String paramString)
  {
    super(paramStyle);
    this.b = ((String)an.a(paramString));
  }

  public UpgradeProgressDialog(String paramString)
  {
    this(new UpgradeProgressDialog.Style(), paramString);
  }

  protected final Table a(Skin paramSkin, Stage paramStage, int paramInt)
  {
    Label.LabelStyle localLabelStyle = (Label.LabelStyle)paramSkin.get("large", Label.LabelStyle.class);
    this.a = new ScrollLabel("", localLabelStyle, 16.0F);
    this.a.setAlignment(1);
    this.a.setWrap(true);
    Table localTable = new Table();
    localTable.add(new Label(this.b, localLabelStyle)).o().j().i();
    localTable.row();
    localTable.add(this.a).n().f().i();
    return localTable;
  }

  public final void a(String paramString)
  {
    this.a.setText(paramString);
    this.a.clearActions();
    this.a.a();
    this.a.addAction(Actions.delay(3.0F, Actions.run(new q(this))));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.itemupgrade.UpgradeProgressDialog
 * JD-Core Version:    0.6.2
 */
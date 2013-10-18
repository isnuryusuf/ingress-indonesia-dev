package com.nianticproject.ingress.common.scanner.modes;

import com.badlogic.gdx.scenes.scene2d.actions.Actions;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.h.l;
import com.nianticproject.ingress.common.scanner.k;
import com.nianticproject.ingress.common.ui.elements.ConfirmModalDialog;
import com.nianticproject.ingress.common.ui.t;

final class bk extends ConfirmModalDialog
{
  private final String a;
  private final l b;
  private final t d;
  private final Table e;

  public bk(String paramString, l paraml, t paramt, Table paramTable)
  {
    super("Recycle: Portal Key?", "[ This object will be destroyed ]", "CONFIRM", "CANCEL");
    this.a = paramString;
    this.b = paraml;
    this.d = paramt;
    this.e = paramTable;
    paramTable.addAction(Actions.fadeOut(0.25F));
  }

  protected final void b()
  {
    this.b.a(this.a, null);
    this.d.b(k.class);
  }

  protected final void c()
  {
    this.e.addAction(Actions.fadeIn(0.25F));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.bk
 * JD-Core Version:    0.6.2
 */
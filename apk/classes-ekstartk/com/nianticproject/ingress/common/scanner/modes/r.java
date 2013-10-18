package com.nianticproject.ingress.common.scanner.modes;

import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.ui.elements.a;
import com.nianticproject.ingress.common.ui.widget.f;
import com.nianticproject.ingress.common.w.l;

final class r extends a
{
  r(p paramp)
  {
  }

  protected final Actor b(Skin paramSkin, Stage paramStage)
  {
    Table localTable = new Table(paramSkin);
    f localf = new f("CANCEL", paramSkin);
    localf.addListener(new s(this));
    localTable.add(localf);
    localTable.setWidth(paramStage.getWidth());
    localTable.setY(l.a(60.0F));
    return localTable;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.r
 * JD-Core Version:    0.6.2
 */
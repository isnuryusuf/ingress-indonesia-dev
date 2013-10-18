package com.nianticproject.ingress.common.scanner.modes;

import com.a.a.c;
import com.a.a.e;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.ui.Table;
import com.nianticproject.ingress.common.ui.elements.a;
import com.nianticproject.ingress.common.ui.widget.f;
import com.nianticproject.ingress.common.w.l;

final class v extends a
{
  v(u paramu)
  {
  }

  protected final Actor b(Skin paramSkin, Stage paramStage)
  {
    Table localTable = new Table(paramSkin);
    f localf1 = new f("CONFIRM", paramSkin);
    localf1.addListener(new w(this));
    localTable.add(localf1).a(e.a(0.33F));
    f localf2 = new f("BACK", paramSkin);
    localf2.addListener(new x(this));
    localTable.add(localf2).a(e.a(0.33F)).i(16.0F);
    localTable.setWidth(paramStage.getWidth());
    localTable.setY(16.0F + l.a(60.0F));
    if (u.c(this.a) != null)
      u.c(this.a).b(localTable.getY() + u.c(this.a).a());
    return localTable;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.modes.v
 * JD-Core Version:    0.6.2
 */
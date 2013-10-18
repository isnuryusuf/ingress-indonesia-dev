package com.nianticproject.ingress.common.ui.elements;

import com.badlogic.gdx.scenes.scene2d.ui.Table;
import java.util.Iterator;
import java.util.List;

final class y
  implements Runnable
{
  y(ModalDialog paramModalDialog, Table paramTable)
  {
  }

  public final void run()
  {
    Iterator localIterator = ModalDialog.b(this.b).iterator();
    while (localIterator.hasNext())
      ((aa)localIterator.next()).c();
    ModalDialog localModalDialog = this.b;
    if (ModalDialog.c(this.b) == null);
    for (boolean bool = true; ; bool = false)
    {
      ModalDialog.a(localModalDialog, bool);
      this.a.remove();
      return;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.y
 * JD-Core Version:    0.6.2
 */
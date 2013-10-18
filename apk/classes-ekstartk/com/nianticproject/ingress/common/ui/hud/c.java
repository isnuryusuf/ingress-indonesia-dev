package com.nianticproject.ingress.common.ui.hud;

import com.badlogic.gdx.math.Rectangle;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.utils.Array;
import java.util.Iterator;

public class c
  implements b
{
  private Array<b> a = new Array();

  public void a()
  {
    if (this.a == null);
    while (true)
    {
      return;
      for (int i = 0; i < this.a.size; i++)
        ((b)this.a.get(i)).a();
    }
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    if (this.a == null);
    while (true)
    {
      return;
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext())
        ((b)localIterator.next()).a(paramSkin, paramStage);
    }
  }

  public final void a(b[] paramArrayOfb)
  {
    dispose();
    this.a = new Array(false, paramArrayOfb);
  }

  public boolean a(float paramFloat)
  {
    if (this.a == null);
    do
    {
      return false;
      for (int i = 0; i < this.a.size; i++)
      {
        b localb = (b)this.a.get(i);
        if (!localb.a(paramFloat))
        {
          localb.dispose();
          this.a.removeIndex(i);
          i--;
        }
      }
    }
    while (this.a.size <= 0);
    return true;
  }

  public final boolean a(Rectangle paramRectangle)
  {
    if (this.a == null)
      return false;
    for (int i = 0; i < this.a.size; i++)
      if (!((b)this.a.get(i)).a(paramRectangle))
      {
        this.a.removeIndex(i);
        i--;
      }
    return true;
  }

  public void dispose()
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
      ((b)localIterator.next()).dispose();
    this.a = null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.hud.c
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.common.ui;

import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.nianticproject.ingress.common.t.b;
import com.nianticproject.ingress.common.t.c;
import com.nianticproject.ingress.shared.aj;
import java.util.Iterator;

public final class ad
  implements Disposable
{
  private static final b a = c.a("UI Render");
  private static final b b = c.a("UI Update");
  private final Array<ac> c = new Array(false, 4);
  private Skin d;
  private Stage e;

  public final Stage a()
  {
    return this.e;
  }

  public final void a(float paramFloat)
  {
    while (true)
    {
      try
      {
        aj.a("UiRenderer.onUpdate");
        b.b();
        i = 0;
        if (i < this.c.size)
        {
          ac localac = (ac)this.c.get(i);
          if (!localac.a(paramFloat))
          {
            localac.dispose();
            this.c.removeIndex(i);
            j = i - 1;
            break label100;
          }
        }
        else
        {
          this.e.act(paramFloat);
          b.c();
          return;
        }
      }
      finally
      {
        aj.b();
      }
      int j = i;
      label100: int i = j + 1;
    }
  }

  public final void a(int paramInt1, int paramInt2)
  {
    this.e.setViewport(paramInt1, paramInt2, false);
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    try
    {
      aj.a("UiRenderer ctor");
      this.e = paramStage;
      this.d = paramSkin;
      Iterator localIterator = this.c.iterator();
      while (localIterator.hasNext())
        ((ac)localIterator.next()).a(this.d, this.e);
    }
    finally
    {
      aj.b();
    }
    aj.b();
  }

  public final void a(ac paramac)
  {
    if (!this.c.contains(paramac, true))
    {
      this.c.add(paramac);
      if ((this.d != null) && (this.e != null))
        paramac.a(this.d, this.e);
    }
  }

  public final void b()
  {
    try
    {
      aj.a("UiRenderer.onDrawFrame");
      a.b();
      t.a(this.e);
      b.c();
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final boolean b(ac paramac)
  {
    boolean bool = this.c.removeValue(paramac, true);
    if (bool)
      paramac.dispose();
    return bool;
  }

  public final void dispose()
  {
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext())
      ((ac)localIterator.next()).dispose();
    this.c.clear();
    this.e.dispose();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.ad
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.common.j;

import a;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.utils.Array;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.shared.ag;
import com.nianticproject.ingress.shared.ah;
import java.util.Iterator;

class p
  implements o
{
  private static final aa e = new aa(p.class);
  protected final Array<o> a;
  protected final Matrix4 b = new Matrix4();
  protected final Matrix4 c = new Matrix4();
  protected final Matrix4 d = new Matrix4();

  p(Array<o> paramArray)
  {
    this.a = paramArray;
  }

  public final void a(Matrix4 paramMatrix4)
  {
    this.b.set(paramMatrix4);
    this.c.set(paramMatrix4);
    Matrix4.inv(this.c.val);
  }

  public void a(Matrix4 paramMatrix4, f paramf, n paramn)
  {
    if (!a.b())
      return;
    if (this.a.size == 0)
      return;
    this.d.set(paramMatrix4);
    Matrix4.mul(this.d.val, this.b.val);
    int i = 0;
    while (i < this.a.size)
      try
      {
        ((o)this.a.get(i)).a(this.d, paramf, paramn);
        i++;
      }
      catch (RuntimeException localRuntimeException)
      {
        do
          e.b(localRuntimeException, "Unexpected exception in draw.");
        while (ag.a != ah.a);
        throw localRuntimeException;
      }
  }

  protected void a(o paramo)
  {
    paramo.dispose();
  }

  public boolean a()
  {
    for (int i = 0; ; i++)
    {
      int j = this.a.size;
      boolean bool = false;
      if (i < j)
      {
        if (((o)this.a.get(i)).a())
          bool = true;
      }
      else
        return bool;
    }
  }

  public boolean a(float paramFloat)
  {
    for (int i = 0; i < this.a.size; i++)
    {
      o localo = (o)this.a.get(i);
      if (!localo.a(paramFloat))
      {
        a(localo);
        this.a.removeIndex(i);
        i--;
      }
    }
    return true;
  }

  public void dispose()
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
      a((o)localIterator.next());
    this.a.clear();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.p
 * JD-Core Version:    0.6.2
 */
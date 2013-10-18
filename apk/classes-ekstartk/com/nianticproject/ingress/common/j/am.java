package com.nianticproject.ingress.common.j;

import com.badlogic.gdx.graphics.glutils.IndexBufferObject;
import com.badlogic.gdx.utils.Disposable;
import com.google.a.c.jc;
import java.util.Set;

public final class am
  implements Disposable
{
  private static final Set<am> a = jc.a();
  private IndexBufferObject b;
  private final int c;

  public am(short[] paramArrayOfShort)
  {
    this.c = paramArrayOfShort.length;
    this.b = new IndexBufferObject(true, this.c);
    this.b.setIndices(paramArrayOfShort, 0, this.c);
    a.add(this);
  }

  public final void a()
  {
    this.b.bind();
  }

  public final void dispose()
  {
    if (this.b != null)
    {
      this.b.dispose();
      a.remove(this);
      this.b = null;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.am
 * JD-Core Version:    0.6.2
 */
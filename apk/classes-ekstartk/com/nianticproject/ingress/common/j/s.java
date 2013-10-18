package com.nianticproject.ingress.common.j;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.glutils.IndexBufferObject;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.utils.Disposable;
import com.google.a.a.an;
import com.google.a.c.jc;
import java.util.Set;

public final class s
  implements Disposable
{
  private static final Set<s> a = jc.a();
  private IndexBufferObject b;
  private IndexBufferObject c;
  private short[] d;
  private boolean e;
  private boolean f;
  private int g;

  public s()
  {
    a(0, false);
  }

  private void a(int paramInt, boolean paramBoolean)
  {
    if (paramInt <= 65536);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "Suspiciously large # of indices");
      if (this.g < paramInt)
      {
        short[] arrayOfShort = this.d;
        this.g = paramInt;
        this.d = new short[paramInt];
        this.e = true;
        if ((paramBoolean) && (arrayOfShort != null))
          System.arraycopy(arrayOfShort, 0, this.d, 0, arrayOfShort.length);
        dispose();
        this.b = new IndexBufferObject(paramInt);
        this.c = new IndexBufferObject(paramInt);
        a.add(this);
      }
      return;
    }
  }

  public final int a()
  {
    return this.g;
  }

  public final void a(int paramInt1, int paramInt2, t paramt, ShaderProgram paramShaderProgram)
  {
    boolean bool1;
    if (!this.f)
    {
      bool1 = true;
      an.b(bool1);
      if (paramInt2 > this.g)
        break label141;
    }
    label141: for (boolean bool2 = true; ; bool2 = false)
    {
      an.a(bool2);
      if (this.e)
      {
        this.e = false;
        IndexBufferObject localIndexBufferObject = this.b;
        this.b = this.c;
        this.c = localIndexBufferObject;
        this.b.setIndices(this.d, 0, paramInt2);
      }
      this.b.bind();
      this.f = true;
      paramt.a(paramInt1, paramShaderProgram);
      Gdx.gl20.glDrawElements(4, paramInt2, 5123, 0);
      paramt.a(paramShaderProgram);
      an.b(this.f);
      this.b.unbind();
      this.f = false;
      return;
      bool1 = false;
      break;
    }
  }

  public final short[] a(int paramInt)
  {
    a(paramInt, true);
    this.e = true;
    return this.d;
  }

  public final void dispose()
  {
    if (this.b != null)
    {
      this.b.dispose();
      this.b = null;
      this.c.dispose();
      this.c = null;
    }
    a.remove(this);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.s
 * JD-Core Version:    0.6.2
 */
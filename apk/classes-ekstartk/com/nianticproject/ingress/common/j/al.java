package com.nianticproject.ingress.common.j;

import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.nianticproject.ingress.common.w.ac;

public abstract class al extends ad
{
  protected final boolean b()
  {
    this.a = d();
    if (this.a == null)
      return false;
    this.a.begin();
    if (j())
      return true;
    this.a.end();
    return false;
  }

  public final void c()
  {
    k();
    this.a.end();
  }

  protected abstract ShaderProgram d();

  public void dispose()
  {
    ac.a(this.a);
    this.a = null;
  }

  protected abstract boolean j();

  protected void k()
  {
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.al
 * JD-Core Version:    0.6.2
 */
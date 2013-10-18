package com.nianticproject.ingress.common.scanner;

import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.nianticproject.ingress.shared.ai;

final class fl extends fo
{
  private final ai j;

  public fl(ai paramai1, ai paramai2)
  {
    super(paramai1);
    this.j = paramai2;
  }

  protected final ShaderProgram d()
  {
    return ag.aH;
  }

  protected final boolean j()
  {
    h().setUniformf("u_fightColor", ea.a(this.j));
    return super.j();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.fl
 * JD-Core Version:    0.6.2
 */
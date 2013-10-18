package com.nianticproject.ingress.common.scanner.a;

import com.badlogic.gdx.graphics.Mesh;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;

final class s
{
  private final Mesh a;
  private final short[] b;

  s(Mesh paramMesh, short[] paramArrayOfShort)
  {
    this.a = paramMesh;
    this.b = paramArrayOfShort;
  }

  final void a(ShaderProgram paramShaderProgram)
  {
    int i = 0;
    int j = 0;
    while (i < this.b.length)
    {
      this.a.render(paramShaderProgram, 3, j, this.b[i]);
      j += this.b[i];
      i++;
    }
  }

  final void a(ShaderProgram paramShaderProgram, int paramInt)
  {
    this.a.render(paramShaderProgram, paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.a.s
 * JD-Core Version:    0.6.2
 */
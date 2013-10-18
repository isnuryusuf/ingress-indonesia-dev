package com.nianticproject.ingress.common.ui;

import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.math.Matrix4;

public final class g extends k
{
  private int b;
  private int c;
  private Matrix4 d = new Matrix4();
  private Matrix4 e = new Matrix4();

  public final void a(int paramInt)
  {
    this.b = paramInt;
  }

  public final void b(int paramInt)
  {
    this.c = paramInt;
  }

  public final void draw(Texture paramTexture, float[] paramArrayOfFloat, int paramInt1, int paramInt2)
  {
    if (this.b == 0)
      super.draw(paramTexture, paramArrayOfFloat, paramInt1, paramInt2);
    int i;
    do
    {
      return;
      i = Math.max(0, Math.min(this.c, paramInt1 + this.b));
    }
    while (paramInt2 <= 0);
    float f = paramArrayOfFloat[0] - paramArrayOfFloat[i];
    this.e.set(getTransformMatrix());
    this.d.set(getTransformMatrix()).translate(f, 0.0F, 0.0F);
    setTransformMatrix(this.d);
    super.draw(paramTexture, paramArrayOfFloat, i, paramInt2);
    setTransformMatrix(this.e);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.g
 * JD-Core Version:    0.6.2
 */
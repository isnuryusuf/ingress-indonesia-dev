package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.google.a.d.u;
import com.nianticproject.ingress.common.scanner.fp;

final class bm
{
  private final u b;
  private final float c;
  private final Color d;
  private final int e;
  private final float f;
  private final float g;
  private final float h;
  private final float i;
  private final Vector2 j = new Vector2();
  private final Vector3 k = new Vector3();
  private int l;

  public bm(bj parambj, u paramu, Color paramColor, int paramInt, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.b = paramu;
    this.c = 10.0F;
    this.d = paramColor;
    this.e = paramInt;
    this.f = paramFloat1;
    this.g = paramFloat2;
    this.h = paramFloat3;
    this.i = paramFloat4;
    bj.a(parambj).a(paramu, this.j);
    this.j.sub(bj.b(parambj).c());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.bm
 * JD-Core Version:    0.6.2
 */
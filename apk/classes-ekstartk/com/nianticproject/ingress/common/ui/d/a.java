package com.nianticproject.ingress.common.ui.d;

import com.badlogic.gdx.input.GestureDetector;

public final class a extends GestureDetector
{
  private final f a = new f();
  private final int[] b = new int[2];
  private final int[] c = new int[2];
  private final int[] d = new int[2];
  private int e;
  private final b f;
  private int g;
  private int h;
  private final long i;
  private long j;
  private int k;
  private int l;

  public a(b paramb)
  {
    this(paramb, (byte)0);
  }

  private a(b paramb, byte paramByte)
  {
    super(20.0F, 0.4F, 0.5F, 0.15F, paramb);
    this.f = paramb;
    this.i = 400000000L;
  }

  public final boolean touchDown(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.e < 2)
    {
      this.c[this.e] = paramInt1;
      this.d[this.e] = paramInt2;
      this.b[this.e] = paramInt3;
    }
    this.e = (1 + this.e);
    if (this.e == 2)
    {
      this.a.a(this.c[0], this.d[0], this.c[1], this.d[1]);
      this.f.a(this.a.b(), this.a.c());
      this.g = ((this.c[0] + this.c[1]) / 2);
      this.h = ((this.d[0] + this.d[1]) / 2);
      this.f.pan(this.g, this.h, 0.0F, 0.0F);
    }
    return super.touchDown(paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public final boolean touchDragged(int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.e == 2)
    {
      if (paramInt3 != this.b[0])
        break label181;
      this.c[0] = paramInt1;
      this.d[0] = paramInt2;
      this.a.b(this.c[0], this.d[0], this.c[1], this.d[1]);
    }
    while (true)
    {
      this.f.a(this.a.b(), this.a.c());
      int m = (this.c[0] + this.c[1]) / 2;
      int n = (this.d[0] + this.d[1]) / 2;
      this.f.pan(this.g, this.h, m - this.g, n - this.h);
      this.g = m;
      this.h = n;
      return super.touchDragged(paramInt1, paramInt2, paramInt3);
      label181: if (paramInt3 == this.b[1])
      {
        this.c[1] = paramInt1;
        this.d[1] = paramInt2;
        this.a.b(this.c[0], this.d[0], this.c[1], this.d[1]);
      }
    }
  }

  public final boolean touchUp(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.e > 0)
    {
      long l1 = System.nanoTime();
      if ((this.e == this.k) && (l1 - this.j < this.i))
      {
        this.l = (1 + this.l);
        this.j = l1;
        this.f.a(this.l, this.k);
      }
    }
    else
    {
      if (this.e != 2)
        break label308;
      if ((paramInt3 == this.b[0]) || (paramInt3 == this.b[1]))
      {
        if (paramInt3 != this.b[0])
          break label270;
        this.a.b(paramInt1, paramInt2, this.c[1], this.d[1]);
        label135: this.a.a();
        this.f.a(this.a.b(), this.a.c());
        if (paramInt3 == this.b[0])
        {
          this.c[0] = this.c[1];
          this.d[0] = this.d[1];
          this.b[0] = this.b[1];
        }
        this.e = (-1 + this.e);
        this.f.pan(this.g, this.h, 0.0F, 0.0F);
      }
    }
    while (true)
    {
      return super.touchUp(paramInt1, paramInt2, paramInt3, paramInt4);
      this.k = this.e;
      this.l = 1;
      break;
      label270: if (paramInt3 != this.b[1])
        break label135;
      this.a.b(this.c[0], this.d[0], paramInt1, paramInt2);
      break label135;
      label308: this.e = 0;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.d.a
 * JD-Core Version:    0.6.2
 */
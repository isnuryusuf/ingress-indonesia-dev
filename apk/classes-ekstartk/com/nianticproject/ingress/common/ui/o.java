package com.nianticproject.ingress.common.ui;

import com.badlogic.gdx.ApplicationListener;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.g2d.SpriteBatch;
import com.badlogic.gdx.graphics.g2d.TextureAtlas;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.utils.BufferUtils;
import com.google.a.a.an;
import com.nianticproject.ingress.common.j.aa;
import com.nianticproject.ingress.common.t.b;
import com.nianticproject.ingress.common.x.i;
import com.nianticproject.ingress.shared.ag;
import com.nianticproject.ingress.shared.ah;
import com.nianticproject.ingress.shared.aj;
import java.nio.IntBuffer;

public final class o
  implements ApplicationListener, x
{
  private static final b a = com.nianticproject.ingress.common.t.c.a("SpriteBatch.uploadVertex");
  private static final b b = com.nianticproject.ingress.common.t.c.a("SpriteBatch.render");
  private static boolean c = true;
  private static final IntBuffer d = BufferUtils.newIntBuffer(1);
  private static SpriteBatch e;
  private static TextureAtlas f;
  private static Skin g;
  private final t h;
  private final e i;
  private final long j;
  private boolean k = false;
  private long l;
  private int m;
  private int n;

  public o(t paramt, e parame, long paramLong)
  {
    this.h = paramt;
    this.i = parame;
    this.j = paramLong;
  }

  public static void a()
  {
    aj.a("SubActivityApplicationListener.createResources");
    com.nianticproject.ingress.common.b.c.a("CreateMainUiTextureAtlas", com.nianticproject.ingress.common.b.c.c("{data:packed/data/common.atlas,data-xhdpi:packed/data-xhdpi/common.atlas,data-xxhdpi:packed/data-xxhdpi/common.atlas}"), new p());
    i.a().a(new q("LoadMainUiSkin"));
    i.a().a(new r("CreateSpriteBatch"));
    aj.b();
  }

  public static void a(boolean paramBoolean)
  {
    c = paramBoolean;
  }

  public static void b()
  {
    g.dispose();
    e.dispose();
  }

  public final Stage a(int paramInt1, int paramInt2)
  {
    try
    {
      aj.a("SubActivityApplicationListener.newStage");
      Stage localStage = new Stage(paramInt1, paramInt2, false, e);
      return localStage;
    }
    finally
    {
      aj.b();
    }
  }

  public final void b(boolean paramBoolean)
  {
    this.k = paramBoolean;
  }

  public final boolean c()
  {
    return this.k;
  }

  public final void create()
  {
    try
    {
      aj.a("SubActivityApplicationListener.create");
      d.position(0);
      d.limit(d.capacity());
      Gdx.gl20.glGetIntegerv(3379, d);
      com.nianticproject.ingress.common.a.a.a(d.get(0), "GL_MAX_TEXTURE_SIZE");
      an.a(f);
      an.a(g);
      an.a(e);
      this.h.a(g, this);
      aj.b();
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final void dispose()
  {
    this.h.h();
    b();
  }

  public final void pause()
  {
    try
    {
      aj.a("SubActivityApplicationListener.pause");
      this.h.f();
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final void render()
  {
    boolean bool = true;
    try
    {
      aj.a("SubActivityApplicationListener.render");
      if (!this.k)
      {
        long l1 = Math.max(this.i.c(), this.j) + this.l;
        this.l = ((t.a(l1) / 20L + 4L * this.l) / 5L);
      }
      this.i.a();
      t localt = this.h;
      float f1;
      if (this.k)
      {
        f1 = 0.0F;
        localt.a(f1);
        GL20 localGL20 = Gdx.gl20;
        localGL20.glDepthMask(true);
        localGL20.glDepthFunc(513);
        localGL20.glEnable(2929);
        localGL20.glViewport(0, 0, this.m, this.n);
        localGL20.glClear(16640);
        this.h.e();
        if (c)
          if (ag.a == ah.a)
            break label212;
      }
      while (true)
      {
        aa.a(bool);
        com.nianticproject.ingress.common.f.a.c();
        i.a().d();
        com.nianticproject.ingress.common.t.c.b();
        return;
        float f2 = this.i.b();
        f1 = f2;
        break;
        label212: bool = false;
      }
    }
    finally
    {
      aj.b();
    }
  }

  public final void resize(int paramInt1, int paramInt2)
  {
    try
    {
      aj.a("SubActivityApplicationListener.resize");
      this.m = paramInt1;
      this.n = paramInt2;
      this.h.a(paramInt1, paramInt2);
      return;
    }
    finally
    {
      aj.b();
    }
  }

  public final void resume()
  {
    try
    {
      aj.a("SubActivityApplicationListener.resume");
      this.h.g();
      this.i.d();
      return;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.o
 * JD-Core Version:    0.6.2
 */
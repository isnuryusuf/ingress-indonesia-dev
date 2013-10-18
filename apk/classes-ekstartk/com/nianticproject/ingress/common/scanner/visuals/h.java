package com.nianticproject.ingress.common.scanner.visuals;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.Texture.TextureFilter;
import com.badlogic.gdx.graphics.Texture.TextureWrap;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.google.a.a.an;
import com.google.a.c.du;
import com.google.a.c.hc;
import com.google.a.c.jc;
import com.nianticproject.ingress.common.b.c;
import com.nianticproject.ingress.common.j.n;
import com.nianticproject.ingress.common.j.o;
import com.nianticproject.ingress.common.j.t;
import com.nianticproject.ingress.common.model.GameState;
import com.nianticproject.ingress.common.scanner.ea;
import com.nianticproject.ingress.common.scanner.eo;
import com.nianticproject.ingress.common.scanner.fp;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.w.ac;
import com.nianticproject.ingress.common.w.ad;
import com.nianticproject.ingress.gameentity.components.CapturedRegion;
import com.nianticproject.ingress.gameentity.components.Resonator;
import com.nianticproject.ingress.gameentity.components.b;
import com.nianticproject.ingress.shared.ai;
import com.nianticproject.ingress.shared.aj;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

public final class h
  implements o
{
  private static final aa a = new aa(h.class);
  private static ShaderProgram b;
  private static Texture c;
  private final fp d;
  private final bc e;
  private final Matrix4 f = new Matrix4();
  private final Vector2 g = new Vector2();
  private final t h;
  private final HashMap<String, l> i = hc.b();
  private final HashSet<String> j = jc.a();
  private GameState k;
  private boolean l;
  private float m;

  public h(fp paramfp)
  {
    this.d = ((fp)an.a(paramfp));
    this.e = new i(this, this.d);
    VertexAttribute[] arrayOfVertexAttribute = new VertexAttribute[2];
    arrayOfVertexAttribute[0] = new VertexAttribute(0, 4, "a_position");
    arrayOfVertexAttribute[1] = new VertexAttribute(5, 4, "a_color");
    this.h = new t(0, arrayOfVertexAttribute);
  }

  private static float a(Vector2 paramVector21, Vector2 paramVector22, Vector2 paramVector23)
  {
    return ((paramVector22.x - paramVector21.x) * (paramVector21.y - paramVector23.y) - (paramVector22.y - paramVector21.y) * (paramVector21.x - paramVector23.x)) / paramVector21.dst(paramVector22);
  }

  private static int a(float[] paramArrayOfFloat, int paramInt, Vector2 paramVector2, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    int n = paramInt + 1;
    paramArrayOfFloat[paramInt] = paramVector2.x;
    int i1 = n + 1;
    paramArrayOfFloat[n] = paramVector2.y;
    int i2 = i1 + 1;
    paramArrayOfFloat[i1] = paramFloat1;
    int i3 = i2 + 1;
    paramArrayOfFloat[i2] = paramFloat2;
    int i4 = i3 + 1;
    paramArrayOfFloat[i3] = paramFloat3;
    return i4;
  }

  public static void b()
  {
    ad.a("shaders/captured_region.glsl.vert", "shaders/captured_region.glsl.frag", new j());
    c.a("CreateRegionTexture", c.b("scanner/region_tiling.png", true), Texture.TextureFilter.MipMapLinearLinear, Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat, Texture.TextureWrap.Repeat, new k());
  }

  public static void c()
  {
    ac.a(b);
    b = null;
    ac.a(c);
    c = null;
  }

  public final void a(Matrix4 paramMatrix4, com.nianticproject.ingress.common.j.f paramf, n paramn)
  {
    while (true)
    {
      try
      {
        aj.a("CapturedRegionVisuals.draw");
        boolean bool1 = this.i.isEmpty();
        if (bool1)
          return;
        if (this.l)
        {
          this.l = false;
          if (this.i.isEmpty())
            break label697;
          bool2 = true;
          an.b(bool2);
          this.e.b();
          this.j.clear();
          this.d.a(this.d.a(), this.g);
          Vector2 localVector22 = this.g;
          localVector22.x %= 1.0F;
          Vector2 localVector23 = this.g;
          localVector23.y %= 1.0F;
          Vector2 localVector24 = new Vector2();
          float[] arrayOfFloat = this.h.a(9 * this.i.size());
          int n = 0;
          Iterator localIterator = this.i.values().iterator();
          if (localIterator.hasNext())
          {
            l locall = (l)localIterator.next();
            Color localColor = ea.a(l.a(locall));
            float f2 = Color.toFloatBits(localColor.r, localColor.g, localColor.b, 0.6F);
            this.j.add(l.b(locall));
            this.j.add(l.c(locall));
            this.j.add(l.d(locall));
            float f3 = com.nianticproject.ingress.gameentity.components.k.a(l.b(locall), this.k);
            float f4 = com.nianticproject.ingress.gameentity.components.k.a(l.c(locall), this.k);
            float f5 = com.nianticproject.ingress.gameentity.components.k.a(l.d(locall), this.k);
            Vector2 localVector25 = l.e(locall).b();
            Vector2 localVector26 = l.f(locall).b();
            Vector2 localVector27 = l.g(locall).b();
            localVector24.set(localVector25).add(localVector26).add(localVector27).mul(0.3333333F);
            n = a(arrayOfFloat, a(arrayOfFloat, a(arrayOfFloat, a(arrayOfFloat, a(arrayOfFloat, a(arrayOfFloat, a(arrayOfFloat, a(arrayOfFloat, a(arrayOfFloat, n, localVector25, 0.0F, f3, f2), localVector26, 0.0F, f4, f2), localVector24, a(localVector25, localVector26, localVector24), 1.1F, f2), localVector26, 0.0F, f4, f2), localVector27, 0.0F, f5, f2), localVector24, a(localVector26, localVector27, localVector24), 1.1F, f2), localVector27, 0.0F, f5, f2), localVector25, 0.0F, f3, f2), localVector24, a(localVector27, localVector25, localVector24), 1.1F, f2);
            continue;
          }
        }
        Vector2 localVector21 = this.e.c();
        this.f.set(paramf.e()).translate(localVector21.x, -0.25F, localVector21.y);
        float f1 = 0.05F * this.m;
        c.bind(0);
        b.begin();
        b.setUniformi("u_texture", 0);
        b.setUniformMatrix("u_modelViewProject", this.f);
        b.setUniformf("u_modelToTexScale", 0.006666667F, 0.006666667F);
        b.setUniformf("u_modelToTexOrigin", this.g.x, this.g.y);
        b.setUniformf("u_texCoordOffset0", -0.25F * f1, -0.15F * f1);
        b.setUniformf("u_texCoordOffset1", f1, f1);
        this.h.a(4, 9 * this.i.size(), b);
        b.end();
        return;
      }
      finally
      {
        aj.b();
      }
      label697: boolean bool2 = false;
    }
  }

  public final void a(GameState paramGameState)
  {
    this.k = ((GameState)an.a(paramGameState));
    Iterator localIterator1 = paramGameState.disappeared.iterator();
    if (localIterator1.hasNext())
    {
      String str = (String)localIterator1.next();
      boolean bool1 = this.l;
      if (this.i.remove(str) != null);
      for (boolean bool2 = true; ; bool2 = false)
      {
        this.l = (bool2 | bool1);
        break;
      }
    }
    Iterator localIterator2 = paramGameState.changedEntities.iterator();
    while (localIterator2.hasNext())
    {
      com.nianticproject.ingress.gameentity.f localf = (com.nianticproject.ingress.gameentity.f)localIterator2.next();
      CapturedRegion localCapturedRegion = (CapturedRegion)localf.getComponent(CapturedRegion.class);
      if (localCapturedRegion != null)
      {
        ai localai = b.a(localf);
        this.i.put(localf.getGuid(), new l(this.d, localCapturedRegion, localai));
        this.l = true;
      }
      else
      {
        Resonator localResonator = (Resonator)localf.getComponent(Resonator.class);
        if (localResonator != null)
          this.l |= this.j.contains(localResonator.getLinkedPortalGuid());
        else
          this.l |= this.j.contains(localf.getGuid());
      }
    }
  }

  public final boolean a()
  {
    return true;
  }

  public final boolean a(float paramFloat)
  {
    this.m = (paramFloat + this.m);
    return true;
  }

  public final void dispose()
  {
    ac.a(this.h);
    this.e.dispose();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.visuals.h
 * JD-Core Version:    0.6.2
 */
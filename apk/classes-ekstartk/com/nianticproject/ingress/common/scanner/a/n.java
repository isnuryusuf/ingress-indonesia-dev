package com.nianticproject.ingress.common.scanner.a;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.GL20;
import com.badlogic.gdx.graphics.Mesh;
import com.badlogic.gdx.graphics.VertexAttributes;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.utils.Disposable;
import com.google.a.a.an;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.q.a;
import com.nianticproject.ingress.common.q.a.t;
import com.nianticproject.ingress.common.q.c;
import com.nianticproject.ingress.common.w.ac;
import com.nianticproject.ingress.common.w.ad;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class n
  implements Disposable
{
  private static ShaderProgram a;
  private static final ThreadLocal<FloatBuffer> b = new o();
  private static final ThreadLocal<ShortBuffer> c = new p();
  private static final ThreadLocal<ShortBuffer> d = new q();
  private final c e;
  private final float f;
  private final Vector2 g = new Vector2();
  private a h;
  private final ArrayList<t> i = eq.a();
  private final ArrayList<l> j = eq.a();
  private List<s> k = null;
  private final ArrayList<d> l = eq.a();
  private List<s> m = null;
  private final ArrayList<g> n = eq.a();
  private List<s> o = null;
  private final ArrayList<i> p = eq.a();
  private List<s> q = null;
  private final ArrayList<b> r = eq.a();
  private List<s> s = null;

  n(c paramc)
  {
    this.e = paramc;
    int i1 = -12 + (30 - paramc.a());
    if (i1 >= 0);
    for (float f1 = 1 << i1; ; f1 = 1.0F / (1 << -i1))
    {
      this.f = f1;
      return;
    }
  }

  static ShaderProgram a(Matrix4 paramMatrix4)
  {
    a.begin();
    a.setUniformMatrix("u_modelView", paramMatrix4);
    return a;
  }

  private static s a(int paramInt, VertexAttributes paramVertexAttributes, FloatBuffer paramFloatBuffer, ShortBuffer paramShortBuffer1, ShortBuffer paramShortBuffer2)
  {
    paramFloatBuffer.flip();
    paramShortBuffer1.flip();
    paramShortBuffer2.flip();
    Mesh localMesh = new Mesh(true, paramFloatBuffer.limit() / paramInt, paramShortBuffer1.limit(), paramVertexAttributes);
    localMesh.setVertices(paramFloatBuffer.array(), 0, paramFloatBuffer.limit());
    localMesh.setIndices(paramShortBuffer1.array(), 0, paramShortBuffer1.limit());
    short[] arrayOfShort = new short[paramShortBuffer2.limit()];
    System.arraycopy(paramShortBuffer2.array(), 0, arrayOfShort, 0, arrayOfShort.length);
    s locals = new s(localMesh, arrayOfShort);
    paramFloatBuffer.clear();
    paramShortBuffer1.clear();
    paramShortBuffer2.clear();
    return locals;
  }

  private static List<s> a(List<? extends af> paramList, VertexAttributes paramVertexAttributes)
  {
    ArrayList localArrayList = eq.a();
    int i1 = paramVertexAttributes.vertexSize / 4;
    Iterator localIterator1 = paramList.iterator();
    do
      if (!localIterator1.hasNext())
        break;
    while (((af)localIterator1.next()).b() <= 0);
    for (int i2 = 1; ; i2 = 0)
    {
      if (i2 != 0)
      {
        FloatBuffer localFloatBuffer = (FloatBuffer)b.get();
        localFloatBuffer.clear();
        ShortBuffer localShortBuffer1 = (ShortBuffer)c.get();
        localShortBuffer1.clear();
        ShortBuffer localShortBuffer2 = (ShortBuffer)d.get();
        localShortBuffer2.clear();
        Iterator localIterator2 = paramList.iterator();
        while (localIterator2.hasNext())
        {
          af localaf = (af)localIterator2.next();
          int i3 = localaf.b();
          if ((localFloatBuffer.position() + i3 * i1 > localFloatBuffer.capacity()) || (i3 + localShortBuffer1.position() > localShortBuffer1.capacity()) || (1 + localShortBuffer2.position() > localShortBuffer2.capacity()))
            localArrayList.add(a(i1, paramVertexAttributes, localFloatBuffer, localShortBuffer1, localShortBuffer2));
          localaf.a(localFloatBuffer, localShortBuffer1);
          localShortBuffer2.put(i3);
        }
        if (localFloatBuffer.position() > 0)
          localArrayList.add(a(i1, paramVertexAttributes, localFloatBuffer, localShortBuffer1, localShortBuffer2));
      }
      return localArrayList;
    }
  }

  private void a(ShaderProgram paramShaderProgram, List<s> paramList, int paramInt)
  {
    paramShaderProgram.setAttributef("a_offset", this.g.x, this.g.y, 0.0F, 0.0F);
    for (int i1 = 0; i1 < paramList.size(); i1++)
      ((s)paramList.get(i1)).a(paramShaderProgram, paramInt);
  }

  static void b()
  {
    ad.a("CreateFlatShader", "uniform mat4 u_modelView;\nattribute vec2 a_position;\nattribute vec4 a_color;\nattribute vec2 a_offset;\nvarying vec4 v_color;\nvoid main() {\n  vec2 pos = a_position + a_offset;\n  v_color = a_color;\n  gl_Position = u_modelView * vec4(pos.x, 0.0, pos.y, 1.0);\n}", "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec4 v_color;\nvoid main() {\n  gl_FragColor = v_color;\n}", new r());
  }

  private static void b(List<s> paramList)
  {
    if (paramList == null);
    while (true)
    {
      return;
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        s locals = (s)localIterator.next();
        if (s.a(locals) != null)
          s.a(locals).dispose();
      }
    }
  }

  static void c()
  {
    ac.a(a);
    a = null;
  }

  final float a()
  {
    return this.f;
  }

  final t a(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < this.i.size()))
      return (t)this.i.get(paramInt);
    return null;
  }

  final void a(ShaderProgram paramShaderProgram)
  {
    Color localColor = l.a;
    paramShaderProgram.setAttributef("a_color", localColor.r, localColor.g, localColor.b, localColor.a);
    Gdx.gl20.glDisable(2884);
    if (this.k == null)
      this.k = a(this.j, l.a());
    a(paramShaderProgram, this.k, 5);
    Gdx.gl20.glEnable(2884);
  }

  final void a(a parama)
  {
    an.a(parama);
    if ((this.h != null) && (this.h.equals(parama)))
      return;
    this.h = parama;
    int i1 = parama.a();
    int i2 = this.e.a();
    int i3 = i1 - (1 + this.e.b() << 30 - i2);
    int i4 = parama.b();
    int i5 = this.e.a();
    int i6 = i4 - (1 + this.e.c() << 30 - i5);
    this.g.set(i3, i6);
  }

  final void a(b paramb)
  {
    this.r.add(paramb);
  }

  final void a(d paramd)
  {
    this.l.add(paramd);
  }

  final void a(g paramg)
  {
    this.n.add(paramg);
  }

  final void a(i parami)
  {
    this.p.add(parami);
  }

  final void a(l paraml)
  {
    this.j.add(paraml);
  }

  final void a(List<t> paramList)
  {
    this.i.clear();
    this.i.addAll(paramList);
  }

  final void b(ShaderProgram paramShaderProgram)
  {
    Color localColor = d.a;
    paramShaderProgram.setAttributef("a_color", localColor.r, localColor.g, localColor.b, localColor.a);
    Gdx.gl20.glDisable(2884);
    if (this.m == null)
      this.m = a(this.l, d.a());
    a(paramShaderProgram, this.m, 4);
    Gdx.gl20.glEnable(2884);
  }

  final void c(ShaderProgram paramShaderProgram)
  {
    Color localColor = g.a;
    paramShaderProgram.setAttributef("a_color", localColor.r, localColor.g, localColor.b, localColor.a);
    if (this.o == null)
      this.o = a(this.n, g.a());
    a(paramShaderProgram, this.o, 1);
  }

  final void d(ShaderProgram paramShaderProgram)
  {
    Color localColor = i.a;
    paramShaderProgram.setAttributef("a_color", localColor.r, localColor.g, localColor.b, localColor.a);
    paramShaderProgram.setAttributef("a_offset", this.g.x, this.g.y, 0.0F, 0.0F);
    if (this.q == null)
      this.q = a(this.p, i.a());
    Iterator localIterator = this.q.iterator();
    while (localIterator.hasNext())
      ((s)localIterator.next()).a(paramShaderProgram);
  }

  public final void dispose()
  {
    b(this.k);
    this.k = null;
    b(this.m);
    this.m = null;
    b(this.o);
    this.o = null;
    b(this.q);
    this.q = null;
    b(this.s);
    this.s = null;
  }

  final void e(ShaderProgram paramShaderProgram)
  {
    Gdx.gl20.glDisable(2884);
    if (this.s == null)
      this.s = a(this.r, b.a());
    a(paramShaderProgram, this.s, 4);
    Gdx.gl20.glEnable(2884);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.a.n
 * JD-Core Version:    0.6.2
 */
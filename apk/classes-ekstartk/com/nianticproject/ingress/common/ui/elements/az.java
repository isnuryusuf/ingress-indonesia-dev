package com.nianticproject.ingress.common.ui.elements;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.Graphics;
import com.badlogic.gdx.Input;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.BitmapFont.TextBounds;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.scenes.scene2d.Group;
import com.badlogic.gdx.scenes.scene2d.Stage;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.google.a.a.an;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.j.h;
import com.nianticproject.ingress.common.j.l;
import com.nianticproject.ingress.common.ui.ac;
import com.nianticproject.ingress.common.ui.hud.SelectableHudFragment;
import com.nianticproject.ingress.common.w.ao;
import com.nianticproject.ingress.common.w.y;
import java.util.ArrayList;
import java.util.Iterator;

public final class az
  implements ac
{
  private boolean A;
  private float B = 3.4028235E+38F;
  private final Vector3[] a;
  private final Vector2[] b;
  private final Matrix4 c = new Matrix4();
  private final Vector3 d = new Vector3();
  private final Color e = new Color(0.22F, 0.41F, 0.48F, 1.0F);
  private final Color f = new Color(0.41F, 0.8F, 0.87F, 1.0F);
  private final Color g = new Color(0.22F, 0.41F, 0.48F, 1.0F);
  private final Color h = new Color(0.41F, 0.8F, 0.87F, 1.0F);
  private final Color i = new Color(0.29F, 1.0F, 1.0F, 1.0F);
  private final Color j = new Color(0.29F, 1.0F, 1.0F, 1.0F);
  private final Color k = new Color(Color.WHITE);
  private final Color l = new Color(Color.DARK_GRAY);
  private final float m;
  private final float n;
  private final Matrix4 o;
  private final SelectableHudFragment p;
  private final h q;
  private final Vector2 r;
  private final BitmapFont s;
  private final Vector2 t;
  private bc u;
  private bc v;
  private bc w;
  private bc x;
  private Group y;
  private float z;

  public az(Vector2 paramVector2, h paramh, bc parambc1, bc parambc2, bc parambc3, bc parambc4, SelectableHudFragment paramSelectableHudFragment)
  {
    this.r = new Vector2((Vector2)an.a(paramVector2));
    this.q = ((h)an.a(paramh));
    this.p = paramSelectableHudFragment;
    this.s = paramh.b();
    this.m = (Gdx.graphics.getWidth() / Gdx.graphics.getHeight());
    this.n = (1.0F / this.m);
    this.u = parambc1;
    this.v = parambc2;
    this.w = parambc4;
    this.x = parambc3;
    float f1 = 1.0F / Gdx.graphics.getWidth();
    float f2 = 1.0F / Gdx.graphics.getHeight();
    this.t = new Vector2(0.3F, 0.0F);
    Iterator localIterator = eq.a(new bc[] { parambc1, parambc2, parambc3, parambc4 }).iterator();
    while (localIterator.hasNext())
    {
      bc localbc = (bc)localIterator.next();
      if (localbc != null)
      {
        BitmapFont.TextBounds localTextBounds = this.s.getBounds(localbc.a);
        bc.a(localbc, new Vector2(f1 * localTextBounds.width, f2 * localTextBounds.height));
        this.t.x = Math.max(bc.a(localbc).x, this.t.x);
        this.t.y = Math.max(bc.a(localbc).y, this.t.y);
      }
    }
    Vector2 localVector21 = this.t;
    localVector21.x = (0.01F + localVector21.x);
    Vector2 localVector22 = this.t;
    localVector22.y = (0.02F + localVector22.y);
    Matrix4 localMatrix41 = new Matrix4();
    localMatrix41.setToLookAt(new Vector3(0.0F, 1.0F, 0.0F), ao.a, new Vector3(0.0F, 0.0F, 1.0F));
    Matrix4 localMatrix42 = new Matrix4();
    localMatrix42.setToProjection(0.1F, 2.0F, 90.0F, 1.0F);
    this.o = new Matrix4(localMatrix42).mul(localMatrix41);
    float f3 = 1.0F / (this.t.x / this.t.y);
    float f4 = 0.015F * this.m;
    Vector3[] arrayOfVector3 = new Vector3[20];
    arrayOfVector3[0] = new Vector3(0.0F, 0.0F, 0.5F * f3);
    arrayOfVector3[1] = new Vector3(0.0F, 0.0F, -0.5F * f3);
    arrayOfVector3[2] = new Vector3(0.0F, -1.0F, -0.5F * f3);
    arrayOfVector3[3] = new Vector3(0.0F, -1.0F, 0.5F * f3);
    arrayOfVector3[4] = new Vector3(0.0F, -1.0F, f4 + 0.5F * f3);
    arrayOfVector3[5] = new Vector3(0.0F, -1.0F, -0.5F * f3 - f4);
    arrayOfVector3[6] = new Vector3(0.0F, -1.015F, -0.5F * f3 - f4);
    arrayOfVector3[7] = new Vector3(0.0F, -1.015F, f4 + 0.5F * f3);
    arrayOfVector3[8] = new Vector3(0.0F, 0.0F, f4 + 0.5F * f3);
    arrayOfVector3[9] = new Vector3(0.0F, 0.0F, 0.5F * f3);
    arrayOfVector3[10] = new Vector3(0.0F, -1.0F, 0.5F * f3);
    arrayOfVector3[11] = new Vector3(0.0F, -1.0F, f4 + 0.5F * f3);
    arrayOfVector3[12] = new Vector3(0.0F, 0.0F, f4 + 0.5F * f3);
    arrayOfVector3[13] = new Vector3(0.0F, 0.0F, -0.5F * f3 - f4);
    arrayOfVector3[14] = new Vector3(0.0F, 0.015F, -0.5F * f3 - f4);
    arrayOfVector3[15] = new Vector3(0.0F, 0.015F, f4 + 0.5F * f3);
    arrayOfVector3[16] = new Vector3(0.0F, 0.0F, -0.5F * f3 - f4);
    arrayOfVector3[17] = new Vector3(0.0F, 0.0F, -0.5F * f3);
    arrayOfVector3[18] = new Vector3(0.0F, -1.0F, -0.5F * f3);
    arrayOfVector3[19] = new Vector3(0.0F, -1.0F, f3 * -0.5F - f4);
    this.a = arrayOfVector3;
    this.b = new Vector2[this.a.length];
    Gdx.input.vibrate(30);
  }

  private void a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, Color paramColor)
  {
    Vector2 localVector21 = new Vector2(paramFloat1, paramFloat2).add(this.r);
    Vector2 localVector22 = new Vector2(paramFloat3, paramFloat2).add(this.r);
    Vector2 localVector23 = new Vector2(paramFloat3, paramFloat4).add(this.r);
    Vector2 localVector24 = new Vector2(paramFloat1, paramFloat4).add(this.r);
    this.q.a(l.a, localVector21, localVector22, localVector23, paramColor);
    this.q.a(l.a, localVector23, localVector24, localVector21, paramColor);
  }

  private void a(Matrix4 paramMatrix4, float paramFloat1, float paramFloat2, bc parambc)
  {
    Color localColor1;
    Color localColor2;
    if (bc.b(parambc))
    {
      localColor1 = this.j;
      if (!bc.b(parambc))
        break label143;
      localColor2 = this.h;
      label28: if (!parambc.c)
        break label152;
    }
    Vector2[] arrayOfVector2;
    label143: label152: for (Color localColor3 = this.k; ; localColor3 = this.l)
    {
      arrayOfVector2 = this.b;
      for (int i1 = 0; i1 < this.a.length; i1++)
      {
        this.d.set(this.a[i1]).prj(paramMatrix4);
        arrayOfVector2[i1] = new Vector2(this.d.x, this.d.y).mul(this.t.x).add(this.r).add(paramFloat1, paramFloat2);
      }
      localColor1 = this.i;
      break;
      localColor2 = this.g;
      break label28;
    }
    float f1 = (arrayOfVector2[0].x + arrayOfVector2[1].x + arrayOfVector2[2].x + arrayOfVector2[3].x) / 4.0F;
    float f2 = (arrayOfVector2[0].y + arrayOfVector2[1].y + arrayOfVector2[2].y + arrayOfVector2[3].y) / 4.0F;
    this.q.a(l.a, arrayOfVector2[0], arrayOfVector2[1], arrayOfVector2[2], localColor2);
    this.q.a(l.a, arrayOfVector2[2], arrayOfVector2[3], arrayOfVector2[0], localColor2);
    for (int i2 = 4; i2 < arrayOfVector2.length; i2 += 4)
    {
      this.q.a(l.a, arrayOfVector2[(i2 + 0)], arrayOfVector2[(i2 + 1)], arrayOfVector2[(i2 + 2)], localColor1);
      this.q.a(l.a, arrayOfVector2[(i2 + 2)], arrayOfVector2[(i2 + 3)], arrayOfVector2[(i2 + 0)], localColor1);
    }
    if (this.z > 0.4815F)
    {
      float f3 = f1 - 0.5F * bc.a(parambc).x;
      float f4 = f2 - 0.5F * bc.a(parambc).y;
      h localh = this.q;
      l locall = l.b;
      Vector2 localVector2 = new Vector2(f3, f4);
      BitmapFont localBitmapFont = this.s;
      String str = parambc.a;
      localh.a(locall, localVector2, localColor3, localBitmapFont, str);
    }
  }

  private static void a(bc parambc, float paramFloat, double paramDouble1, double paramDouble2, double paramDouble3)
  {
    if (parambc != null)
      if ((!parambc.c) || (paramFloat <= 0.035F) || ((!a(paramDouble2, paramDouble3, paramDouble1)) && (!a(paramDouble2, paramDouble3, paramDouble1 + 6.283185307179586D))))
        break label74;
    label74: for (boolean bool = true; ; bool = false)
    {
      if (bc.b(parambc) != bool)
      {
        bc.a(parambc, bool);
        Gdx.input.vibrate(5);
      }
      return;
    }
  }

  private static boolean a(double paramDouble1, double paramDouble2, double paramDouble3)
  {
    return (paramDouble1 <= paramDouble3) && (paramDouble2 >= paramDouble3);
  }

  public final void a(Skin paramSkin, Stage paramStage)
  {
    this.z = 0.0F;
    this.y = new ba(this);
    this.y.addListener(new bb(this));
    paramStage.addActor(this.y);
  }

  public final boolean a(float paramFloat)
  {
    int i1;
    float f14;
    float f15;
    if ((Gdx.input.isButtonPressed(0)) && (!this.A))
    {
      i1 = 1;
      if ((i1 == 0) && (!this.A))
        break label1224;
      if (i1 != 0)
      {
        Vector2 localVector2 = new Vector2(new Vector2(Gdx.input.getX(0) / Gdx.graphics.getWidth(), 1.0F - Gdx.input.getY(0) / Gdx.graphics.getHeight())).sub(this.r);
        localVector2.y /= this.m;
        f14 = localVector2.len();
        localVector2.nor();
        f15 = (float)Math.atan2(localVector2.y, localVector2.x);
        if (f15 >= 0.0F)
          break label1387;
      }
    }
    label257: label354: label488: label1387: for (float f16 = f15 + 6.283186F; ; f16 = f15)
    {
      a(this.u, f14, f16, 0.7853981633974483D, 2.356194490192345D);
      a(this.w, f14, f16, 2.356194490192345D, 3.926990816987241D);
      a(this.v, f14, f16, 3.926990816987241D, 5.497787143782138D);
      a(this.x, f14, f16, 5.497787143782138D, 7.068583470577035D);
      float f1;
      Color localColor4;
      Color localColor3;
      Color localColor2;
      Color localColor1;
      if (this.A)
      {
        f1 = 0x1 & (int)(4.0F * (this.B / 0.5F));
        if (f1 > 0.0F)
        {
          if (this.z > 0.0F)
          {
            float f4 = y.b((this.z - 0.0F) / 0.15F);
            this.e.a = (f1 * (0.25F + 0.5F * f4));
            this.f.a = this.e.a;
            if (this.w != null)
            {
              float f13 = -0.035F + -0.115F * f4;
              if (!bc.b(this.w))
                break label1188;
              localColor4 = this.f;
              a(-0.035F, 0.0025F, f13, -0.0025F, localColor4);
            }
            if (this.x != null)
            {
              float f12 = 0.035F + 0.115F * f4;
              if (!bc.b(this.x))
                break label1197;
              localColor3 = this.f;
              a(0.035F, 0.0025F, f12, -0.0025F, localColor3);
            }
            float f5 = 0.0025F * this.n;
            if (this.u != null)
            {
              float f9 = -f5;
              float f10 = 0.035F * this.m;
              float f11 = (0.035F + 0.165F * f4) * this.m;
              if (!bc.b(this.u))
                break label1206;
              localColor2 = this.f;
              a(f9, f10, f5, f11, localColor2);
            }
            if (this.v != null)
            {
              float f6 = -f5;
              float f7 = -0.035F * this.m;
              float f8 = (-0.035F + -0.165F * f4) * this.m;
              if (!bc.b(this.v))
                break label1215;
              localColor1 = this.f;
              a(f6, f7, f5, f8, localColor1);
            }
          }
          if (this.z > 0.135F)
          {
            float f2 = y.a(y.b((this.z - 0.4815F) / 0.4F));
            float f3 = y.a(y.b((this.z - 0.135F) / 0.4F));
            this.g.a = (f1 * (0.25F + 0.5F * f3));
            this.h.a = this.g.a;
            this.i.a = this.g.a;
            this.j.a = this.i.a;
            this.k.a = (f1 * (0.0F + f2 * 1.0F));
            this.l.a = this.k.a;
            if (this.w != null)
            {
              this.c.set(this.o).rotate(0.0F, 0.0F, 1.0F, 90.0F * f3).rotate(0.0F, 1.0F, 0.0F, 180.0F * f3);
              a(this.c, -0.15F, 0.0F, this.w);
            }
            if (this.x != null)
            {
              this.c.set(this.o).rotate(0.0F, 1.0F, 0.0F, 180.0F).rotate(0.0F, 0.0F, 1.0F, 90.0F * f3).rotate(0.0F, 1.0F, 0.0F, 180.0F * f3);
              a(this.c, 0.15F, 0.0F, this.x);
            }
            if (this.u != null)
            {
              this.c.set(this.o).rotate(0.0F, 0.0F, 1.0F, 180.0F * f3).rotate(1.0F, 0.0F, 0.0F, 90.0F * f3).translate(-0.5F, 0.0F, 0.0F).rotate(1.0F, 0.0F, 0.0F, -90.0F).rotate(0.0F, 0.0F, 1.0F, 90.0F);
              a(this.c, 0.0F, 0.2F * this.m + f3 * (0.5F * this.t.y), this.u);
            }
            if (this.v != null)
            {
              this.c.set(this.o).rotate(0.0F, 0.0F, 1.0F, 180.0F * f3).rotate(1.0F, 0.0F, 0.0F, -90.0F * f3).translate(-0.5F, 0.0F, 0.0F).rotate(1.0F, 0.0F, 0.0F, 90.0F).rotate(0.0F, 0.0F, 1.0F, 90.0F);
              a(this.c, 0.0F, -0.2F * this.m - f3 * (0.5F * this.t.y), this.v);
            }
          }
        }
        this.z = (paramFloat + this.z);
        this.B -= paramFloat;
        if ((!this.A) || (this.B > 0.0F))
          break label1361;
      }
      for (int i2 = 1; ; i2 = 0)
      {
        if (i2 == 0)
          break label1367;
        bc[] arrayOfbc = new bc[4];
        arrayOfbc[0] = this.u;
        arrayOfbc[1] = this.v;
        arrayOfbc[2] = this.x;
        arrayOfbc[3] = this.w;
        Iterator localIterator = eq.a(arrayOfbc).iterator();
        while (localIterator.hasNext())
        {
          bc localbc = (bc)localIterator.next();
          if ((localbc != null) && (localbc.b != null))
            localbc.b.run();
        }
        i1 = 0;
        break;
        f1 = 1.0F;
        break label257;
        localColor4 = this.e;
        break label354;
        localColor3 = this.e;
        break label406;
        localColor2 = this.e;
        break label488;
        localColor1 = this.e;
        break label557;
        if (this.A)
          break label1058;
        if ((this.u != null) && (!bc.b(this.u)))
          this.u = null;
        if ((this.v != null) && (!bc.b(this.v)))
          this.v = null;
        if ((this.w != null) && (!bc.b(this.w)))
          this.w = null;
        if ((this.x != null) && (!bc.b(this.x)))
          this.x = null;
        if ((this.u == null) && (this.v == null) && (this.w == null) && (this.x == null))
          break label1058;
        this.A = true;
        this.B = 0.5F;
        break label1058;
      }
      return (i1 != 0) || ((this.A) && (i2 == 0));
    }
  }

  public final void dispose()
  {
    if (this.y != null)
      this.y.remove();
    if (this.p != null)
      this.p.a();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.ui.elements.az
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.common.k;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Pixmap.Format;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.Texture.TextureFilter;
import com.badlogic.gdx.graphics.Texture.TextureWrap;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.MathUtils;
import com.google.a.a.an;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.w.ac;
import com.nianticproject.ingress.common.w.ad;
import com.nianticproject.ingress.common.w.w;
import com.nianticproject.ingress.common.w.x;
import com.nianticproject.ingress.shared.aj;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

public final class c
{
  public static ai a;
  public static ShaderProgram b;
  public static Texture c;
  public static Texture d;
  public static ai e;
  public static ShaderProgram f;
  public static Texture g;
  public static Texture h;
  public static ArrayList<Texture> i = eq.a();
  public static ShaderProgram j;
  public static ShaderProgram k;
  private static final Color l = new Color(0.1686275F, 0.9294118F, 0.1058824F, 1.0F);
  private static final Color m = new Color(0.0F, 0.7490196F, 1.0F, 1.0F);
  private static final com.nianticproject.ingress.common.w.aa n = new com.nianticproject.ingress.common.w.aa(c.class);
  private static final Object o = new Object();
  private static String p;
  private static String q = "faction_lut";
  private static final w r = new w();

  public static void a()
  {
    if (r.a() == x.a);
    while (true)
    {
      int i1;
      Pixmap localPixmap;
      int i2;
      try
      {
        aj.a("GlobeAssets.loadData");
        boolean bool = r.b();
        if (!bool)
          return;
        com.nianticproject.ingress.common.b.c.a("CreateSphereMesh", aa.a(), new i());
        com.nianticproject.ingress.common.b.c.a("CreateBordersTexture", com.nianticproject.ingress.common.b.c.b("globe/borders.png", true), Texture.TextureFilter.MipMapLinearLinear, Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat, Texture.TextureWrap.Repeat, new j());
        com.nianticproject.ingress.common.b.c.a("CreateBorderGradientTexture", com.nianticproject.ingress.common.b.c.b("globe/border_gradient.png", true), Texture.TextureFilter.MipMapLinearLinear, Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat, Texture.TextureWrap.Repeat, new k());
        ad.a("shaders/planet.glsl.vert", "shaders/planet.glsl.frag", new l());
        com.nianticproject.ingress.common.b.c.a("CreateCrosshairMesh", com.nianticproject.ingress.common.b.c.e("globe/crosshair.obj"), new m());
        com.nianticproject.ingress.common.b.c.a("CreateCrosshairTexture", com.nianticproject.ingress.common.b.c.b("globe/crosshair.png", true), Texture.TextureFilter.MipMapLinearLinear, Texture.TextureFilter.Linear, Texture.TextureWrap.Repeat, Texture.TextureWrap.Repeat, new n());
        ad.a("shaders/planet_crosshair.glsl.vert", "shaders/planet_crosshair.glsl.frag", new o());
        ad.a("shaders/planet_location.glsl.vert", "shaders/planet_location.glsl.frag", new p());
        a(true);
        try
        {
          aj.a("GlobeAssets.createLutTextures");
          Color localColor1 = l;
          Color localColor2 = m;
          com.nianticproject.ingress.common.x.i.a().a(new f());
          Color localColor3 = new Color();
          i1 = 0;
          f1 = 0.05F;
          if (i1 >= 6)
            break;
          localPixmap = new Pixmap(32, 32, Pixmap.Format.RGBA8888);
          i2 = 0;
          if (i2 >= 32)
            break label522;
          float f2 = i2 / 32.0F;
          float f3 = MathUtils.clamp(2.0F * (f2 - f1) / 0.1583333F, 0.0F, 1.0F);
          int i3 = 0;
          if (i3 < 32)
          {
            float f4 = i3 / 32.0F;
            float f5 = MathUtils.clamp(2.0F * (f4 - f1) / 0.1583333F, 0.0F, 1.0F);
            if ((f3 > 0.0F) || (f5 > 0.0F))
            {
              float f6 = f4 / (f4 + f2);
              float f7 = f3 * localColor2.r;
              float f8 = f7 + f6 * (f5 * localColor1.r - f7);
              float f9 = f3 * localColor2.g;
              float f10 = f9 + f6 * (f5 * localColor1.g - f9);
              float f11 = f3 * localColor2.b;
              localColor3.set(f8, f10, f11 + f6 * (f5 * localColor1.b - f11), f2 + f6 * (f4 - f2));
              localPixmap.setColor(localColor3);
              localPixmap.drawPixel(i3, i2);
              i3++;
              continue;
            }
            localColor3.set(0.0F, 0.0F, 0.0F, 0.0F);
            continue;
          }
        }
        finally
        {
        }
      }
      finally
      {
        aj.b();
      }
      i2++;
      continue;
      label522: float f12 = f1 + 0.1583333F;
      com.nianticproject.ingress.common.b.c.a("CreateFactionLutTexture", new g(localPixmap), Texture.TextureFilter.Linear, Texture.TextureFilter.Linear, Texture.TextureWrap.ClampToEdge, Texture.TextureWrap.ClampToEdge, new h());
      i1++;
      float f1 = f12;
    }
    aj.b();
    ad.a("shaders/planet_faction.glsl.vert", "shaders/planet_faction.glsl.frag", new d());
    r.c();
    aj.b();
  }

  public static void a(File paramFile)
  {
    while (true)
    {
      synchronized (r)
      {
        if (r.a() == x.a)
        {
          bool = true;
          an.b(bool);
          File localFile = new File(paramFile, "globe_factions.png");
          try
          {
            p = localFile.getCanonicalPath();
            return;
          }
          catch (IOException localIOException)
          {
            n.c("Could not get path to file in cache dir.");
            continue;
          }
        }
      }
      boolean bool = false;
    }
  }

  // ERROR //
  public static void a(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: getstatic 59	com/nianticproject/ingress/common/k/c:o	Ljava/lang/Object;
    //   3: astore_1
    //   4: aload_1
    //   5: monitorenter
    //   6: new 292	java/io/FileOutputStream
    //   9: dup
    //   10: new 274	java/io/File
    //   13: dup
    //   14: getstatic 285	com/nianticproject/ingress/common/k/c:p	Ljava/lang/String;
    //   17: invokespecial 294	java/io/File:<init>	(Ljava/lang/String;)V
    //   20: iconst_0
    //   21: invokespecial 297	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   24: astore_2
    //   25: sipush 1024
    //   28: newarray byte
    //   30: astore 11
    //   32: aload_0
    //   33: aload 11
    //   35: invokevirtual 303	java/io/InputStream:read	([B)I
    //   38: istore 12
    //   40: iload 12
    //   42: ifle +89 -> 131
    //   45: aload_2
    //   46: aload 11
    //   48: iconst_0
    //   49: iload 12
    //   51: invokevirtual 309	java/io/OutputStream:write	([BII)V
    //   54: goto -22 -> 32
    //   57: astore_3
    //   58: aload_2
    //   59: invokevirtual 312	java/io/OutputStream:close	()V
    //   62: aload_3
    //   63: athrow
    //   64: astore 7
    //   66: new 274	java/io/File
    //   69: dup
    //   70: getstatic 285	com/nianticproject/ingress/common/k/c:p	Ljava/lang/String;
    //   73: invokespecial 294	java/io/File:<init>	(Ljava/lang/String;)V
    //   76: invokevirtual 315	java/io/File:delete	()Z
    //   79: pop
    //   80: getstatic 320	com/nianticproject/ingress/common/a/b:e	Lcom/nianticproject/ingress/common/a/b;
    //   83: ldc_w 322
    //   86: invokestatic 327	com/nianticproject/ingress/common/a/a:a	(Lcom/nianticproject/ingress/common/a/b;Ljava/lang/String;)V
    //   89: getstatic 55	com/nianticproject/ingress/common/k/c:n	Lcom/nianticproject/ingress/common/w/aa;
    //   92: aload 7
    //   94: ldc_w 329
    //   97: invokevirtual 332	com/nianticproject/ingress/common/w/aa:a	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   100: aload_0
    //   101: invokevirtual 333	java/io/InputStream:close	()V
    //   104: aload_1
    //   105: monitorexit
    //   106: getstatic 75	com/nianticproject/ingress/common/k/c:r	Lcom/nianticproject/ingress/common/w/w;
    //   109: invokevirtual 78	com/nianticproject/ingress/common/w/w:a	()Lcom/nianticproject/ingress/common/w/x;
    //   112: getstatic 83	com/nianticproject/ingress/common/w/x:a	Lcom/nianticproject/ingress/common/w/x;
    //   115: if_acmpeq +52 -> 167
    //   118: iconst_1
    //   119: istore 10
    //   121: iload 10
    //   123: ifeq +7 -> 130
    //   126: iconst_1
    //   127: invokestatic 191	com/nianticproject/ingress/common/k/c:a	(Z)V
    //   130: return
    //   131: aload_2
    //   132: invokevirtual 336	java/io/OutputStream:flush	()V
    //   135: aload_2
    //   136: invokevirtual 312	java/io/OutputStream:close	()V
    //   139: aload_0
    //   140: invokevirtual 333	java/io/InputStream:close	()V
    //   143: goto -39 -> 104
    //   146: astore 13
    //   148: goto -44 -> 104
    //   151: astore 4
    //   153: aload_0
    //   154: invokevirtual 333	java/io/InputStream:close	()V
    //   157: aload 4
    //   159: athrow
    //   160: astore 6
    //   162: aload_1
    //   163: monitorexit
    //   164: aload 6
    //   166: athrow
    //   167: iconst_0
    //   168: istore 10
    //   170: goto -49 -> 121
    //   173: astore 9
    //   175: goto -71 -> 104
    //   178: astore 5
    //   180: goto -23 -> 157
    //
    // Exception table:
    //   from	to	target	type
    //   25	32	57	finally
    //   32	40	57	finally
    //   45	54	57	finally
    //   131	135	57	finally
    //   6	25	64	java/io/IOException
    //   58	64	64	java/io/IOException
    //   135	139	64	java/io/IOException
    //   139	143	146	java/io/IOException
    //   6	25	151	finally
    //   58	64	151	finally
    //   66	100	151	finally
    //   135	139	151	finally
    //   100	104	160	finally
    //   104	106	160	finally
    //   139	143	160	finally
    //   153	157	160	finally
    //   157	160	160	finally
    //   100	104	173	java/io/IOException
    //   153	157	178	java/io/IOException
  }

  // ERROR //
  private static void a(boolean paramBoolean)
  {
    // Byte code:
    //   0: getstatic 59	com/nianticproject/ingress/common/k/c:o	Ljava/lang/Object;
    //   3: astore_1
    //   4: aload_1
    //   5: monitorenter
    //   6: getstatic 344	com/badlogic/gdx/Gdx:files	Lcom/badlogic/gdx/Files;
    //   9: getstatic 285	com/nianticproject/ingress/common/k/c:p	Ljava/lang/String;
    //   12: invokeinterface 350 2 0
    //   17: astore_3
    //   18: aload_3
    //   19: invokevirtual 355	com/badlogic/gdx/files/FileHandle:exists	()Z
    //   22: istore 4
    //   24: iload 4
    //   26: ifne +22 -> 48
    //   29: ldc_w 357
    //   32: invokestatic 90	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   35: ldc_w 359
    //   38: invokestatic 361	com/nianticproject/ingress/common/b/c:a	(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    //   41: aload_3
    //   42: invokevirtual 365	com/badlogic/gdx/files/FileHandle:copyTo	(Lcom/badlogic/gdx/files/FileHandle;)V
    //   45: invokestatic 95	com/nianticproject/ingress/shared/aj:b	()V
    //   48: aload_3
    //   49: invokevirtual 369	com/badlogic/gdx/files/FileHandle:file	()Ljava/io/File;
    //   52: invokevirtual 372	java/io/File:getName	()Ljava/lang/String;
    //   55: invokestatic 90	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   58: new 374	com/badlogic/gdx/graphics/glutils/FileTextureData
    //   61: dup
    //   62: aload_3
    //   63: aconst_null
    //   64: aconst_null
    //   65: iconst_1
    //   66: invokespecial 377	com/badlogic/gdx/graphics/glutils/FileTextureData:<init>	(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V
    //   69: astore 9
    //   71: aload 9
    //   73: invokevirtual 380	com/badlogic/gdx/graphics/glutils/FileTextureData:prepare	()V
    //   76: ldc_w 382
    //   79: aload 9
    //   81: getstatic 126	com/badlogic/gdx/graphics/Texture$TextureFilter:Linear	Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    //   84: getstatic 126	com/badlogic/gdx/graphics/Texture$TextureFilter:Linear	Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    //   87: getstatic 132	com/badlogic/gdx/graphics/Texture$TextureWrap:Repeat	Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    //   90: getstatic 132	com/badlogic/gdx/graphics/Texture$TextureWrap:Repeat	Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    //   93: new 384	com/nianticproject/ingress/common/k/e
    //   96: dup
    //   97: invokespecial 385	com/nianticproject/ingress/common/k/e:<init>	()V
    //   100: invokestatic 138	com/nianticproject/ingress/common/b/c:a	(Ljava/lang/String;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/nianticproject/ingress/common/b/o;)V
    //   103: invokestatic 95	com/nianticproject/ingress/shared/aj:b	()V
    //   106: aload_1
    //   107: monitorexit
    //   108: return
    //   109: astore 10
    //   111: invokestatic 95	com/nianticproject/ingress/shared/aj:b	()V
    //   114: aload 10
    //   116: athrow
    //   117: astore_2
    //   118: aload_1
    //   119: monitorexit
    //   120: aload_2
    //   121: athrow
    //   122: astore 6
    //   124: iload_0
    //   125: ifne +14 -> 139
    //   128: aload 6
    //   130: athrow
    //   131: astore 5
    //   133: invokestatic 95	com/nianticproject/ingress/shared/aj:b	()V
    //   136: aload 5
    //   138: athrow
    //   139: aload_3
    //   140: invokevirtual 386	com/badlogic/gdx/files/FileHandle:delete	()Z
    //   143: pop
    //   144: iconst_0
    //   145: invokestatic 191	com/nianticproject/ingress/common/k/c:a	(Z)V
    //   148: invokestatic 95	com/nianticproject/ingress/shared/aj:b	()V
    //   151: goto -45 -> 106
    //   154: astore 7
    //   156: getstatic 55	com/nianticproject/ingress/common/k/c:n	Lcom/nianticproject/ingress/common/w/aa;
    //   159: aload 7
    //   161: ldc_w 388
    //   164: invokevirtual 390	com/nianticproject/ingress/common/w/aa:b	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   167: goto -19 -> 148
    //
    // Exception table:
    //   from	to	target	type
    //   29	45	109	finally
    //   6	24	117	finally
    //   45	48	117	finally
    //   103	106	117	finally
    //   106	108	117	finally
    //   111	117	117	finally
    //   133	139	117	finally
    //   148	151	117	finally
    //   48	103	122	com/badlogic/gdx/utils/GdxRuntimeException
    //   48	103	131	finally
    //   128	131	131	finally
    //   139	148	131	finally
    //   156	167	131	finally
    //   139	148	154	com/badlogic/gdx/utils/GdxRuntimeException
  }

  public static void b()
  {
    if (!r.d())
      return;
    ac.a(a);
    a = null;
    ac.a(c);
    c = null;
    ac.a(b);
    b = null;
    ac.a(d);
    d = null;
    ac.a(e);
    e = null;
    ac.a(g);
    g = null;
    ac.a(f);
    f = null;
    d();
    ac.a(h);
    h = null;
    ac.a(j);
    j = null;
    ac.a(k);
    k = null;
    r.e();
  }

  private static void d()
  {
    Iterator localIterator = i.iterator();
    while (localIterator.hasNext())
      ac.a((Texture)localIterator.next());
    i.clear();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.k.c
 * JD-Core Version:    0.6.2
 */
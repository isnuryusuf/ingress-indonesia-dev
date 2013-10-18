package com.nianticproject.ingress.common.b;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.Texture.TextureFilter;
import com.badlogic.gdx.graphics.Texture.TextureWrap;
import com.badlogic.gdx.graphics.TextureData;
import com.badlogic.gdx.graphics.VertexAttribute;
import com.badlogic.gdx.graphics.g2d.TextureAtlas;
import com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.graphics.glutils.FileTextureData;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.scenes.scene2d.ui.Skin;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.NinePatchDrawable;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.google.a.a.an;
import com.nianticproject.ingress.common.j.ab;
import com.nianticproject.ingress.common.j.ah;
import com.nianticproject.ingress.common.j.ai;
import com.nianticproject.ingress.common.j.b;
import com.nianticproject.ingress.common.scanner.ag;
import com.nianticproject.ingress.common.ui.widget.az;
import com.nianticproject.ingress.common.ui.widget.l;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.w.ad;
import com.nianticproject.ingress.shared.aj;
import java.io.File;
import java.io.InputStream;

public final class c
{
  private static final aa a = new aa(c.class);
  private static a b;
  private static final j<Texture> c = new j();

  public static FileHandle a(String paramString)
  {
    return b().a(paramString);
  }

  public static Color a(int paramInt)
  {
    return new Color(((0xFF0000 & paramInt) >> 16) / 255.0F, ((0xFF00 & paramInt) >> 8) / 255.0F, (paramInt & 0xFF) / 255.0F, 1.0F);
  }

  public static Texture a(String paramString, boolean paramBoolean)
  {
    String str;
    if (paramBoolean)
      str = "-useMipMaps";
    try
    {
      aj.a("AssetUtils.getTexture", str);
      Texture localTexture = (Texture)an.a(new Texture((FileHandle)an.a(a(paramString)), paramBoolean), String.format("failed to load Texture=%s", new Object[] { paramString }));
      return localTexture;
      str = "";
    }
    finally
    {
      aj.b();
    }
  }

  public static TextureRegion a(Skin paramSkin, String paramString)
  {
    return (TextureRegion)an.a(paramSkin.getRegion(paramString), String.format("failed to load TextureRegion=%s from Skin=%s", new Object[] { paramString, paramSkin }));
  }

  public static Drawable a(Skin paramSkin, int paramInt)
  {
    return new az(paramSkin.getDrawable("white"), a(paramInt));
  }

  public static Drawable a(Skin paramSkin, Color paramColor)
  {
    return new az(paramSkin.getDrawable("white"), paramColor);
  }

  public static Drawable a(Drawable paramDrawable, Color paramColor)
  {
    return a(paramDrawable, new n(paramColor));
  }

  public static Drawable a(Drawable paramDrawable, n paramn)
  {
    ShaderProgram localShaderProgram = ag.aW;
    if ((paramDrawable instanceof NinePatchDrawable))
      return new l((NinePatchDrawable)paramDrawable, localShaderProgram, paramn);
    return new com.nianticproject.ingress.common.ui.widget.j(paramDrawable, localShaderProgram, paramn);
  }

  public static TextureRegionDrawable a(Texture paramTexture, int paramInt)
  {
    paramTexture.setFilter(Texture.TextureFilter.Linear, Texture.TextureFilter.Linear);
    TextureRegionDrawable localTextureRegionDrawable = new TextureRegionDrawable(new TextureRegion(paramTexture));
    localTextureRegionDrawable.setMinWidth(paramInt);
    localTextureRegionDrawable.setMinHeight(paramInt * paramTexture.getHeight() / paramTexture.getWidth());
    return localTextureRegionDrawable;
  }

  public static com.nianticproject.ingress.common.j.c a(float[] paramArrayOfFloat, short[] paramArrayOfShort, VertexAttribute[] paramArrayOfVertexAttribute)
  {
    return com.nianticproject.ingress.common.j.a.a(paramArrayOfFloat, null, paramArrayOfShort, paramArrayOfVertexAttribute);
  }

  public static void a(a parama)
  {
    if (b == null);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool, "Attempt to initialize Assets twice, which is not supported yet. This may happen if GDX recreates the Application (e.g, on orientation change).");
      b = (a)an.a(parama);
      return;
    }
  }

  public static void a(String paramString, TextureData paramTextureData, Texture.TextureFilter paramTextureFilter1, Texture.TextureFilter paramTextureFilter2, Texture.TextureWrap paramTextureWrap1, Texture.TextureWrap paramTextureWrap2, o<Texture> paramo)
  {
    if (paramTextureData != null)
      com.nianticproject.ingress.common.x.i.a().a(new d(paramTextureData, paramTextureFilter1, paramTextureFilter2, paramTextureWrap1, paramTextureWrap2, paramo, paramString));
  }

  public static void a(String paramString, TextureAtlas.TextureAtlasData paramTextureAtlasData, o<TextureAtlas> paramo)
  {
    if (paramTextureAtlasData != null)
      com.nianticproject.ingress.common.x.i.a().a(new f(paramTextureAtlasData, paramo, paramString));
  }

  public static void a(String paramString, com.nianticproject.ingress.common.j.c paramc, o<ai> paramo)
  {
    if (paramc == null)
      return;
    b localb = paramc.e;
    Object localObject;
    if (localb == null)
      localObject = null;
    while (true)
    {
      com.nianticproject.ingress.common.x.i.a().a(new i(paramString, paramo, paramc, (ab)localObject));
      return;
      if (localb.a.equals("opaque"));
      for (ah localah = new ah(paramString); ; localah = null)
      {
        if (localah != null)
          break label108;
        aa localaa = a;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = localb.a;
        arrayOfObject[1] = paramString;
        localaa.c("Material name not found: %s. While loading %s", arrayOfObject);
        localObject = null;
        break;
      }
      label108: ad.a(localb.b, new g(localah));
      if (localb.c != null)
        for (int i = 0; i < localb.c.length; i++)
        {
          String str = localb.c[i];
          Texture.TextureFilter localTextureFilter1 = Texture.TextureFilter.MipMapLinearLinear;
          Texture.TextureFilter localTextureFilter2 = Texture.TextureFilter.Linear;
          Texture.TextureWrap localTextureWrap1 = Texture.TextureWrap.Repeat;
          Texture.TextureWrap localTextureWrap2 = Texture.TextureWrap.Repeat;
          c.a(str, new e(str, localTextureFilter1, localTextureFilter2, localTextureWrap1, localTextureWrap2));
          com.nianticproject.ingress.common.x.i.a().a(new h(paramString, localb, i, localah));
        }
      localObject = localah;
    }
  }

  private static Texture b(TextureData paramTextureData)
  {
    int i = 0;
    Object localObject1 = null;
    Texture localTexture;
    while (true)
    {
      Object localObject2;
      int k;
      try
      {
        localTexture = new Texture(paramTextureData);
        int j = i;
        localObject2 = localObject1;
        k = j;
        if (localObject2 == null)
          break;
        boolean bool = paramTextureData instanceof FileTextureData;
        FileHandle localFileHandle = null;
        if (bool)
          localFileHandle = ((FileTextureData)paramTextureData).getFileHandle();
        aa localaa = a;
        Object[] arrayOfObject = new Object[4];
        arrayOfObject[0] = localFileHandle;
        arrayOfObject[1] = Integer.valueOf(k);
        arrayOfObject[2] = Texture.getManagedStatus();
        arrayOfObject[3] = localTexture;
        localaa.c(localObject2, "Exception in create texture. file(%s) try(%d) status(%s) texture(%s)", arrayOfObject);
        if (localTexture != null)
          break;
        throw localObject2;
      }
      catch (ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException1)
      {
        i++;
      }
      if (i >= 2)
      {
        ArrayIndexOutOfBoundsException localArrayIndexOutOfBoundsException2 = localArrayIndexOutOfBoundsException1;
        k = i;
        localObject2 = localArrayIndexOutOfBoundsException2;
        localTexture = null;
      }
    }
    return localTexture;
  }

  public static Texture b(String paramString)
  {
    return a(paramString, false);
  }

  public static TextureData b(String paramString, boolean paramBoolean)
  {
    try
    {
      aj.a("AssetUtils.prepareTextureData-", new File(paramString).getName());
      TextureData localTextureData = c(paramString, paramBoolean);
      localTextureData.prepare();
      return localTextureData;
    }
    finally
    {
      aj.b();
    }
  }

  private static a b()
  {
    return (a)an.a(b, "Assets has not been initialized yet.");
  }

  private static TextureData c(String paramString, boolean paramBoolean)
  {
    String str;
    if (paramBoolean)
      str = "-useMipMaps";
    try
    {
      aj.a("AssetUtils.getTextureData", str);
      FileTextureData localFileTextureData = new FileTextureData((FileHandle)an.a(a(paramString)), null, null, paramBoolean);
      return localFileTextureData;
      str = "";
    }
    finally
    {
      aj.b();
    }
  }

  public static TextureAtlas.TextureAtlasData c(String paramString)
  {
    FileHandle localFileHandle = (FileHandle)an.a(a(paramString));
    return new TextureAtlas.TextureAtlasData(localFileHandle, localFileHandle.parent(), false);
  }

  public static InputStream d(String paramString)
  {
    return b().a(paramString).read();
  }

  public static com.nianticproject.ingress.common.j.c e(String paramString)
  {
    try
    {
      aj.a("prepareMeshData(", paramString, ")");
      com.nianticproject.ingress.common.j.c localc = com.nianticproject.ingress.common.j.a.a(paramString);
      return localc;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.b.c
 * JD-Core Version:    0.6.2
 */
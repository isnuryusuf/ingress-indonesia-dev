package com.badlogic.gdx.graphics;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.assets.loaders.TextureLoader.TextureParameter;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.glutils.ETC1TextureData;
import com.badlogic.gdx.graphics.glutils.FileTextureData;
import com.badlogic.gdx.graphics.glutils.MipMapGenerator;
import com.badlogic.gdx.graphics.glutils.PixmapTextureData;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.BufferUtils;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.nio.IntBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class Texture
  implements Disposable
{
  private static AssetManager assetManager;
  private static final IntBuffer buffer = BufferUtils.newIntBuffer(1);
  private static boolean enforcePotImages = true;
  static final Map<Application, List<Texture>> managedTextures;
  private static boolean useHWMipMap = true;
  TextureData data;
  int glHandle;
  Texture.TextureFilter magFilter = Texture.TextureFilter.Nearest;
  Texture.TextureFilter minFilter = Texture.TextureFilter.Nearest;
  Texture.TextureWrap uWrap = Texture.TextureWrap.ClampToEdge;
  Texture.TextureWrap vWrap = Texture.TextureWrap.ClampToEdge;

  static
  {
    managedTextures = new HashMap();
  }

  public Texture(int paramInt1, int paramInt2, Pixmap.Format paramFormat)
  {
    this(new PixmapTextureData(new Pixmap(paramInt1, paramInt2, paramFormat), null, false, true));
  }

  public Texture(FileHandle paramFileHandle)
  {
    this(paramFileHandle, null, false);
  }

  public Texture(FileHandle paramFileHandle, Pixmap.Format paramFormat, boolean paramBoolean)
  {
    if (paramFileHandle.name().contains(".etc1"))
    {
      create(new ETC1TextureData(paramFileHandle, paramBoolean));
      return;
    }
    create(new FileTextureData(paramFileHandle, null, paramFormat, paramBoolean));
  }

  public Texture(FileHandle paramFileHandle, boolean paramBoolean)
  {
    this(paramFileHandle, null, paramBoolean);
  }

  public Texture(Pixmap paramPixmap)
  {
    this(new PixmapTextureData(paramPixmap, null, false, false));
  }

  public Texture(Pixmap paramPixmap, Pixmap.Format paramFormat, boolean paramBoolean)
  {
    this(new PixmapTextureData(paramPixmap, paramFormat, paramBoolean, false));
  }

  public Texture(Pixmap paramPixmap, boolean paramBoolean)
  {
    this(new PixmapTextureData(paramPixmap, null, paramBoolean, false));
  }

  public Texture(TextureData paramTextureData)
  {
    create(paramTextureData);
  }

  public Texture(String paramString)
  {
    this(Gdx.files.internal(paramString));
  }

  private static void addManagedTexture(Application paramApplication, Texture paramTexture)
  {
    Object localObject = (List)managedTextures.get(paramApplication);
    if (localObject == null)
      localObject = new ArrayList();
    ((List)localObject).add(paramTexture);
    managedTextures.put(paramApplication, localObject);
  }

  public static void clearAllTextures(Application paramApplication)
  {
    managedTextures.remove(paramApplication);
  }

  private void create(TextureData paramTextureData)
  {
    this.glHandle = createGLHandle();
    load(paramTextureData);
    if (paramTextureData.isManaged())
      addManagedTexture(Gdx.app, this);
  }

  public static int createGLHandle()
  {
    buffer.position(0);
    buffer.limit(buffer.capacity());
    Gdx.gl.glGenTextures(1, buffer);
    return buffer.get(0);
  }

  public static String getManagedStatus()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Managed textures/app: { ");
    Iterator localIterator = managedTextures.keySet().iterator();
    while (localIterator.hasNext())
    {
      Application localApplication = (Application)localIterator.next();
      localStringBuilder.append(((List)managedTextures.get(localApplication)).size());
      localStringBuilder.append(" ");
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }

  public static int getNumManagedTextures()
  {
    return ((List)managedTextures.get(Gdx.app)).size();
  }

  public static void invalidateAllTextures(Application paramApplication)
  {
    List localList = (List)managedTextures.get(paramApplication);
    if (localList == null);
    while (true)
    {
      return;
      AssetManager localAssetManager = assetManager;
      int i = 0;
      if (localAssetManager != null)
        break;
      while (i < localList.size())
      {
        ((Texture)localList.get(i)).reload();
        i++;
      }
    }
    assetManager.finishLoading();
    ArrayList localArrayList = new ArrayList(localList);
    Iterator localIterator = localArrayList.iterator();
    while (localIterator.hasNext())
    {
      Texture localTexture = (Texture)localIterator.next();
      String str = assetManager.getAssetFileName(localTexture);
      if (str == null)
      {
        localTexture.reload();
      }
      else
      {
        int j = assetManager.getReferenceCount(str);
        assetManager.setReferenceCount(str, 0);
        localTexture.glHandle = 0;
        TextureLoader.TextureParameter localTextureParameter = new TextureLoader.TextureParameter();
        localTextureParameter.textureData = localTexture.getTextureData();
        localTextureParameter.minFilter = localTexture.getMinFilter();
        localTextureParameter.magFilter = localTexture.getMagFilter();
        localTextureParameter.wrapU = localTexture.getUWrap();
        localTextureParameter.wrapV = localTexture.getVWrap();
        localTextureParameter.genMipMaps = localTexture.data.useMipMaps();
        localTextureParameter.texture = localTexture;
        localTextureParameter.loadedCallback = new Texture.1(j);
        assetManager.unload(str);
        localTexture.glHandle = createGLHandle();
        assetManager.load(str, Texture.class, localTextureParameter);
      }
    }
    localList.clear();
    localList.addAll(localArrayList);
  }

  private void reload()
  {
    if (!this.data.isManaged())
      throw new GdxRuntimeException("Tried to reload unmanaged Texture");
    this.glHandle = createGLHandle();
    load(this.data);
  }

  public static void setAssetManager(AssetManager paramAssetManager)
  {
    assetManager = paramAssetManager;
  }

  public static void setEnforcePotImages(boolean paramBoolean)
  {
    enforcePotImages = paramBoolean;
  }

  private void uploadImageData(Pixmap paramPixmap)
  {
    if ((enforcePotImages) && (Gdx.gl20 == null) && ((!MathUtils.isPowerOfTwo(this.data.getWidth())) || (!MathUtils.isPowerOfTwo(this.data.getHeight()))))
      throw new GdxRuntimeException("Texture width and height must be powers of two: " + this.data.getWidth() + "x" + this.data.getHeight());
    boolean bool;
    if (this.data.getFormat() != paramPixmap.getFormat())
    {
      Pixmap localPixmap = new Pixmap(paramPixmap.getWidth(), paramPixmap.getHeight(), this.data.getFormat());
      Pixmap.Blending localBlending = Pixmap.getBlending();
      Pixmap.setBlending(Pixmap.Blending.None);
      int i = paramPixmap.getWidth();
      int j = paramPixmap.getHeight();
      localPixmap.drawPixmap(paramPixmap, 0, 0, 0, 0, i, j);
      Pixmap.setBlending(localBlending);
      bool = true;
      paramPixmap = localPixmap;
    }
    while (true)
    {
      Gdx.gl.glBindTexture(3553, this.glHandle);
      Gdx.gl.glPixelStorei(3317, 1);
      if (this.data.useMipMaps())
        MipMapGenerator.generateMipMap(paramPixmap, paramPixmap.getWidth(), paramPixmap.getHeight(), bool);
      do
      {
        return;
        Gdx.gl.glTexImage2D(3553, 0, paramPixmap.getGLInternalFormat(), paramPixmap.getWidth(), paramPixmap.getHeight(), 0, paramPixmap.getGLFormat(), paramPixmap.getGLType(), paramPixmap.getPixels());
      }
      while (!bool);
      paramPixmap.dispose();
      return;
      bool = false;
    }
  }

  public void bind()
  {
    Gdx.gl.glBindTexture(3553, this.glHandle);
  }

  public void bind(int paramInt)
  {
    Gdx.gl.glActiveTexture(33984 + paramInt);
    Gdx.gl.glBindTexture(3553, this.glHandle);
  }

  public void dispose()
  {
    if (this.glHandle == 0)
      return;
    buffer.put(0, this.glHandle);
    Gdx.gl.glDeleteTextures(1, buffer);
    if ((this.data.isManaged()) && (managedTextures.get(Gdx.app) != null))
      ((List)managedTextures.get(Gdx.app)).remove(this);
    this.glHandle = 0;
  }

  public void draw(Pixmap paramPixmap, int paramInt1, int paramInt2)
  {
    if (this.data.isManaged())
      throw new GdxRuntimeException("can't draw to a managed texture");
    Gdx.gl.glBindTexture(3553, this.glHandle);
    Gdx.gl.glTexSubImage2D(3553, 0, paramInt1, paramInt2, paramPixmap.getWidth(), paramPixmap.getHeight(), paramPixmap.getGLFormat(), paramPixmap.getGLType(), paramPixmap.getPixels());
  }

  public int getHeight()
  {
    return this.data.getHeight();
  }

  public Texture.TextureFilter getMagFilter()
  {
    return this.magFilter;
  }

  public Texture.TextureFilter getMinFilter()
  {
    return this.minFilter;
  }

  public TextureData getTextureData()
  {
    return this.data;
  }

  public int getTextureObjectHandle()
  {
    return this.glHandle;
  }

  public Texture.TextureWrap getUWrap()
  {
    return this.uWrap;
  }

  public Texture.TextureWrap getVWrap()
  {
    return this.vWrap;
  }

  public int getWidth()
  {
    return this.data.getWidth();
  }

  public boolean isManaged()
  {
    return this.data.isManaged();
  }

  public void load(TextureData paramTextureData)
  {
    if ((this.data != null) && (paramTextureData.isManaged() != this.data.isManaged()))
      throw new GdxRuntimeException("New data must have the same managed status as the old data");
    this.data = paramTextureData;
    if (!paramTextureData.isPrepared())
      paramTextureData.prepare();
    if (paramTextureData.getType() == TextureData.TextureDataType.Pixmap)
    {
      Pixmap localPixmap = paramTextureData.consumePixmap();
      uploadImageData(localPixmap);
      if (paramTextureData.disposePixmap())
        localPixmap.dispose();
      setFilter(this.minFilter, this.magFilter);
      setWrap(this.uWrap, this.vWrap);
    }
    if (paramTextureData.getType() == TextureData.TextureDataType.Compressed)
    {
      Gdx.gl.glBindTexture(3553, this.glHandle);
      paramTextureData.consumeCompressedData();
      setFilter(this.minFilter, this.magFilter);
      setWrap(this.uWrap, this.vWrap);
    }
    Gdx.gl.glBindTexture(3553, 0);
  }

  public void setFilter(Texture.TextureFilter paramTextureFilter1, Texture.TextureFilter paramTextureFilter2)
  {
    this.minFilter = paramTextureFilter1;
    this.magFilter = paramTextureFilter2;
    bind();
    Gdx.gl.glTexParameterf(3553, 10241, paramTextureFilter1.getGLEnum());
    Gdx.gl.glTexParameterf(3553, 10240, paramTextureFilter2.getGLEnum());
  }

  public void setWrap(Texture.TextureWrap paramTextureWrap1, Texture.TextureWrap paramTextureWrap2)
  {
    this.uWrap = paramTextureWrap1;
    this.vWrap = paramTextureWrap2;
    bind();
    Gdx.gl.glTexParameterf(3553, 10242, paramTextureWrap1.getGLEnum());
    Gdx.gl.glTexParameterf(3553, 10243, paramTextureWrap2.getGLEnum());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.Texture
 * JD-Core Version:    0.6.2
 */
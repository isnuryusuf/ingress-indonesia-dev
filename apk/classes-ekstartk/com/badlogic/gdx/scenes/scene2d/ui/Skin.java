package com.badlogic.gdx.scenes.scene2d.ui;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.NinePatch;
import com.badlogic.gdx.graphics.g2d.Sprite;
import com.badlogic.gdx.graphics.g2d.TextureAtlas;
import com.badlogic.gdx.graphics.g2d.TextureAtlas.AtlasRegion;
import com.badlogic.gdx.graphics.g2d.TextureAtlas.AtlasSprite;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.scenes.scene2d.Actor;
import com.badlogic.gdx.scenes.scene2d.utils.Drawable;
import com.badlogic.gdx.scenes.scene2d.utils.NinePatchDrawable;
import com.badlogic.gdx.scenes.scene2d.utils.SpriteDrawable;
import com.badlogic.gdx.scenes.scene2d.utils.TextureRegionDrawable;
import com.badlogic.gdx.scenes.scene2d.utils.TiledDrawable;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.Json;
import com.badlogic.gdx.utils.ObjectMap;
import com.badlogic.gdx.utils.ObjectMap.Values;
import com.badlogic.gdx.utils.SerializationException;
import java.lang.reflect.Method;
import java.util.Iterator;

public class Skin
  implements Disposable
{
  TextureAtlas atlas;
  Padding.PaddingProvider paddingProvider;
  ObjectMap<Class, ObjectMap<String, Object>> resources = new ObjectMap();

  public Skin()
  {
  }

  public Skin(FileHandle paramFileHandle)
  {
    FileHandle localFileHandle = paramFileHandle.sibling(paramFileHandle.nameWithoutExtension() + ".atlas");
    if (localFileHandle.exists())
    {
      this.atlas = new TextureAtlas(localFileHandle);
      addRegions(this.atlas);
    }
    load(paramFileHandle);
  }

  public Skin(FileHandle paramFileHandle, TextureAtlas paramTextureAtlas)
  {
    this.atlas = paramTextureAtlas;
    addRegions(paramTextureAtlas);
    load(paramFileHandle);
  }

  public Skin(FileHandle paramFileHandle, TextureAtlas paramTextureAtlas, Padding.PaddingProvider paramPaddingProvider)
  {
    this.atlas = paramTextureAtlas;
    this.paddingProvider = paramPaddingProvider;
    addRegions(paramTextureAtlas);
    load(paramFileHandle);
  }

  public Skin(FileHandle paramFileHandle, Padding.PaddingProvider paramPaddingProvider)
  {
    this.paddingProvider = paramPaddingProvider;
    FileHandle localFileHandle = paramFileHandle.sibling(paramFileHandle.nameWithoutExtension() + ".atlas");
    if (localFileHandle.exists())
    {
      this.atlas = new TextureAtlas(localFileHandle);
      addRegions(this.atlas);
    }
    load(paramFileHandle);
  }

  public Skin(TextureAtlas paramTextureAtlas)
  {
    this.atlas = paramTextureAtlas;
    addRegions(paramTextureAtlas);
  }

  public Skin(TextureAtlas paramTextureAtlas, Padding.PaddingProvider paramPaddingProvider)
  {
    this.atlas = paramTextureAtlas;
    this.paddingProvider = paramPaddingProvider;
    addRegions(paramTextureAtlas);
  }

  private static Method findMethod(Class paramClass, String paramString)
  {
    for (Method localMethod : paramClass.getMethods())
      if (localMethod.getName().equals(paramString))
        return localMethod;
    return null;
  }

  public void add(String paramString, Object paramObject)
  {
    add(paramString, paramObject, paramObject.getClass());
  }

  public void add(String paramString, Object paramObject, Class paramClass)
  {
    if (paramString == null)
      throw new IllegalArgumentException("name cannot be null.");
    if (paramObject == null)
      throw new IllegalArgumentException("resource cannot be null.");
    ObjectMap localObjectMap = (ObjectMap)this.resources.get(paramClass);
    if (localObjectMap == null)
    {
      localObjectMap = new ObjectMap();
      this.resources.put(paramClass, localObjectMap);
    }
    localObjectMap.put(paramString, paramObject);
  }

  public void addRegions(TextureAtlas paramTextureAtlas)
  {
    Array localArray = paramTextureAtlas.getRegions();
    int i = localArray.size;
    for (int j = 0; j < i; j++)
    {
      TextureAtlas.AtlasRegion localAtlasRegion = (TextureAtlas.AtlasRegion)localArray.get(j);
      add(localAtlasRegion.name, localAtlasRegion, TextureRegion.class);
    }
  }

  public void dispose()
  {
    if (this.atlas != null)
      this.atlas.dispose();
    Iterator localIterator1 = this.resources.values().iterator();
    while (localIterator1.hasNext())
    {
      Iterator localIterator2 = ((ObjectMap)localIterator1.next()).values().iterator();
      while (localIterator2.hasNext())
      {
        Object localObject = localIterator2.next();
        if ((localObject instanceof Disposable))
          ((Disposable)localObject).dispose();
      }
    }
  }

  public String find(Object paramObject)
  {
    if (paramObject == null)
      throw new IllegalArgumentException("style cannot be null.");
    ObjectMap localObjectMap = (ObjectMap)this.resources.get(paramObject.getClass());
    if (localObjectMap == null)
      return null;
    return (String)localObjectMap.findKey(paramObject, true);
  }

  public <T> T get(Class<T> paramClass)
  {
    return get("default", paramClass);
  }

  public <T> T get(String paramString, Class<T> paramClass)
  {
    if (paramString == null)
      throw new IllegalArgumentException("name cannot be null.");
    if (paramClass == null)
      throw new IllegalArgumentException("type cannot be null.");
    Object localObject;
    if (paramClass == Drawable.class)
      localObject = getDrawable(paramString);
    do
    {
      return localObject;
      if (paramClass == TextureRegion.class)
        return getRegion(paramString);
      if (paramClass == NinePatch.class)
        return getPatch(paramString);
      if (paramClass == Sprite.class)
        return getSprite(paramString);
      ObjectMap localObjectMap = (ObjectMap)this.resources.get(paramClass);
      if (localObjectMap == null)
        throw new GdxRuntimeException("No " + paramClass.getName() + " registered with name: " + paramString);
      localObject = localObjectMap.get(paramString);
    }
    while (localObject != null);
    throw new GdxRuntimeException("No " + paramClass.getName() + " registered with name: " + paramString);
  }

  public <T> ObjectMap<String, T> getAll(Class<T> paramClass)
  {
    return (ObjectMap)this.resources.get(paramClass);
  }

  public TextureAtlas getAtlas()
  {
    return this.atlas;
  }

  public Color getColor(String paramString)
  {
    return (Color)get(paramString, Color.class);
  }

  // ERROR //
  public Drawable getDrawable(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: ldc 175
    //   4: invokevirtual 215	com/badlogic/gdx/scenes/scene2d/ui/Skin:optional	(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    //   7: checkcast 175	com/badlogic/gdx/scenes/scene2d/utils/Drawable
    //   10: astore_2
    //   11: aload_2
    //   12: ifnull +5 -> 17
    //   15: aload_2
    //   16: areturn
    //   17: aload_0
    //   18: aload_1
    //   19: ldc 217
    //   21: invokevirtual 215	com/badlogic/gdx/scenes/scene2d/ui/Skin:optional	(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    //   24: checkcast 175	com/badlogic/gdx/scenes/scene2d/utils/Drawable
    //   27: astore_2
    //   28: aload_2
    //   29: ifnonnull -14 -> 15
    //   32: aload_0
    //   33: aload_1
    //   34: invokevirtual 183	com/badlogic/gdx/scenes/scene2d/ui/Skin:getRegion	(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    //   37: astore 6
    //   39: aload 6
    //   41: instanceof 128
    //   44: ifeq +211 -> 255
    //   47: aload 6
    //   49: checkcast 128	com/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion
    //   52: astore 9
    //   54: aload 9
    //   56: getfield 221	com/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion:splits	[I
    //   59: ifnull +73 -> 132
    //   62: new 223	com/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable
    //   65: dup
    //   66: aload_0
    //   67: aload_1
    //   68: invokevirtual 189	com/badlogic/gdx/scenes/scene2d/ui/Skin:getPatch	(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    //   71: invokespecial 226	com/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable:<init>	(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V
    //   74: astore 7
    //   76: aload 7
    //   78: ifnonnull +171 -> 249
    //   81: new 228	com/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable
    //   84: dup
    //   85: aload 6
    //   87: invokespecial 231	com/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable:<init>	(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    //   90: astore_2
    //   91: aload_2
    //   92: ifnonnull +30 -> 122
    //   95: aload_0
    //   96: aload_1
    //   97: ldc 185
    //   99: invokevirtual 215	com/badlogic/gdx/scenes/scene2d/ui/Skin:optional	(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    //   102: checkcast 185	com/badlogic/gdx/graphics/g2d/NinePatch
    //   105: astore 4
    //   107: aload 4
    //   109: ifnull +78 -> 187
    //   112: new 223	com/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable
    //   115: dup
    //   116: aload 4
    //   118: invokespecial 226	com/badlogic/gdx/scenes/scene2d/utils/NinePatchDrawable:<init>	(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V
    //   121: astore_2
    //   122: aload_0
    //   123: aload_1
    //   124: aload_2
    //   125: ldc 175
    //   127: invokevirtual 96	com/badlogic/gdx/scenes/scene2d/ui/Skin:add	(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    //   130: aload_2
    //   131: areturn
    //   132: aload 9
    //   134: getfield 235	com/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion:rotate	Z
    //   137: ifne +29 -> 166
    //   140: aload 9
    //   142: getfield 238	com/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion:packedWidth	I
    //   145: aload 9
    //   147: getfield 241	com/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion:originalWidth	I
    //   150: if_icmpne +16 -> 166
    //   153: aload 9
    //   155: getfield 244	com/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion:packedHeight	I
    //   158: aload 9
    //   160: getfield 247	com/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion:originalHeight	I
    //   163: if_icmpeq +92 -> 255
    //   166: new 249	com/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable
    //   169: dup
    //   170: aload_0
    //   171: aload_1
    //   172: invokevirtual 195	com/badlogic/gdx/scenes/scene2d/ui/Skin:getSprite	(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/Sprite;
    //   175: invokespecial 252	com/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable:<init>	(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    //   178: astore 7
    //   180: goto -104 -> 76
    //   183: astore_3
    //   184: goto -93 -> 91
    //   187: aload_0
    //   188: aload_1
    //   189: ldc 191
    //   191: invokevirtual 215	com/badlogic/gdx/scenes/scene2d/ui/Skin:optional	(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    //   194: checkcast 191	com/badlogic/gdx/graphics/g2d/Sprite
    //   197: astore 5
    //   199: aload 5
    //   201: ifnull +16 -> 217
    //   204: new 249	com/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable
    //   207: dup
    //   208: aload 5
    //   210: invokespecial 252	com/badlogic/gdx/scenes/scene2d/utils/SpriteDrawable:<init>	(Lcom/badlogic/gdx/graphics/g2d/Sprite;)V
    //   213: astore_2
    //   214: goto -92 -> 122
    //   217: new 197	com/badlogic/gdx/utils/GdxRuntimeException
    //   220: dup
    //   221: new 25	java/lang/StringBuilder
    //   224: dup
    //   225: ldc 254
    //   227: invokespecial 200	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   230: aload_1
    //   231: invokevirtual 36	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: invokevirtual 41	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   237: invokespecial 204	com/badlogic/gdx/utils/GdxRuntimeException:<init>	(Ljava/lang/String;)V
    //   240: athrow
    //   241: astore 8
    //   243: aload 7
    //   245: astore_2
    //   246: goto -155 -> 91
    //   249: aload 7
    //   251: astore_2
    //   252: goto -161 -> 91
    //   255: aload_2
    //   256: astore 7
    //   258: goto -182 -> 76
    //
    // Exception table:
    //   from	to	target	type
    //   32	76	183	com/badlogic/gdx/utils/GdxRuntimeException
    //   132	166	183	com/badlogic/gdx/utils/GdxRuntimeException
    //   166	180	183	com/badlogic/gdx/utils/GdxRuntimeException
    //   81	91	241	com/badlogic/gdx/utils/GdxRuntimeException
  }

  public BitmapFont getFont(String paramString)
  {
    return (BitmapFont)get(paramString, BitmapFont.class);
  }

  protected Json getJsonLoader(FileHandle paramFileHandle)
  {
    Skin.1 local1 = new Skin.1(this);
    local1.setTypeName(null);
    local1.setUsePrototypes(false);
    local1.setSerializer(Skin.class, new Skin.2(this, this));
    local1.setSerializer(BitmapFont.class, new Skin.3(this, paramFileHandle, this));
    local1.setSerializer(Color.class, new Skin.4(this));
    local1.setSerializer(Skin.TintedDrawable.class, new Skin.5(this));
    return local1;
  }

  public Padding.PaddingProvider getPaddingProvider()
  {
    return this.paddingProvider;
  }

  public NinePatch getPatch(String paramString)
  {
    NinePatch localNinePatch = (NinePatch)optional(paramString, NinePatch.class);
    if (localNinePatch != null)
      return localNinePatch;
    try
    {
      TextureRegion localTextureRegion = getRegion(paramString);
      if ((localTextureRegion instanceof TextureAtlas.AtlasRegion))
      {
        int[] arrayOfInt = ((TextureAtlas.AtlasRegion)localTextureRegion).splits;
        if (arrayOfInt != null)
          localNinePatch = new NinePatch(localTextureRegion, arrayOfInt[0], arrayOfInt[1], arrayOfInt[2], arrayOfInt[3]);
      }
      if (localNinePatch == null)
        localNinePatch = new NinePatch(localTextureRegion);
      localNinePatch.setName(paramString);
      Padding.PaddingProvider localPaddingProvider = this.paddingProvider;
      Padding localPadding = null;
      if (localPaddingProvider != null)
        localPadding = this.paddingProvider.getPadding(paramString);
      localNinePatch.setPadding(localPadding);
      add(paramString, localNinePatch, NinePatch.class);
      return localNinePatch;
    }
    catch (GdxRuntimeException localGdxRuntimeException)
    {
    }
    throw new GdxRuntimeException("No NinePatch, TextureRegion, or Texture registered with name: " + paramString);
  }

  public TextureRegion getRegion(String paramString)
  {
    TextureRegion localTextureRegion1 = (TextureRegion)optional(paramString, TextureRegion.class);
    if (localTextureRegion1 != null)
      return localTextureRegion1;
    Texture localTexture = (Texture)optional(paramString, Texture.class);
    if (localTexture == null)
      throw new GdxRuntimeException("No TextureRegion or Texture registered with name: " + paramString);
    TextureRegion localTextureRegion2 = new TextureRegion(localTexture);
    add(paramString, localTextureRegion2, Texture.class);
    return localTextureRegion2;
  }

  public Sprite getSprite(String paramString)
  {
    Object localObject = (Sprite)optional(paramString, Sprite.class);
    if (localObject != null)
      return localObject;
    try
    {
      TextureRegion localTextureRegion = getRegion(paramString);
      if ((localTextureRegion instanceof TextureAtlas.AtlasRegion))
      {
        TextureAtlas.AtlasRegion localAtlasRegion = (TextureAtlas.AtlasRegion)localTextureRegion;
        if ((localAtlasRegion.rotate) || (localAtlasRegion.packedWidth != localAtlasRegion.originalWidth) || (localAtlasRegion.packedHeight != localAtlasRegion.originalHeight))
          localObject = new TextureAtlas.AtlasSprite(localAtlasRegion);
      }
      if (localObject == null)
        localObject = new Sprite(localTextureRegion);
      add(paramString, localObject, NinePatch.class);
      return localObject;
    }
    catch (GdxRuntimeException localGdxRuntimeException)
    {
    }
    throw new GdxRuntimeException("No NinePatch, TextureRegion, or Texture registered with name: " + paramString);
  }

  public TiledDrawable getTiledDrawable(String paramString)
  {
    TiledDrawable localTiledDrawable1 = (TiledDrawable)optional(paramString, TiledDrawable.class);
    if (localTiledDrawable1 != null);
    Drawable localDrawable;
    do
    {
      return localTiledDrawable1;
      localDrawable = (Drawable)optional(paramString, Drawable.class);
      if (localTiledDrawable1 == null)
        break;
    }
    while ((localDrawable instanceof TiledDrawable));
    throw new GdxRuntimeException("Drawable found but is not a TiledDrawable: " + paramString + ", " + localDrawable.getClass().getName());
    TiledDrawable localTiledDrawable2 = new TiledDrawable(getRegion(paramString));
    add(paramString, localTiledDrawable2, TiledDrawable.class);
    return localTiledDrawable2;
  }

  public boolean has(String paramString, Class paramClass)
  {
    ObjectMap localObjectMap = (ObjectMap)this.resources.get(paramClass);
    if (localObjectMap == null)
      return false;
    return localObjectMap.containsKey(paramString);
  }

  public void load(FileHandle paramFileHandle)
  {
    try
    {
      getJsonLoader(paramFileHandle).fromJson(Skin.class, paramFileHandle);
      return;
    }
    catch (SerializationException localSerializationException)
    {
      throw new SerializationException("Error reading file: " + paramFileHandle, localSerializationException);
    }
  }

  public Drawable newDrawable(String paramString)
  {
    Drawable localDrawable = getDrawable(paramString);
    if ((localDrawable instanceof TextureRegionDrawable))
      return new TextureRegionDrawable((TextureRegionDrawable)localDrawable);
    if ((localDrawable instanceof NinePatchDrawable))
      return new NinePatchDrawable((NinePatchDrawable)localDrawable);
    if ((localDrawable instanceof SpriteDrawable))
      return new SpriteDrawable((SpriteDrawable)localDrawable);
    throw new GdxRuntimeException("Unable to copy, unknown drawable type: " + localDrawable.getClass());
  }

  public Drawable newDrawable(String paramString, Color paramColor)
  {
    Drawable localDrawable = getDrawable(paramString);
    if ((localDrawable instanceof TextureRegionDrawable))
    {
      Sprite localSprite1 = new Sprite(((TextureRegionDrawable)localDrawable).getRegion());
      localSprite1.setColor(paramColor);
      return new SpriteDrawable(localSprite1);
    }
    if ((localDrawable instanceof NinePatchDrawable))
    {
      NinePatchDrawable localNinePatchDrawable = new NinePatchDrawable((NinePatchDrawable)localDrawable);
      localNinePatchDrawable.setPatch(new NinePatch(localNinePatchDrawable.getPatch(), paramColor));
      return localNinePatchDrawable;
    }
    if ((localDrawable instanceof SpriteDrawable))
    {
      SpriteDrawable localSpriteDrawable = new SpriteDrawable((SpriteDrawable)localDrawable);
      Sprite localSprite2 = new Sprite(localSpriteDrawable.getSprite());
      localSprite2.setColor(paramColor);
      localSpriteDrawable.setSprite(localSprite2);
      return localSpriteDrawable;
    }
    throw new GdxRuntimeException("Unable to copy, unknown drawable type: " + localDrawable.getClass());
  }

  public <T> T optional(String paramString, Class<T> paramClass)
  {
    if (paramString == null)
      throw new IllegalArgumentException("name cannot be null.");
    if (paramClass == null)
      throw new IllegalArgumentException("type cannot be null.");
    ObjectMap localObjectMap = (ObjectMap)this.resources.get(paramClass);
    if (localObjectMap == null)
      return null;
    return localObjectMap.get(paramString);
  }

  public void setEnabled(Actor paramActor, boolean paramBoolean)
  {
    Method localMethod1 = findMethod(paramActor.getClass(), "getStyle");
    if (localMethod1 == null);
    while (true)
    {
      return;
      try
      {
        Object localObject1 = localMethod1.invoke(paramActor, new Object[0]);
        String str1 = find(localObject1);
        if (str1 != null)
        {
          StringBuilder localStringBuilder = new StringBuilder().append(str1.replace("-disabled", ""));
          if (paramBoolean);
          for (String str2 = ""; ; str2 = "-disabled")
          {
            Object localObject2 = get(str2, localObject1.getClass());
            Method localMethod2 = findMethod(paramActor.getClass(), "setStyle");
            if (localMethod2 == null)
              break;
            try
            {
              localMethod2.invoke(paramActor, new Object[] { localObject2 });
              return;
            }
            catch (Exception localException2)
            {
              return;
            }
          }
        }
      }
      catch (Exception localException1)
      {
      }
    }
  }

  public void setPaddingProvider(Padding.PaddingProvider paramPaddingProvider)
  {
    this.paddingProvider = paramPaddingProvider;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.scenes.scene2d.ui.Skin
 * JD-Core Version:    0.6.2
 */
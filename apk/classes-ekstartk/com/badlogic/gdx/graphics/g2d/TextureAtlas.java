package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.badlogic.gdx.utils.ObjectMap;
import java.io.BufferedReader;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class TextureAtlas
  implements Disposable
{
  static final Comparator<TextureAtlas.TextureAtlasData.Region> indexComparator = new TextureAtlas.1();
  static final String[] tuple = new String[4];
  private final Array<TextureAtlas.AtlasRegion> regions = new Array();
  private final HashSet<Texture> textures = new HashSet(4);

  public TextureAtlas()
  {
  }

  public TextureAtlas(FileHandle paramFileHandle)
  {
    this(paramFileHandle, paramFileHandle.parent());
  }

  public TextureAtlas(FileHandle paramFileHandle1, FileHandle paramFileHandle2)
  {
    this(paramFileHandle1, paramFileHandle2, false);
  }

  public TextureAtlas(FileHandle paramFileHandle1, FileHandle paramFileHandle2, boolean paramBoolean)
  {
    this(new TextureAtlas.TextureAtlasData(paramFileHandle1, paramFileHandle2, paramBoolean));
  }

  public TextureAtlas(FileHandle paramFileHandle, boolean paramBoolean)
  {
    this(paramFileHandle, paramFileHandle.parent(), paramBoolean);
  }

  public TextureAtlas(TextureAtlas.TextureAtlasData paramTextureAtlasData)
  {
    if (paramTextureAtlasData != null)
      load(paramTextureAtlasData);
  }

  public TextureAtlas(String paramString)
  {
    this(Gdx.files.internal(paramString));
  }

  private void load(TextureAtlas.TextureAtlasData paramTextureAtlasData)
  {
    ObjectMap localObjectMap = new ObjectMap();
    Iterator localIterator1 = paramTextureAtlasData.pages.iterator();
    if (localIterator1.hasNext())
    {
      TextureAtlas.TextureAtlasData.Page localPage = (TextureAtlas.TextureAtlasData.Page)localIterator1.next();
      Texture localTexture2;
      if (localPage.texture == null)
      {
        localTexture2 = new Texture(localPage.textureFile, localPage.format, localPage.useMipMaps);
        localTexture2.setFilter(localPage.minFilter, localPage.magFilter);
        localTexture2.setWrap(localPage.uWrap, localPage.vWrap);
      }
      while (true)
      {
        this.textures.add(localTexture2);
        localObjectMap.put(localPage, localTexture2);
        break;
        localTexture2 = localPage.texture;
        localTexture2.setFilter(localPage.minFilter, localPage.magFilter);
        localTexture2.setWrap(localPage.uWrap, localPage.vWrap);
      }
    }
    Iterator localIterator2 = paramTextureAtlasData.regions.iterator();
    if (localIterator2.hasNext())
    {
      TextureAtlas.TextureAtlasData.Region localRegion = (TextureAtlas.TextureAtlasData.Region)localIterator2.next();
      int i = localRegion.width;
      int j = localRegion.height;
      Texture localTexture1 = (Texture)localObjectMap.get(localRegion.page);
      int k = localRegion.left;
      int m = localRegion.top;
      if (localRegion.rotate);
      for (int n = j; ; n = i)
      {
        if (localRegion.rotate)
          j = i;
        TextureAtlas.AtlasRegion localAtlasRegion = new TextureAtlas.AtlasRegion(localTexture1, k, m, n, j);
        localAtlasRegion.index = localRegion.index;
        localAtlasRegion.name = localRegion.name;
        localAtlasRegion.offsetX = localRegion.offsetX;
        localAtlasRegion.offsetY = localRegion.offsetY;
        localAtlasRegion.originalHeight = localRegion.originalHeight;
        localAtlasRegion.originalWidth = localRegion.originalWidth;
        localAtlasRegion.rotate = localRegion.rotate;
        localAtlasRegion.splits = localRegion.splits;
        localAtlasRegion.pads = localRegion.pads;
        if (localRegion.flip)
          localAtlasRegion.flip(false, true);
        this.regions.add(localAtlasRegion);
        break;
      }
    }
  }

  private Sprite newSprite(TextureAtlas.AtlasRegion paramAtlasRegion)
  {
    if ((paramAtlasRegion.packedWidth == paramAtlasRegion.originalWidth) && (paramAtlasRegion.packedHeight == paramAtlasRegion.originalHeight))
    {
      if (paramAtlasRegion.rotate)
      {
        Sprite localSprite = new Sprite(paramAtlasRegion);
        localSprite.setBounds(0.0F, 0.0F, paramAtlasRegion.getRegionHeight(), paramAtlasRegion.getRegionWidth());
        localSprite.rotate90(true);
        return localSprite;
      }
      return new Sprite(paramAtlasRegion);
    }
    return new TextureAtlas.AtlasSprite(paramAtlasRegion);
  }

  static int readTuple(BufferedReader paramBufferedReader)
  {
    String str = paramBufferedReader.readLine();
    int i = str.indexOf(':');
    if (i == -1)
      throw new GdxRuntimeException("Invalid line: " + str);
    int j = i + 1;
    for (int k = 0; k < 3; k++)
    {
      int m = str.indexOf(',', j);
      if (m == -1)
      {
        if (k != 0)
          break;
        throw new GdxRuntimeException("Invalid line: " + str);
      }
      tuple[k] = str.substring(j, m).trim();
      j = m + 1;
    }
    tuple[k] = str.substring(j).trim();
    return k + 1;
  }

  static String readValue(BufferedReader paramBufferedReader)
  {
    String str = paramBufferedReader.readLine();
    int i = str.indexOf(':');
    if (i == -1)
      throw new GdxRuntimeException("Invalid line: " + str);
    return str.substring(i + 1).trim();
  }

  public TextureAtlas.AtlasRegion addRegion(String paramString, Texture paramTexture, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.textures.add(paramTexture);
    TextureAtlas.AtlasRegion localAtlasRegion = new TextureAtlas.AtlasRegion(paramTexture, paramInt1, paramInt2, paramInt3, paramInt4);
    localAtlasRegion.name = paramString;
    localAtlasRegion.originalWidth = paramInt3;
    localAtlasRegion.originalHeight = paramInt4;
    localAtlasRegion.index = -1;
    this.regions.add(localAtlasRegion);
    return localAtlasRegion;
  }

  public TextureAtlas.AtlasRegion addRegion(String paramString, TextureRegion paramTextureRegion)
  {
    return addRegion(paramString, paramTextureRegion.texture, paramTextureRegion.getRegionX(), paramTextureRegion.getRegionY(), paramTextureRegion.getRegionWidth(), paramTextureRegion.getRegionHeight());
  }

  public NinePatch createPatch(String paramString)
  {
    int i = this.regions.size;
    for (int j = 0; j < i; j++)
    {
      TextureAtlas.AtlasRegion localAtlasRegion = (TextureAtlas.AtlasRegion)this.regions.get(j);
      if (localAtlasRegion.name.equals(paramString))
      {
        int[] arrayOfInt = localAtlasRegion.splits;
        if (arrayOfInt == null)
          throw new IllegalArgumentException("Region does not have ninepatch splits: " + paramString);
        return new NinePatch(localAtlasRegion, arrayOfInt[0], arrayOfInt[1], arrayOfInt[2], arrayOfInt[3]);
      }
    }
    return null;
  }

  public Sprite createSprite(String paramString)
  {
    int i = this.regions.size;
    for (int j = 0; j < i; j++)
      if (((TextureAtlas.AtlasRegion)this.regions.get(j)).name.equals(paramString))
        return newSprite((TextureAtlas.AtlasRegion)this.regions.get(j));
    return null;
  }

  public Sprite createSprite(String paramString, int paramInt)
  {
    int i = this.regions.size;
    for (int j = 0; j < i; j++)
    {
      TextureAtlas.AtlasRegion localAtlasRegion = (TextureAtlas.AtlasRegion)this.regions.get(j);
      if ((localAtlasRegion.name.equals(paramString)) && (localAtlasRegion.index == paramInt))
        return newSprite((TextureAtlas.AtlasRegion)this.regions.get(j));
    }
    return null;
  }

  public Array<Sprite> createSprites()
  {
    Array localArray = new Array(this.regions.size);
    int i = this.regions.size;
    for (int j = 0; j < i; j++)
      localArray.add(newSprite((TextureAtlas.AtlasRegion)this.regions.get(j)));
    return localArray;
  }

  public Array<Sprite> createSprites(String paramString)
  {
    Array localArray = new Array();
    int i = this.regions.size;
    for (int j = 0; j < i; j++)
    {
      TextureAtlas.AtlasRegion localAtlasRegion = (TextureAtlas.AtlasRegion)this.regions.get(j);
      if (localAtlasRegion.name.equals(paramString))
        localArray.add(newSprite(localAtlasRegion));
    }
    return localArray;
  }

  public void dispose()
  {
    Iterator localIterator = this.textures.iterator();
    while (localIterator.hasNext())
      ((Texture)localIterator.next()).dispose();
    this.textures.clear();
  }

  public TextureAtlas.AtlasRegion findRegion(String paramString)
  {
    int i = this.regions.size;
    for (int j = 0; j < i; j++)
      if (((TextureAtlas.AtlasRegion)this.regions.get(j)).name.equals(paramString))
        return (TextureAtlas.AtlasRegion)this.regions.get(j);
    return null;
  }

  public TextureAtlas.AtlasRegion findRegion(String paramString, int paramInt)
  {
    int i = this.regions.size;
    for (int j = 0; j < i; j++)
    {
      TextureAtlas.AtlasRegion localAtlasRegion = (TextureAtlas.AtlasRegion)this.regions.get(j);
      if ((localAtlasRegion.name.equals(paramString)) && (localAtlasRegion.index == paramInt))
        return localAtlasRegion;
    }
    return null;
  }

  public Array<TextureAtlas.AtlasRegion> findRegions(String paramString)
  {
    Array localArray = new Array();
    int i = this.regions.size;
    for (int j = 0; j < i; j++)
    {
      TextureAtlas.AtlasRegion localAtlasRegion = (TextureAtlas.AtlasRegion)this.regions.get(j);
      if (localAtlasRegion.name.equals(paramString))
        localArray.add(new TextureAtlas.AtlasRegion(localAtlasRegion));
    }
    return localArray;
  }

  public Array<TextureAtlas.AtlasRegion> getRegions()
  {
    return this.regions;
  }

  public Set<Texture> getTextures()
  {
    return this.textures;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.TextureAtlas
 * JD-Core Version:    0.6.2
 */
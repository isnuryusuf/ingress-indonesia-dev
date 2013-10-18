package com.badlogic.gdx.graphics.g2d.tiled;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.GLCommon;
import com.badlogic.gdx.graphics.OrthographicCamera;
import com.badlogic.gdx.graphics.g2d.SpriteCache;
import com.badlogic.gdx.graphics.g2d.TextureAtlas.AtlasRegion;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.graphics.glutils.ShaderProgram;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.math.Matrix4;
import com.badlogic.gdx.math.Vector3;
import com.badlogic.gdx.utils.Disposable;
import com.badlogic.gdx.utils.IntArray;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.StringTokenizer;

public class TileMapRenderer
  implements Disposable
{
  private int[] allLayers;
  private TileAtlas atlas;
  private int[][][] blendedCacheId;
  private IntArray blendedTiles;
  private SpriteCache cache;
  private int currentCol;
  private int currentLayer;
  private int currentRow;
  private int initialCol;
  private int initialRow;
  private boolean isSimpleTileAtlas = false;
  private int lastCol;
  private int lastRow;
  private TiledMap map;
  private int mapHeightUnits;
  private int mapWidthUnits;
  private int[][][] normalCacheId;
  public float overdrawX;
  public float overdrawY;
  private int tileHeight;
  private int tileWidth;
  private int tilesPerBlockX;
  private int tilesPerBlockY;
  Vector3 tmp = new Vector3();
  private float unitsPerBlockX;
  private float unitsPerBlockY;
  private float unitsPerTileX;
  private float unitsPerTileY;

  public TileMapRenderer(TiledMap paramTiledMap, TileAtlas paramTileAtlas, int paramInt1, int paramInt2)
  {
    this(paramTiledMap, paramTileAtlas, paramInt1, paramInt2, paramTiledMap.tileWidth, paramTiledMap.tileHeight);
  }

  public TileMapRenderer(TiledMap paramTiledMap, TileAtlas paramTileAtlas, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2)
  {
    this(paramTiledMap, paramTileAtlas, paramInt1, paramInt2, paramFloat1, paramFloat2, null);
  }

  public TileMapRenderer(TiledMap paramTiledMap, TileAtlas paramTileAtlas, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, ShaderProgram paramShaderProgram)
  {
    int[][][] arrayOfInt = new int[paramTiledMap.layers.size()][][];
    for (int i = 0; i < paramTiledMap.layers.size(); i++)
      arrayOfInt[i] = ((TiledLayer)paramTiledMap.layers.get(i)).tiles;
    for (int j = 0; j < paramTiledMap.tileSets.size(); j++)
    {
      if (((TileSet)paramTiledMap.tileSets.get(j)).tileHeight - paramTiledMap.tileHeight > paramFloat2 * this.overdrawY)
        this.overdrawY = ((((TileSet)paramTiledMap.tileSets.get(j)).tileHeight - paramTiledMap.tileHeight) / paramFloat2);
      if (((TileSet)paramTiledMap.tileSets.get(j)).tileWidth - paramTiledMap.tileWidth > paramFloat1 * this.overdrawX)
        this.overdrawX = ((((TileSet)paramTiledMap.tileSets.get(j)).tileWidth - paramTiledMap.tileWidth) / paramFloat1);
    }
    String str = (String)paramTiledMap.properties.get("blended tiles");
    if (str != null);
    for (IntArray localIntArray = createFromCSV(str); ; localIntArray = new IntArray(0))
    {
      init(arrayOfInt, paramTileAtlas, paramTiledMap.tileWidth, paramTiledMap.tileHeight, paramFloat1, paramFloat2, localIntArray, paramInt1, paramInt2, paramShaderProgram);
      this.map = paramTiledMap;
      return;
    }
  }

  public TileMapRenderer(TiledMap paramTiledMap, TileAtlas paramTileAtlas, int paramInt1, int paramInt2, ShaderProgram paramShaderProgram)
  {
    this(paramTiledMap, paramTileAtlas, paramInt1, paramInt2, paramTiledMap.tileWidth, paramTiledMap.tileHeight, paramShaderProgram);
  }

  public TileMapRenderer(int[][][] paramArrayOfInt, TileAtlas paramTileAtlas, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, IntArray paramIntArray, int paramInt3, int paramInt4)
  {
    init(paramArrayOfInt, paramTileAtlas, paramInt1, paramInt2, paramFloat1, paramFloat2, paramIntArray, paramInt3, paramInt4, null);
  }

  public TileMapRenderer(int[][][] paramArrayOfInt, TileAtlas paramTileAtlas, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, IntArray paramIntArray, int paramInt3, int paramInt4, ShaderProgram paramShaderProgram)
  {
    init(paramArrayOfInt, paramTileAtlas, paramInt1, paramInt2, paramFloat1, paramFloat2, paramIntArray, paramInt3, paramInt4, paramShaderProgram);
  }

  private int addBlock(int[][] paramArrayOfInt, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    this.cache.beginCache();
    int i = paramInt2 * this.tilesPerBlockX;
    int j = paramInt1 * this.tilesPerBlockY;
    int k = i + this.tilesPerBlockX;
    int m = j + this.tilesPerBlockY;
    for (int n = j; (n < m) && (n < paramArrayOfInt.length); n++)
    {
      int i1 = i;
      if ((i1 < k) && (i1 < paramArrayOfInt[n].length))
      {
        int i2 = paramArrayOfInt[n][i1];
        TextureRegion localTextureRegion;
        float f9;
        if ((i2 != 0) && (paramBoolean == this.blendedTiles.contains(i2)))
        {
          localTextureRegion = this.atlas.getRegion(i2);
          if (localTextureRegion != null)
          {
            if (this.isSimpleTileAtlas)
              break label294;
            TextureAtlas.AtlasRegion localAtlasRegion = (TextureAtlas.AtlasRegion)localTextureRegion;
            SpriteCache localSpriteCache = this.cache;
            float f1 = i1 * this.unitsPerTileX;
            float f2 = (-1 + (paramArrayOfInt.length - n)) * this.unitsPerTileY;
            float f3 = localAtlasRegion.offsetX * this.unitsPerTileX / this.tileWidth;
            float f4 = localAtlasRegion.offsetY * this.unitsPerTileY / this.tileHeight;
            float f5 = localAtlasRegion.packedWidth;
            float f6 = localAtlasRegion.packedHeight;
            float f7 = this.unitsPerTileX / this.tileWidth;
            float f8 = this.unitsPerTileY / this.tileHeight;
            if (!localAtlasRegion.rotate)
              break label288;
            f9 = 90.0F;
            label257: localSpriteCache.add(localAtlasRegion, f1, f2, f3, f4, f5, f6, f7, f8, f9);
          }
        }
        while (true)
        {
          i1++;
          break;
          label288: f9 = 0.0F;
          break label257;
          label294: this.cache.add(localTextureRegion, i1 * this.unitsPerTileX, (-1 + (paramArrayOfInt.length - n)) * this.unitsPerTileY, 0.0F, 0.0F, localTextureRegion.getRegionWidth(), localTextureRegion.getRegionHeight(), this.unitsPerTileX / this.tileWidth, this.unitsPerTileY / this.tileHeight, 0.0F);
        }
      }
    }
    return this.cache.endCache();
  }

  private static IntArray createFromCSV(String paramString)
  {
    IntArray localIntArray = new IntArray(false, (1 + paramString.length()) / 2);
    StringTokenizer localStringTokenizer = new StringTokenizer(paramString, ",");
    while (localStringTokenizer.hasMoreTokens())
      localIntArray.add(Integer.parseInt(localStringTokenizer.nextToken()));
    localIntArray.shrink();
    return localIntArray;
  }

  private int getLayerHeightInBlocks(int paramInt)
  {
    if ((this.normalCacheId != null) && (this.normalCacheId[paramInt] != null));
    for (int i = this.normalCacheId[paramInt].length; ; i = 0)
    {
      int[][][] arrayOfInt = this.blendedCacheId;
      int j = 0;
      if (arrayOfInt != null)
      {
        int[][] arrayOfInt1 = this.blendedCacheId[paramInt];
        j = 0;
        if (arrayOfInt1 != null)
          j = this.blendedCacheId[paramInt].length;
      }
      return Math.max(i, j);
    }
  }

  private int getLayerWidthInBlocks(int paramInt1, int paramInt2)
  {
    if ((this.normalCacheId != null) && (this.normalCacheId[paramInt1] != null) && (this.normalCacheId[paramInt1][paramInt2] != null));
    for (int i = this.normalCacheId[paramInt1][paramInt2].length; ; i = 0)
    {
      int[][][] arrayOfInt = this.blendedCacheId;
      int j = 0;
      if (arrayOfInt != null)
      {
        int[][] arrayOfInt1 = this.blendedCacheId[paramInt1];
        j = 0;
        if (arrayOfInt1 != null)
        {
          int[] arrayOfInt2 = this.blendedCacheId[paramInt1][paramInt2];
          j = 0;
          if (arrayOfInt2 != null)
            j = this.blendedCacheId[paramInt1][paramInt2].length;
        }
      }
      return Math.max(i, j);
    }
  }

  private void init(int[][][] paramArrayOfInt, TileAtlas paramTileAtlas, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, IntArray paramIntArray, int paramInt3, int paramInt4, ShaderProgram paramShaderProgram)
  {
    this.atlas = paramTileAtlas;
    this.tileWidth = paramInt1;
    this.tileHeight = paramInt2;
    this.unitsPerTileX = paramFloat1;
    this.unitsPerTileY = paramFloat2;
    this.blendedTiles = paramIntArray;
    this.tilesPerBlockX = paramInt3;
    this.tilesPerBlockY = paramInt4;
    this.unitsPerBlockX = (paramFloat1 * paramInt3);
    this.unitsPerBlockY = (paramFloat2 * paramInt4);
    this.isSimpleTileAtlas = (paramTileAtlas instanceof SimpleTileAtlas);
    this.allLayers = new int[paramArrayOfInt.length];
    int i = 0;
    int j = 0;
    int k = 0;
    for (int m = 0; m < paramArrayOfInt.length; m++)
    {
      this.allLayers[m] = m;
      if (paramArrayOfInt[m].length > j)
        j = paramArrayOfInt[m].length;
      for (int i3 = 0; i3 < paramArrayOfInt[m].length; i3++)
      {
        if (paramArrayOfInt[m][i3].length > k)
          k = paramArrayOfInt[m][i3].length;
        for (int i4 = 0; i4 < paramArrayOfInt[m][i3].length; i4++)
          if (paramArrayOfInt[m][i3][i4] != 0)
            i++;
      }
    }
    this.mapHeightUnits = ((int)(paramFloat2 * j));
    this.mapWidthUnits = ((int)(paramFloat1 * k));
    if (paramShaderProgram == null)
    {
      this.cache = new SpriteCache(i, false);
      this.normalCacheId = new int[paramArrayOfInt.length][][];
      this.blendedCacheId = new int[paramArrayOfInt.length][][];
    }
    label403: label538: for (int n = 0; ; n++)
    {
      if (n >= paramArrayOfInt.length)
        return;
      this.normalCacheId[n] = new int[MathUtils.ceil(paramArrayOfInt[n].length / paramInt4)][];
      this.blendedCacheId[n] = new int[MathUtils.ceil(paramArrayOfInt[n].length / paramInt4)][];
      for (int i1 = 0; ; i1++)
      {
        if (i1 >= this.normalCacheId[n].length)
          break label538;
        this.normalCacheId[n][i1] = new int[MathUtils.ceil(paramArrayOfInt[n][i1].length / paramInt3)];
        this.blendedCacheId[n][i1] = new int[MathUtils.ceil(paramArrayOfInt[n][i1].length / paramInt3)];
        int i2 = 0;
        if (i2 < this.normalCacheId[n][i1].length)
        {
          if (this.isSimpleTileAtlas)
            this.blendedCacheId[n][i1][i2] = addBlock(paramArrayOfInt[n], i1, i2, false);
          while (true)
          {
            i2++;
            break label403;
            this.cache = new SpriteCache(i, paramShaderProgram, false);
            break;
            this.normalCacheId[n][i1][i2] = addBlock(paramArrayOfInt[n], i1, i2, false);
            this.blendedCacheId[n][i1][i2] = addBlock(paramArrayOfInt[n], i1, i2, true);
          }
        }
      }
    }
  }

  private static int parseIntWithDefault(String paramString, int paramInt)
  {
    if (paramString == null)
      return paramInt;
    try
    {
      int i = Integer.parseInt(paramString);
      return i;
    }
    catch (NumberFormatException localNumberFormatException)
    {
    }
    return paramInt;
  }

  public void dispose()
  {
    this.cache.dispose();
  }

  public TileAtlas getAtlas()
  {
    return this.atlas;
  }

  public int getCol(int paramInt)
  {
    return (int)(paramInt / this.unitsPerTileX);
  }

  public int getInitialCol()
  {
    return this.initialCol;
  }

  public int getInitialRow()
  {
    return this.initialRow;
  }

  public int getLastCol()
  {
    return this.lastCol;
  }

  public int getLastRow()
  {
    return this.lastRow;
  }

  public TiledMap getMap()
  {
    return this.map;
  }

  public int getMapHeightUnits()
  {
    return this.mapHeightUnits;
  }

  public int getMapWidthUnits()
  {
    return this.mapWidthUnits;
  }

  public Matrix4 getProjectionMatrix()
  {
    return this.cache.getProjectionMatrix();
  }

  public int getRow(int paramInt)
  {
    return (int)(paramInt / this.unitsPerTileY);
  }

  public Matrix4 getTransformMatrix()
  {
    return this.cache.getTransformMatrix();
  }

  public float getUnitsPerTileX()
  {
    return this.unitsPerTileX;
  }

  public float getUnitsPerTileY()
  {
    return this.unitsPerTileY;
  }

  public void render()
  {
    render(0.0F, 0.0F, getMapWidthUnits(), getMapHeightUnits());
  }

  public void render(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    render(paramFloat1, paramFloat2, paramFloat3, paramFloat4, this.allLayers);
  }

  public void render(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int[] paramArrayOfInt)
  {
    this.lastRow = ((int)((this.mapHeightUnits - (paramFloat2 - paramFloat4 + this.overdrawY)) / this.unitsPerBlockY));
    this.initialRow = ((int)((this.mapHeightUnits - (paramFloat2 - this.overdrawY)) / this.unitsPerBlockY));
    int i;
    int j;
    if (this.initialRow > 0)
    {
      i = this.initialRow;
      this.initialRow = i;
      this.lastCol = ((int)((paramFloat1 + paramFloat3 + this.overdrawX) / this.unitsPerBlockX));
      this.initialCol = ((int)((paramFloat1 - this.overdrawX) / this.unitsPerBlockX));
      if (this.initialCol <= 0)
        break label293;
      j = this.initialCol;
      label113: this.initialCol = j;
      Gdx.gl.glBlendFunc(770, 771);
      this.cache.begin();
      if (!this.isSimpleTileAtlas)
        break label325;
      Gdx.gl.glEnable(3042);
    }
    label293: label312: for (this.currentLayer = 0; ; this.currentLayer = (1 + this.currentLayer))
    {
      if (this.currentLayer >= paramArrayOfInt.length)
        break label531;
      for (this.currentRow = this.initialRow; ; this.currentRow = (1 + this.currentRow))
      {
        if ((this.currentRow > this.lastRow) || (this.currentRow >= getLayerHeightInBlocks(this.currentLayer)))
          break label312;
        this.currentCol = this.initialCol;
        while (true)
          if ((this.currentCol <= this.lastCol) && (this.currentCol < getLayerWidthInBlocks(this.currentLayer, this.currentRow)))
          {
            this.cache.draw(this.blendedCacheId[paramArrayOfInt[this.currentLayer]][this.currentRow][this.currentCol]);
            this.currentCol = (1 + this.currentCol);
            continue;
            i = 0;
            break;
            j = 0;
            break label113;
          }
      }
    }
    label325: for (this.currentLayer = 0; this.currentLayer < paramArrayOfInt.length; this.currentLayer = (1 + this.currentLayer))
      for (this.currentRow = this.initialRow; (this.currentRow <= this.lastRow) && (this.currentRow < getLayerHeightInBlocks(this.currentLayer)); this.currentRow = (1 + this.currentRow))
        for (this.currentCol = this.initialCol; (this.currentCol <= this.lastCol) && (this.currentCol < getLayerWidthInBlocks(this.currentLayer, this.currentRow)); this.currentCol = (1 + this.currentCol))
        {
          Gdx.gl.glDisable(3042);
          this.cache.draw(this.normalCacheId[paramArrayOfInt[this.currentLayer]][this.currentRow][this.currentCol]);
          Gdx.gl.glEnable(3042);
          this.cache.draw(this.blendedCacheId[paramArrayOfInt[this.currentLayer]][this.currentRow][this.currentCol]);
        }
    label531: this.cache.end();
    Gdx.gl.glDisable(3042);
  }

  public void render(OrthographicCamera paramOrthographicCamera)
  {
    render(paramOrthographicCamera, this.allLayers);
  }

  public void render(OrthographicCamera paramOrthographicCamera, int[] paramArrayOfInt)
  {
    getProjectionMatrix().set(paramOrthographicCamera.combined);
    this.tmp.set(0.0F, 0.0F, 0.0F);
    paramOrthographicCamera.unproject(this.tmp);
    render(this.tmp.x, this.tmp.y, paramOrthographicCamera.viewportWidth * paramOrthographicCamera.zoom, paramOrthographicCamera.viewportHeight * paramOrthographicCamera.zoom, paramArrayOfInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.tiled.TileMapRenderer
 * JD-Core Version:    0.6.2
 */
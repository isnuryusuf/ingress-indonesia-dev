package com.badlogic.gdx.graphics.g2d.tiled;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.TextureRegion;
import com.badlogic.gdx.math.MathUtils;
import com.badlogic.gdx.utils.IntMap;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

public class SimpleTileAtlas extends TileAtlas
{
  public SimpleTileAtlas(TiledMap paramTiledMap, FileHandle paramFileHandle)
  {
    Iterator localIterator = paramTiledMap.tileSets.iterator();
    while (localIterator.hasNext())
    {
      TileSet localTileSet = (TileSet)localIterator.next();
      Object localObject = new Pixmap(paramFileHandle.child(localTileSet.imageName));
      int i = ((Pixmap)localObject).getWidth();
      int j = ((Pixmap)localObject).getHeight();
      if ((!MathUtils.isPowerOfTwo(i)) || (!MathUtils.isPowerOfTwo(j)))
      {
        int k = MathUtils.nextPowerOfTwo(i);
        int m = MathUtils.nextPowerOfTwo(j);
        Pixmap localPixmap = new Pixmap(k, m, ((Pixmap)localObject).getFormat());
        localPixmap.drawPixmap((Pixmap)localObject, 0, 0, 0, 0, k, m);
        ((Pixmap)localObject).dispose();
        localObject = localPixmap;
      }
      Texture localTexture = new Texture((Pixmap)localObject);
      ((Pixmap)localObject).dispose();
      this.textures.add(localTexture);
      TextureRegion[][] arrayOfTextureRegion = split(localTexture, i, j, paramTiledMap.tileWidth, paramTiledMap.tileHeight, localTileSet.spacing, localTileSet.margin);
      int n = 0;
      int i1 = 0;
      while (n < arrayOfTextureRegion[0].length)
      {
        int i2 = 0;
        while (i2 < arrayOfTextureRegion.length)
        {
          IntMap localIntMap = this.regionsMap;
          int i3 = i1 + 1;
          localIntMap.put(i1 + localTileSet.firstgid, arrayOfTextureRegion[i2][n]);
          i2++;
          i1 = i3;
        }
        n++;
      }
    }
  }

  private static TextureRegion[][] split(Texture paramTexture, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    int i = (paramInt1 - paramInt6) / (paramInt3 + paramInt5);
    int j = (paramInt2 - paramInt6) / (paramInt4 + paramInt5);
    TextureRegion[][] arrayOfTextureRegion = (TextureRegion[][])Array.newInstance(TextureRegion.class, new int[] { i, j });
    for (int k = 0; k < i; k++)
      for (int m = 0; m < j; m++)
        arrayOfTextureRegion[k][m] = new TextureRegion(paramTexture, paramInt6 + k * (paramInt3 + paramInt5), paramInt6 + m * (paramInt4 + paramInt5), paramInt3, paramInt4);
    return arrayOfTextureRegion;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.tiled.SimpleTileAtlas
 * JD-Core Version:    0.6.2
 */
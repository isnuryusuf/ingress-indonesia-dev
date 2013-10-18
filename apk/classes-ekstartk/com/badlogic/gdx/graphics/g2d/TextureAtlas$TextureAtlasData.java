package com.badlogic.gdx.graphics.g2d;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Pixmap.Format;
import com.badlogic.gdx.graphics.Texture.TextureFilter;
import com.badlogic.gdx.graphics.Texture.TextureWrap;
import com.badlogic.gdx.utils.Array;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class TextureAtlas$TextureAtlasData
{
  final Array<TextureAtlas.TextureAtlasData.Page> pages = new Array();
  final Array<TextureAtlas.TextureAtlasData.Region> regions = new Array();

  public TextureAtlas$TextureAtlasData(FileHandle paramFileHandle1, FileHandle paramFileHandle2, boolean paramBoolean)
  {
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramFileHandle1.read()), 64);
    TextureAtlas.TextureAtlasData.Page localPage = null;
    while (true)
    {
      String str1;
      String str2;
      Texture.TextureWrap localTextureWrap1;
      Texture.TextureWrap localTextureWrap2;
      try
      {
        str1 = localBufferedReader.readLine();
        if (str1 != null)
        {
          if (str1.trim().length() == 0)
          {
            localPage = null;
            continue;
          }
          if (localPage == null)
          {
            FileHandle localFileHandle = paramFileHandle2.child(str1);
            Pixmap.Format localFormat = Pixmap.Format.valueOf(TextureAtlas.readValue(localBufferedReader));
            TextureAtlas.readTuple(localBufferedReader);
            Texture.TextureFilter localTextureFilter1 = Texture.TextureFilter.valueOf(TextureAtlas.tuple[0]);
            Texture.TextureFilter localTextureFilter2 = Texture.TextureFilter.valueOf(TextureAtlas.tuple[1]);
            str2 = TextureAtlas.readValue(localBufferedReader);
            localTextureWrap1 = Texture.TextureWrap.ClampToEdge;
            localTextureWrap2 = Texture.TextureWrap.ClampToEdge;
            if (str2.equals("x"))
            {
              localTextureWrap1 = Texture.TextureWrap.Repeat;
              localPage = new TextureAtlas.TextureAtlasData.Page(localFileHandle, localTextureFilter1.isMipMap(), localFormat, localTextureFilter1, localTextureFilter2, localTextureWrap1, localTextureWrap2);
              this.pages.add(localPage);
              continue;
            }
          }
        }
      }
      catch (Exception localException)
      {
        localException = localException;
        throw new GdxRuntimeException("Error reading pack file: " + paramFileHandle1, localException);
      }
      finally
      {
      }
      try
      {
        localBufferedReader.close();
        label234: throw localObject;
        if (str2.equals("y"))
        {
          localTextureWrap2 = Texture.TextureWrap.Repeat;
          continue;
        }
        if (!str2.equals("xy"))
          continue;
        localTextureWrap1 = Texture.TextureWrap.Repeat;
        localTextureWrap2 = Texture.TextureWrap.Repeat;
        continue;
        boolean bool = Boolean.valueOf(TextureAtlas.readValue(localBufferedReader)).booleanValue();
        TextureAtlas.readTuple(localBufferedReader);
        int i = Integer.parseInt(TextureAtlas.tuple[0]);
        int j = Integer.parseInt(TextureAtlas.tuple[1]);
        TextureAtlas.readTuple(localBufferedReader);
        int k = Integer.parseInt(TextureAtlas.tuple[0]);
        int m = Integer.parseInt(TextureAtlas.tuple[1]);
        TextureAtlas.TextureAtlasData.Region localRegion = new TextureAtlas.TextureAtlasData.Region();
        localRegion.page = localPage;
        localRegion.left = i;
        localRegion.top = j;
        localRegion.width = k;
        localRegion.height = m;
        localRegion.name = str1;
        localRegion.rotate = bool;
        if (TextureAtlas.readTuple(localBufferedReader) == 4)
        {
          int[] arrayOfInt = new int[4];
          arrayOfInt[0] = Integer.parseInt(TextureAtlas.tuple[0]);
          arrayOfInt[1] = Integer.parseInt(TextureAtlas.tuple[1]);
          arrayOfInt[2] = Integer.parseInt(TextureAtlas.tuple[2]);
          arrayOfInt[3] = Integer.parseInt(TextureAtlas.tuple[3]);
          localRegion.splits = arrayOfInt;
          TextureAtlas.readTuple(localBufferedReader);
        }
        localRegion.originalWidth = Integer.parseInt(TextureAtlas.tuple[0]);
        localRegion.originalHeight = Integer.parseInt(TextureAtlas.tuple[1]);
        TextureAtlas.readTuple(localBufferedReader);
        localRegion.offsetX = Integer.parseInt(TextureAtlas.tuple[0]);
        localRegion.offsetY = Integer.parseInt(TextureAtlas.tuple[1]);
        localRegion.index = Integer.parseInt(TextureAtlas.readValue(localBufferedReader));
        if (paramBoolean)
          localRegion.flip = true;
        this.regions.add(localRegion);
        continue;
        try
        {
          localBufferedReader.close();
          label576: this.regions.sort(TextureAtlas.indexComparator);
          return;
        }
        catch (IOException localIOException2)
        {
          break label576;
        }
      }
      catch (IOException localIOException1)
      {
        break label234;
      }
    }
  }

  public Array<TextureAtlas.TextureAtlasData.Page> getPages()
  {
    return this.pages;
  }

  public Array<TextureAtlas.TextureAtlasData.Region> getRegions()
  {
    return this.regions;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData
 * JD-Core Version:    0.6.2
 */
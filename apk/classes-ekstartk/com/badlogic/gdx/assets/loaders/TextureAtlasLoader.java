package com.badlogic.gdx.assets.loaders;

import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.g2d.TextureAtlas;
import com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData;
import com.badlogic.gdx.graphics.g2d.TextureAtlas.TextureAtlasData.Page;
import com.badlogic.gdx.utils.Array;
import java.util.Iterator;

public class TextureAtlasLoader extends SynchronousAssetLoader<TextureAtlas, TextureAtlasLoader.TextureAtlasParameter>
{
  TextureAtlas.TextureAtlasData data;

  public TextureAtlasLoader(FileHandleResolver paramFileHandleResolver)
  {
    super(paramFileHandleResolver);
  }

  public Array<AssetDescriptor> getDependencies(String paramString, TextureAtlasLoader.TextureAtlasParameter paramTextureAtlasParameter)
  {
    FileHandle localFileHandle1 = resolve(paramString);
    FileHandle localFileHandle2 = localFileHandle1.parent();
    if (paramTextureAtlasParameter != null);
    Array localArray;
    for (this.data = new TextureAtlas.TextureAtlasData(localFileHandle1, localFileHandle2, paramTextureAtlasParameter.flip); ; this.data = new TextureAtlas.TextureAtlasData(localFileHandle1, localFileHandle2, false))
    {
      localArray = new Array();
      Iterator localIterator = this.data.getPages().iterator();
      while (localIterator.hasNext())
      {
        TextureAtlas.TextureAtlasData.Page localPage = (TextureAtlas.TextureAtlasData.Page)localIterator.next();
        FileHandle localFileHandle3 = resolve(localPage.textureFile.path());
        TextureLoader.TextureParameter localTextureParameter = new TextureLoader.TextureParameter();
        localTextureParameter.format = localPage.format;
        localTextureParameter.genMipMaps = localPage.useMipMaps;
        localTextureParameter.minFilter = localPage.minFilter;
        localTextureParameter.magFilter = localPage.magFilter;
        localArray.add(new AssetDescriptor(localFileHandle3.path().replaceAll("\\\\", "/"), Texture.class, localTextureParameter));
      }
    }
    return localArray;
  }

  public TextureAtlas load(AssetManager paramAssetManager, String paramString, TextureAtlasLoader.TextureAtlasParameter paramTextureAtlasParameter)
  {
    Iterator localIterator = this.data.getPages().iterator();
    while (localIterator.hasNext())
    {
      TextureAtlas.TextureAtlasData.Page localPage = (TextureAtlas.TextureAtlasData.Page)localIterator.next();
      localPage.texture = ((Texture)paramAssetManager.get(localPage.textureFile.path().replaceAll("\\\\", "/"), Texture.class));
    }
    return new TextureAtlas(this.data);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.assets.loaders.TextureAtlasLoader
 * JD-Core Version:    0.6.2
 */
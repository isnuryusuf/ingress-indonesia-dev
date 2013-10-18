package com.badlogic.gdx.assets.loaders;

import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.graphics.Pixmap.Format;
import com.badlogic.gdx.graphics.PixmapIO;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.TextureData;
import com.badlogic.gdx.graphics.glutils.ETC1TextureData;
import com.badlogic.gdx.graphics.glutils.FileTextureData;
import com.badlogic.gdx.utils.Array;

public class TextureLoader extends AsynchronousAssetLoader<Texture, TextureLoader.TextureParameter>
{
  TextureData data;
  Texture texture;

  public TextureLoader(FileHandleResolver paramFileHandleResolver)
  {
    super(paramFileHandleResolver);
  }

  public Array<AssetDescriptor> getDependencies(String paramString, TextureLoader.TextureParameter paramTextureParameter)
  {
    return null;
  }

  public void loadAsync(AssetManager paramAssetManager, String paramString, TextureLoader.TextureParameter paramTextureParameter)
  {
    if ((paramTextureParameter == null) || ((paramTextureParameter != null) && (paramTextureParameter.textureData == null)))
    {
      this.texture = null;
      boolean bool = false;
      Pixmap.Format localFormat = null;
      if (paramTextureParameter != null)
      {
        localFormat = paramTextureParameter.format;
        bool = paramTextureParameter.genMipMaps;
        this.texture = paramTextureParameter.texture;
      }
      FileHandle localFileHandle = resolve(paramString);
      if (!paramString.contains(".etc1"))
      {
        if (paramString.contains(".cim"));
        for (Pixmap localPixmap = PixmapIO.readCIM(localFileHandle); ; localPixmap = new Pixmap(localFileHandle))
        {
          this.data = new FileTextureData(localFileHandle, localPixmap, localFormat, bool);
          return;
        }
      }
      this.data = new ETC1TextureData(localFileHandle, bool);
      return;
    }
    this.data = paramTextureParameter.textureData;
    if (!this.data.isPrepared())
      this.data.prepare();
    this.texture = paramTextureParameter.texture;
  }

  public Texture loadSync(AssetManager paramAssetManager, String paramString, TextureLoader.TextureParameter paramTextureParameter)
  {
    Texture localTexture = this.texture;
    if (localTexture != null)
      localTexture.load(this.data);
    while (true)
    {
      if (paramTextureParameter != null)
      {
        localTexture.setFilter(paramTextureParameter.minFilter, paramTextureParameter.magFilter);
        localTexture.setWrap(paramTextureParameter.wrapU, paramTextureParameter.wrapV);
      }
      return localTexture;
      localTexture = new Texture(this.data);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.assets.loaders.TextureLoader
 * JD-Core Version:    0.6.2
 */
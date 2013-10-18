package com.badlogic.gdx.assets.loaders;

import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.utils.Array;

public class PixmapLoader extends AsynchronousAssetLoader<Pixmap, PixmapLoader.PixmapParameter>
{
  Pixmap pixmap;

  public PixmapLoader(FileHandleResolver paramFileHandleResolver)
  {
    super(paramFileHandleResolver);
  }

  public Array<AssetDescriptor> getDependencies(String paramString, PixmapLoader.PixmapParameter paramPixmapParameter)
  {
    return null;
  }

  public void loadAsync(AssetManager paramAssetManager, String paramString, PixmapLoader.PixmapParameter paramPixmapParameter)
  {
    this.pixmap = null;
    this.pixmap = new Pixmap(resolve(paramString));
  }

  public Pixmap loadSync(AssetManager paramAssetManager, String paramString, PixmapLoader.PixmapParameter paramPixmapParameter)
  {
    return this.pixmap;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.assets.loaders.PixmapLoader
 * JD-Core Version:    0.6.2
 */
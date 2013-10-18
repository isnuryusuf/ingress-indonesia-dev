package com.badlogic.gdx.assets.loaders;

import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetLoaderParameters;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.Array;

public abstract class AssetLoader<T, P extends AssetLoaderParameters<T>>
{
  private FileHandleResolver resolver;

  public AssetLoader(FileHandleResolver paramFileHandleResolver)
  {
    this.resolver = paramFileHandleResolver;
  }

  public abstract Array<AssetDescriptor> getDependencies(String paramString, P paramP);

  public FileHandle resolve(String paramString)
  {
    return this.resolver.resolve(paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.assets.loaders.AssetLoader
 * JD-Core Version:    0.6.2
 */
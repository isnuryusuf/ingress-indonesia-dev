package com.badlogic.gdx.assets.loaders.resolvers;

import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.assets.loaders.FileHandleResolver;
import com.badlogic.gdx.files.FileHandle;

public class ExternalFileHandleResolver
  implements FileHandleResolver
{
  public FileHandle resolve(String paramString)
  {
    return Gdx.files.external(paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.assets.loaders.resolvers.ExternalFileHandleResolver
 * JD-Core Version:    0.6.2
 */
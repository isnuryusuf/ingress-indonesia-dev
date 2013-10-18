package com.badlogic.gdx.assets.loaders;

import com.badlogic.gdx.Audio;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.assets.AssetDescriptor;
import com.badlogic.gdx.assets.AssetManager;
import com.badlogic.gdx.audio.Music;
import com.badlogic.gdx.utils.Array;

public class MusicLoader extends SynchronousAssetLoader<Music, MusicLoader.MusicParameter>
{
  public MusicLoader(FileHandleResolver paramFileHandleResolver)
  {
    super(paramFileHandleResolver);
  }

  public Array<AssetDescriptor> getDependencies(String paramString, MusicLoader.MusicParameter paramMusicParameter)
  {
    return null;
  }

  public Music load(AssetManager paramAssetManager, String paramString, MusicLoader.MusicParameter paramMusicParameter)
  {
    return Gdx.audio.newMusic(resolve(paramString));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.assets.loaders.MusicLoader
 * JD-Core Version:    0.6.2
 */
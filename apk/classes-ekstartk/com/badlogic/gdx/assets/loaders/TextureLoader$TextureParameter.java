package com.badlogic.gdx.assets.loaders;

import com.badlogic.gdx.assets.AssetLoaderParameters;
import com.badlogic.gdx.graphics.Pixmap.Format;
import com.badlogic.gdx.graphics.Texture;
import com.badlogic.gdx.graphics.Texture.TextureFilter;
import com.badlogic.gdx.graphics.Texture.TextureWrap;
import com.badlogic.gdx.graphics.TextureData;

public class TextureLoader$TextureParameter extends AssetLoaderParameters<Texture>
{
  public Pixmap.Format format = null;
  public boolean genMipMaps = false;
  public Texture.TextureFilter magFilter = Texture.TextureFilter.Nearest;
  public Texture.TextureFilter minFilter = Texture.TextureFilter.Nearest;
  public Texture texture = null;
  public TextureData textureData = null;
  public Texture.TextureWrap wrapU = Texture.TextureWrap.ClampToEdge;
  public Texture.TextureWrap wrapV = Texture.TextureWrap.ClampToEdge;
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.assets.loaders.TextureLoader.TextureParameter
 * JD-Core Version:    0.6.2
 */
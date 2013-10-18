package com.badlogic.gdx.assets.loaders;

import com.badlogic.gdx.assets.AssetLoaderParameters;
import com.badlogic.gdx.graphics.Texture.TextureFilter;
import com.badlogic.gdx.graphics.g2d.BitmapFont;
import com.badlogic.gdx.graphics.g2d.BitmapFont.BitmapFontData;

public class BitmapFontLoader$BitmapFontParameter extends AssetLoaderParameters<BitmapFont>
{
  public BitmapFont.BitmapFontData bitmapFontData = null;
  public boolean flip = false;
  public Texture.TextureFilter maxFilter = Texture.TextureFilter.Nearest;
  public Texture.TextureFilter minFitler = Texture.TextureFilter.Nearest;
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.assets.loaders.BitmapFontLoader.BitmapFontParameter
 * JD-Core Version:    0.6.2
 */
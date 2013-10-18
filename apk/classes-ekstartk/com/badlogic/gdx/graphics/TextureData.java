package com.badlogic.gdx.graphics;

public abstract interface TextureData
{
  public abstract void consumeCompressedData();

  public abstract Pixmap consumePixmap();

  public abstract boolean disposePixmap();

  public abstract Pixmap.Format getFormat();

  public abstract int getHeight();

  public abstract TextureData.TextureDataType getType();

  public abstract int getWidth();

  public abstract boolean isManaged();

  public abstract boolean isPrepared();

  public abstract void prepare();

  public abstract boolean useMipMaps();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.graphics.TextureData
 * JD-Core Version:    0.6.2
 */
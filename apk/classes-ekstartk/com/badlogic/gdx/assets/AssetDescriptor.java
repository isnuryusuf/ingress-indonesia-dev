package com.badlogic.gdx.assets;

public class AssetDescriptor<T>
{
  public final String fileName;
  public final AssetLoaderParameters params;
  public final Class<T> type;

  public AssetDescriptor(String paramString, Class<T> paramClass)
  {
    this(paramString, paramClass, null);
  }

  public AssetDescriptor(String paramString, Class<T> paramClass, AssetLoaderParameters<T> paramAssetLoaderParameters)
  {
    this.fileName = paramString.replaceAll("\\\\", "/");
    this.type = paramClass;
    this.params = paramAssetLoaderParameters;
  }

  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(this.fileName);
    localStringBuffer.append(", ");
    localStringBuffer.append(this.type.getName());
    return localStringBuffer.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.assets.AssetDescriptor
 * JD-Core Version:    0.6.2
 */
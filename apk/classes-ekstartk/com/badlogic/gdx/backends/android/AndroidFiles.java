package com.badlogic.gdx.backends.android;

import android.content.res.AssetManager;
import android.os.Environment;
import com.badlogic.gdx.Files;
import com.badlogic.gdx.Files.FileType;
import com.badlogic.gdx.files.FileHandle;
import java.io.File;

public class AndroidFiles
  implements Files
{
  protected final AssetManager assets;
  protected final String localpath;
  protected final String sdcard = Environment.getExternalStorageDirectory().getAbsolutePath() + "/";

  public AndroidFiles(AssetManager paramAssetManager)
  {
    this.assets = paramAssetManager;
    this.localpath = this.sdcard;
  }

  public AndroidFiles(AssetManager paramAssetManager, String paramString)
  {
    this.assets = paramAssetManager;
    if (paramString.endsWith("/"));
    while (true)
    {
      this.localpath = paramString;
      return;
      paramString = paramString + "/";
    }
  }

  public FileHandle absolute(String paramString)
  {
    return new AndroidFileHandle(null, paramString, Files.FileType.Absolute);
  }

  public FileHandle classpath(String paramString)
  {
    return new AndroidFileHandle(null, paramString, Files.FileType.Classpath);
  }

  public FileHandle external(String paramString)
  {
    return new AndroidFileHandle(null, paramString, Files.FileType.External);
  }

  public String getExternalStoragePath()
  {
    return this.sdcard;
  }

  public FileHandle getFileHandle(String paramString, Files.FileType paramFileType)
  {
    if (paramFileType == Files.FileType.Internal);
    for (AssetManager localAssetManager = this.assets; ; localAssetManager = null)
      return new AndroidFileHandle(localAssetManager, paramString, paramFileType);
  }

  public String getLocalStoragePath()
  {
    return this.localpath;
  }

  public FileHandle internal(String paramString)
  {
    return new AndroidFileHandle(this.assets, paramString, Files.FileType.Internal);
  }

  public boolean isExternalStorageAvailable()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }

  public boolean isLocalStorageAvailable()
  {
    return true;
  }

  public FileHandle local(String paramString)
  {
    return new AndroidFileHandle(null, this.localpath + paramString, Files.FileType.Local);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidFiles
 * JD-Core Version:    0.6.2
 */
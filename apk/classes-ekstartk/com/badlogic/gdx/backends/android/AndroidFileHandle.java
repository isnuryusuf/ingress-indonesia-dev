package com.badlogic.gdx.backends.android;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import com.badlogic.gdx.Files.FileType;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

public class AndroidFileHandle extends FileHandle
{
  final AssetManager assets;

  AndroidFileHandle(AssetManager paramAssetManager, File paramFile, Files.FileType paramFileType)
  {
    super(paramFile, paramFileType);
    this.assets = paramAssetManager;
  }

  AndroidFileHandle(AssetManager paramAssetManager, String paramString, Files.FileType paramFileType)
  {
    super(paramString.replace('\\', '/'), paramFileType);
    this.assets = paramAssetManager;
  }

  public FileHandle child(String paramString)
  {
    String str = paramString.replace('\\', '/');
    if (this.file.getPath().length() == 0)
      return new AndroidFileHandle(this.assets, new File(str), this.type);
    return new AndroidFileHandle(this.assets, new File(this.file, str), this.type);
  }

  public boolean exists()
  {
    if (this.type == Files.FileType.Internal)
    {
      String str = this.file.getPath();
      try
      {
        this.assets.open(str).close();
        return true;
      }
      catch (Exception localException1)
      {
        try
        {
          int i;
          do
            i = this.assets.list(str).length;
          while (i > 0);
          return false;
        }
        catch (Exception localException2)
        {
          return false;
        }
      }
    }
    return super.exists();
  }

  public boolean isDirectory()
  {
    if (this.type == Files.FileType.Internal);
    try
    {
      int i = this.assets.list(this.file.getPath()).length;
      boolean bool = false;
      if (i > 0)
        bool = true;
      return bool;
      return super.isDirectory();
    }
    catch (IOException localIOException)
    {
    }
    return false;
  }

  public long lastModified()
  {
    return super.lastModified();
  }

  public long length()
  {
    if (this.type == Files.FileType.Internal);
    try
    {
      AssetFileDescriptor localAssetFileDescriptor2 = this.assets.openFd(this.file.getPath());
      long l;
      try
      {
        l = localAssetFileDescriptor2.getLength();
        if (localAssetFileDescriptor2 != null)
        {
          try
          {
            localAssetFileDescriptor2.close();
            return l;
            if (localAssetFileDescriptor1 != null)
              localAssetFileDescriptor1.close();
            Object localObject1;
            throw localObject1;
          }
          catch (IOException localIOException)
          {
          }
          return super.length();
        }
      }
      finally
      {
        while (true)
          localAssetFileDescriptor1 = localAssetFileDescriptor2;
      }
      return l;
    }
    finally
    {
      while (true)
        AssetFileDescriptor localAssetFileDescriptor1 = null;
    }
  }

  public FileHandle[] list()
  {
    FileHandle[] arrayOfFileHandle;
    if (this.type == Files.FileType.Internal)
      try
      {
        String[] arrayOfString = this.assets.list(this.file.getPath());
        arrayOfFileHandle = new FileHandle[arrayOfString.length];
        int i = 0;
        int j = arrayOfFileHandle.length;
        while (i < j)
        {
          arrayOfFileHandle[i] = new AndroidFileHandle(this.assets, new File(this.file, arrayOfString[i]), this.type);
          i++;
        }
      }
      catch (Exception localException)
      {
        throw new GdxRuntimeException("Error listing children: " + this.file + " (" + this.type + ")", localException);
      }
    else
      arrayOfFileHandle = super.list();
    return arrayOfFileHandle;
  }

  public FileHandle[] list(String paramString)
  {
    int i = 0;
    if (this.type == Files.FileType.Internal);
    while (true)
    {
      FileHandle[] arrayOfFileHandle1;
      int k;
      try
      {
        String[] arrayOfString = this.assets.list(this.file.getPath());
        arrayOfFileHandle1 = new FileHandle[arrayOfString.length];
        int j = arrayOfFileHandle1.length;
        k = 0;
        if (k < j)
        {
          String str = arrayOfString[k];
          if (!str.endsWith(paramString))
            break label185;
          arrayOfFileHandle1[i] = new AndroidFileHandle(this.assets, new File(this.file, str), this.type);
          i++;
          break label185;
        }
        if (i >= arrayOfString.length)
          break label182;
        FileHandle[] arrayOfFileHandle2 = new FileHandle[i];
        System.arraycopy(arrayOfFileHandle1, 0, arrayOfFileHandle2, 0, i);
        return arrayOfFileHandle2;
      }
      catch (Exception localException)
      {
        throw new GdxRuntimeException("Error listing children: " + this.file + " (" + this.type + ")", localException);
      }
      return super.list();
      label182: return arrayOfFileHandle1;
      label185: k++;
    }
  }

  public FileHandle parent()
  {
    File localFile = this.file.getParentFile();
    if (localFile == null)
      if (this.type != Files.FileType.Absolute)
        break label49;
    label49: for (localFile = new File("/"); ; localFile = new File(""))
      return new AndroidFileHandle(this.assets, localFile, this.type);
  }

  public InputStream read()
  {
    if (this.type == Files.FileType.Internal)
      try
      {
        InputStream localInputStream = this.assets.open(this.file.getPath());
        return localInputStream;
      }
      catch (IOException localIOException)
      {
        throw new GdxRuntimeException("Error reading file: " + this.file + " (" + this.type + ")", localIOException);
      }
    return super.read();
  }

  public FileHandle sibling(String paramString)
  {
    String str = paramString.replace('\\', '/');
    if (this.file.getPath().length() == 0)
      throw new GdxRuntimeException("Cannot get the sibling of the root.");
    return new AndroidFileHandle(this.assets, new File(this.file.getParent(), str), this.type);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.backends.android.AndroidFileHandle
 * JD-Core Version:    0.6.2
 */
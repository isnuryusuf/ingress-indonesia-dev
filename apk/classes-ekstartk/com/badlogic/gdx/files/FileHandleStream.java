package com.badlogic.gdx.files;

import com.badlogic.gdx.Files.FileType;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;

public abstract class FileHandleStream extends FileHandle
{
  public FileHandleStream(String paramString)
  {
    super(new File(paramString), Files.FileType.Absolute);
  }

  public FileHandle child(String paramString)
  {
    throw new UnsupportedOperationException();
  }

  public void copyTo(FileHandle paramFileHandle)
  {
    throw new UnsupportedOperationException();
  }

  public boolean delete()
  {
    throw new UnsupportedOperationException();
  }

  public boolean deleteDirectory()
  {
    throw new UnsupportedOperationException();
  }

  public boolean exists()
  {
    return true;
  }

  public boolean isDirectory()
  {
    return false;
  }

  public long length()
  {
    return 0L;
  }

  public FileHandle[] list()
  {
    throw new UnsupportedOperationException();
  }

  public void mkdirs()
  {
    throw new UnsupportedOperationException();
  }

  public void moveTo(FileHandle paramFileHandle)
  {
    throw new UnsupportedOperationException();
  }

  public FileHandle parent()
  {
    throw new UnsupportedOperationException();
  }

  public InputStream read()
  {
    throw new UnsupportedOperationException();
  }

  public FileHandle sibling(String paramString)
  {
    throw new UnsupportedOperationException();
  }

  public OutputStream write(boolean paramBoolean)
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.files.FileHandleStream
 * JD-Core Version:    0.6.2
 */
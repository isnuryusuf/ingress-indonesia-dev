package com.badlogic.gdx;

import com.badlogic.gdx.files.FileHandle;

public abstract interface Files
{
  public abstract FileHandle absolute(String paramString);

  public abstract FileHandle classpath(String paramString);

  public abstract FileHandle external(String paramString);

  public abstract String getExternalStoragePath();

  public abstract FileHandle getFileHandle(String paramString, Files.FileType paramFileType);

  public abstract String getLocalStoragePath();

  public abstract FileHandle internal(String paramString);

  public abstract boolean isExternalStorageAvailable();

  public abstract boolean isLocalStorageAvailable();

  public abstract FileHandle local(String paramString);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.Files
 * JD-Core Version:    0.6.2
 */
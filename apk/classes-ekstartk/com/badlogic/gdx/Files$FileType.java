package com.badlogic.gdx;

public enum Files$FileType
{
  static
  {
    External = new FileType("External", 2);
    Absolute = new FileType("Absolute", 3);
    Local = new FileType("Local", 4);
    FileType[] arrayOfFileType = new FileType[5];
    arrayOfFileType[0] = Classpath;
    arrayOfFileType[1] = Internal;
    arrayOfFileType[2] = External;
    arrayOfFileType[3] = Absolute;
    arrayOfFileType[4] = Local;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.Files.FileType
 * JD-Core Version:    0.6.2
 */
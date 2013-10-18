package com.badlogic.gdx.utils;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashSet;
import java.util.Set;
import java.util.zip.CRC32;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public class SharedLibraryLoader
{
  private static Set<String> loadedLibraries = new HashSet();
  private String nativesJar;

  public SharedLibraryLoader()
  {
  }

  public SharedLibraryLoader(String paramString)
  {
    this.nativesJar = paramString;
  }

  private String crc(String paramString)
  {
    InputStream localInputStream = SharedLibraryLoader.class.getResourceAsStream("/" + paramString);
    if (localInputStream == null)
      return System.nanoTime();
    CRC32 localCRC32 = new CRC32();
    byte[] arrayOfByte = new byte[4096];
    try
    {
      while (true)
      {
        int i = localInputStream.read(arrayOfByte);
        if (i == -1)
          break;
        localCRC32.update(arrayOfByte, 0, i);
      }
    }
    catch (Exception localException1)
    {
    }
    try
    {
      localInputStream.close();
      label90: return Long.toString(localCRC32.getValue());
    }
    catch (Exception localException2)
    {
      break label90;
    }
  }

  private String extractLibrary(String paramString)
  {
    File localFile1 = new File(System.getProperty("java.io.tmpdir") + "/jnigen/" + crc(paramString));
    File localFile2 = new File(localFile1, paramString);
    try
    {
      if (this.nativesJar == null)
      {
        localInputStream = SharedLibraryLoader.class.getResourceAsStream("/" + paramString);
      }
      else
      {
        localInputStream = getFromJar(this.nativesJar, paramString);
        break label173;
        localFile1.mkdirs();
        localFileOutputStream = new FileOutputStream(localFile2);
        byte[] arrayOfByte = new byte[4096];
        while (true)
        {
          int i = localInputStream.read(arrayOfByte);
          if (i == -1)
            break;
          localFileOutputStream.write(arrayOfByte, 0, i);
        }
      }
    }
    catch (IOException localIOException)
    {
      InputStream localInputStream;
      label173: 
      do
      {
        FileOutputStream localFileOutputStream;
        while (localFile2.exists())
        {
          return localFile2.getAbsolutePath();
          localInputStream.close();
          localFileOutputStream.close();
        }
      }
      while (localInputStream != null);
    }
    return null;
  }

  private InputStream getFromJar(String paramString1, String paramString2)
  {
    ZipFile localZipFile = new ZipFile(this.nativesJar);
    ZipEntry localZipEntry = localZipFile.getEntry(paramString2);
    if (localZipEntry == null)
      throw new GdxRuntimeException("Couldn't find " + paramString2 + " in jar " + paramString1);
    return localZipFile.getInputStream(localZipEntry);
  }

  private boolean loadLibrary(String paramString)
  {
    String str = extractLibrary(paramString);
    if (str != null)
      System.load(str);
    return str != null;
  }

  public void load(String paramString)
  {
    int i = 1;
    while (true)
    {
      boolean bool2;
      boolean bool3;
      boolean bool4;
      boolean bool5;
      try
      {
        boolean bool1 = loadedLibraries.contains(paramString);
        if (bool1)
          return;
        bool2 = System.getProperty("os.name").contains("Windows");
        bool3 = System.getProperty("os.name").contains("Linux");
        bool4 = System.getProperty("os.name").contains("Mac");
        bool5 = System.getProperty("os.arch").equals("amd64");
        String str1 = System.getProperty("java.vm.name");
        if ((str1 == null) || (!str1.contains("Dalvik")))
          break label377;
        bool5 = false;
        j = i;
        k = 0;
        m = 0;
        n = 0;
        bool6 = false;
        if (n != 0)
        {
          if (!bool5)
            bool6 = loadLibrary(paramString + ".dll");
        }
        else
        {
          if (m != 0)
          {
            if (bool5)
              break label274;
            bool6 = loadLibrary("lib" + paramString + ".so");
          }
          if (k != 0)
            bool6 = loadLibrary("lib" + paramString + ".dylib");
          if (j == 0)
            break label371;
          System.loadLibrary(paramString);
          if (i == 0)
            break label304;
          loadedLibraries.add(paramString);
          continue;
        }
      }
      finally
      {
      }
      boolean bool6 = loadLibrary(paramString + "64.dll");
      continue;
      label274: bool6 = loadLibrary("lib" + paramString + "64.so");
      continue;
      label304: StringBuilder localStringBuilder = new StringBuilder("Couldn't load shared library: '").append(paramString).append("' for target ").append(System.getProperty("os.name")).append(", ");
      if (bool5);
      for (String str2 = "64-bit"; ; str2 = "32-bit")
        throw new RuntimeException(str2);
      label371: i = bool6;
      continue;
      label377: int n = bool2;
      int m = bool3;
      int k = bool4;
      int j = 0;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.SharedLibraryLoader
 * JD-Core Version:    0.6.2
 */
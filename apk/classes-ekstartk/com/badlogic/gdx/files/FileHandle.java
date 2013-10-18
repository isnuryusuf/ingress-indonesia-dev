package com.badlogic.gdx.files;

import com.badlogic.gdx.Files;
import com.badlogic.gdx.Files.FileType;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.utils.GdxRuntimeException;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.io.Writer;

public class FileHandle
{
  protected File file;
  protected Files.FileType type;

  protected FileHandle()
  {
  }

  public FileHandle(File paramFile)
  {
    this.file = paramFile;
    this.type = Files.FileType.Absolute;
  }

  protected FileHandle(File paramFile, Files.FileType paramFileType)
  {
    this.file = paramFile;
    this.type = paramFileType;
  }

  public FileHandle(String paramString)
  {
    this.file = new File(paramString);
    this.type = Files.FileType.Absolute;
  }

  protected FileHandle(String paramString, Files.FileType paramFileType)
  {
    this.type = paramFileType;
    this.file = new File(paramString);
  }

  private static void copyDirectory(FileHandle paramFileHandle1, FileHandle paramFileHandle2)
  {
    paramFileHandle2.mkdirs();
    FileHandle[] arrayOfFileHandle = paramFileHandle1.list();
    int i = 0;
    int j = arrayOfFileHandle.length;
    if (i < j)
    {
      FileHandle localFileHandle1 = arrayOfFileHandle[i];
      FileHandle localFileHandle2 = paramFileHandle2.child(localFileHandle1.name());
      if (localFileHandle1.isDirectory())
        copyDirectory(localFileHandle1, localFileHandle2);
      while (true)
      {
        i++;
        break;
        copyFile(localFileHandle1, localFileHandle2);
      }
    }
  }

  private static void copyFile(FileHandle paramFileHandle1, FileHandle paramFileHandle2)
  {
    try
    {
      paramFileHandle2.write(paramFileHandle1.read(), false);
      return;
    }
    catch (Exception localException)
    {
      throw new GdxRuntimeException("Error copying source file: " + paramFileHandle1.file + " (" + paramFileHandle1.type + ")\nTo destination: " + paramFileHandle2.file + " (" + paramFileHandle2.type + ")", localException);
    }
  }

  private static boolean deleteDirectory(File paramFile)
  {
    if (paramFile.exists())
    {
      File[] arrayOfFile = paramFile.listFiles();
      if (arrayOfFile != null)
      {
        int i = 0;
        int j = arrayOfFile.length;
        if (i < j)
        {
          if (arrayOfFile[i].isDirectory())
            deleteDirectory(arrayOfFile[i]);
          while (true)
          {
            i++;
            break;
            arrayOfFile[i].delete();
          }
        }
      }
    }
    return paramFile.delete();
  }

  public static FileHandle tempDirectory(String paramString)
  {
    File localFile;
    try
    {
      localFile = File.createTempFile(paramString, null);
      if (!localFile.delete())
        throw new IOException("Unable to delete temp file: " + localFile);
    }
    catch (IOException localIOException)
    {
      throw new GdxRuntimeException("Unable to create temp file.", localIOException);
    }
    if (!localFile.mkdir())
      throw new IOException("Unable to create temp directory: " + localFile);
    FileHandle localFileHandle = new FileHandle(localFile);
    return localFileHandle;
  }

  public static FileHandle tempFile(String paramString)
  {
    try
    {
      FileHandle localFileHandle = new FileHandle(File.createTempFile(paramString, null));
      return localFileHandle;
    }
    catch (IOException localIOException)
    {
      throw new GdxRuntimeException("Unable to create temp file.", localIOException);
    }
  }

  public FileHandle child(String paramString)
  {
    if (this.file.getPath().length() == 0)
      return new FileHandle(new File(paramString), this.type);
    return new FileHandle(new File(this.file, paramString), this.type);
  }

  public void copyTo(FileHandle paramFileHandle)
  {
    boolean bool = isDirectory();
    if (!bool)
    {
      if (paramFileHandle.isDirectory())
        paramFileHandle = paramFileHandle.child(name());
      copyFile(this, paramFileHandle);
      return;
    }
    if (paramFileHandle.exists())
    {
      if (!paramFileHandle.isDirectory())
        throw new GdxRuntimeException("Destination exists but is not a directory: " + paramFileHandle);
    }
    else
    {
      paramFileHandle.mkdirs();
      if (!paramFileHandle.isDirectory())
        throw new GdxRuntimeException("Destination directory cannot be created: " + paramFileHandle);
    }
    if (!bool)
      paramFileHandle = paramFileHandle.child(name());
    copyDirectory(this, paramFileHandle);
  }

  public boolean delete()
  {
    if (this.type == Files.FileType.Classpath)
      throw new GdxRuntimeException("Cannot delete a classpath file: " + this.file);
    if (this.type == Files.FileType.Internal)
      throw new GdxRuntimeException("Cannot delete an internal file: " + this.file);
    return file().delete();
  }

  public boolean deleteDirectory()
  {
    if (this.type == Files.FileType.Classpath)
      throw new GdxRuntimeException("Cannot delete a classpath file: " + this.file);
    if (this.type == Files.FileType.Internal)
      throw new GdxRuntimeException("Cannot delete an internal file: " + this.file);
    return deleteDirectory(file());
  }

  public boolean exists()
  {
    boolean bool = true;
    switch (FileHandle.1.$SwitchMap$com$badlogic$gdx$Files$FileType[this.type.ordinal()])
    {
    default:
      bool = file().exists();
    case 1:
    case 2:
    }
    do
      return bool;
    while ((this.file.exists()) || (FileHandle.class.getResource("/" + this.file.getPath().replace('\\', '/')) != null));
    return false;
  }

  public String extension()
  {
    String str = this.file.getName();
    int i = str.lastIndexOf('.');
    if (i == -1)
      return "";
    return str.substring(i + 1);
  }

  public File file()
  {
    if (this.type == Files.FileType.External)
      return new File(Gdx.files.getExternalStoragePath(), this.file.getPath());
    return this.file;
  }

  public boolean isDirectory()
  {
    if (this.type == Files.FileType.Classpath)
      return false;
    return file().isDirectory();
  }

  public long lastModified()
  {
    return file().lastModified();
  }

  // ERROR //
  public long length()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 22	com/badlogic/gdx/files/FileHandle:type	Lcom/badlogic/gdx/Files$FileType;
    //   4: getstatic 151	com/badlogic/gdx/Files$FileType:Classpath	Lcom/badlogic/gdx/Files$FileType;
    //   7: if_acmpeq +23 -> 30
    //   10: aload_0
    //   11: getfield 22	com/badlogic/gdx/files/FileHandle:type	Lcom/badlogic/gdx/Files$FileType;
    //   14: getstatic 156	com/badlogic/gdx/Files$FileType:Internal	Lcom/badlogic/gdx/Files$FileType;
    //   17: if_acmpne +51 -> 68
    //   20: aload_0
    //   21: getfield 15	com/badlogic/gdx/files/FileHandle:file	Ljava/io/File;
    //   24: invokevirtual 96	java/io/File:exists	()Z
    //   27: ifne +41 -> 68
    //   30: aload_0
    //   31: invokevirtual 61	com/badlogic/gdx/files/FileHandle:read	()Ljava/io/InputStream;
    //   34: astore_1
    //   35: aload_1
    //   36: invokevirtual 222	java/io/InputStream:available	()I
    //   39: istore 6
    //   41: iload 6
    //   43: i2l
    //   44: lstore 7
    //   46: aload_1
    //   47: invokevirtual 225	java/io/InputStream:close	()V
    //   50: lload 7
    //   52: lreturn
    //   53: astore 4
    //   55: aload_1
    //   56: invokevirtual 225	java/io/InputStream:close	()V
    //   59: lconst_0
    //   60: lreturn
    //   61: astore_2
    //   62: aload_1
    //   63: invokevirtual 225	java/io/InputStream:close	()V
    //   66: aload_2
    //   67: athrow
    //   68: aload_0
    //   69: invokevirtual 161	com/badlogic/gdx/files/FileHandle:file	()Ljava/io/File;
    //   72: invokevirtual 227	java/io/File:length	()J
    //   75: lreturn
    //   76: astore 9
    //   78: lload 7
    //   80: lreturn
    //   81: astore 5
    //   83: goto -24 -> 59
    //   86: astore_3
    //   87: goto -21 -> 66
    //
    // Exception table:
    //   from	to	target	type
    //   35	41	53	java/lang/Exception
    //   35	41	61	finally
    //   46	50	76	java/io/IOException
    //   55	59	81	java/io/IOException
    //   62	66	86	java/io/IOException
  }

  public FileHandle[] list()
  {
    int i = 0;
    if (this.type == Files.FileType.Classpath)
      throw new GdxRuntimeException("Cannot list a classpath directory: " + this.file);
    String[] arrayOfString = file().list();
    FileHandle[] arrayOfFileHandle;
    if (arrayOfString == null)
      arrayOfFileHandle = new FileHandle[0];
    while (true)
    {
      return arrayOfFileHandle;
      arrayOfFileHandle = new FileHandle[arrayOfString.length];
      int j = arrayOfString.length;
      while (i < j)
      {
        arrayOfFileHandle[i] = child(arrayOfString[i]);
        i++;
      }
    }
  }

  public FileHandle[] list(String paramString)
  {
    if (this.type == Files.FileType.Classpath)
      throw new GdxRuntimeException("Cannot list a classpath directory: " + this.file);
    String[] arrayOfString = file().list();
    if (arrayOfString == null)
      return new FileHandle[0];
    FileHandle[] arrayOfFileHandle1 = new FileHandle[arrayOfString.length];
    int i = arrayOfString.length;
    int j = 0;
    int k = 0;
    while (j < i)
    {
      String str = arrayOfString[j];
      if (str.endsWith(paramString))
      {
        arrayOfFileHandle1[k] = child(str);
        k++;
      }
      j++;
    }
    if (k < arrayOfString.length)
    {
      FileHandle[] arrayOfFileHandle2 = new FileHandle[k];
      System.arraycopy(arrayOfFileHandle1, 0, arrayOfFileHandle2, 0, k);
      return arrayOfFileHandle2;
    }
    return arrayOfFileHandle1;
  }

  public void mkdirs()
  {
    if (this.type == Files.FileType.Classpath)
      throw new GdxRuntimeException("Cannot mkdirs with a classpath file: " + this.file);
    if (this.type == Files.FileType.Internal)
      throw new GdxRuntimeException("Cannot mkdirs with an internal file: " + this.file);
    file().mkdirs();
  }

  public void moveTo(FileHandle paramFileHandle)
  {
    if (this.type == Files.FileType.Classpath)
      throw new GdxRuntimeException("Cannot move a classpath file: " + this.file);
    if (this.type == Files.FileType.Internal)
      throw new GdxRuntimeException("Cannot move an internal file: " + this.file);
    copyTo(paramFileHandle);
    delete();
  }

  public String name()
  {
    return this.file.getName();
  }

  public String nameWithoutExtension()
  {
    String str = this.file.getName();
    int i = str.lastIndexOf('.');
    if (i == -1)
      return str;
    return str.substring(0, i);
  }

  public FileHandle parent()
  {
    File localFile = this.file.getParentFile();
    if (localFile == null)
      if (this.type != Files.FileType.Absolute)
        break label45;
    label45: for (localFile = new File("/"); ; localFile = new File(""))
      return new FileHandle(localFile, this.type);
  }

  public String path()
  {
    return this.file.getPath().replace('\\', '/');
  }

  public String pathWithoutExtension()
  {
    String str = this.file.getPath().replace('\\', '/');
    int i = str.lastIndexOf('.');
    if (i == -1)
      return str;
    return str.substring(0, i);
  }

  public BufferedInputStream read(int paramInt)
  {
    return new BufferedInputStream(read(), paramInt);
  }

  public InputStream read()
  {
    Object localObject;
    if ((this.type == Files.FileType.Classpath) || ((this.type == Files.FileType.Internal) && (!this.file.exists())) || ((this.type == Files.FileType.Local) && (!this.file.exists())))
    {
      localObject = FileHandle.class.getResourceAsStream("/" + this.file.getPath().replace('\\', '/'));
      if (localObject != null)
        break label146;
      throw new GdxRuntimeException("File not found: " + this.file + " (" + this.type + ")");
    }
    try
    {
      localObject = new FileInputStream(file());
      label146: return localObject;
    }
    catch (Exception localException)
    {
      if (file().isDirectory())
        throw new GdxRuntimeException("Cannot open a stream to a directory: " + this.file + " (" + this.type + ")", localException);
      throw new GdxRuntimeException("Error reading file: " + this.file + " (" + this.type + ")", localException);
    }
  }

  // ERROR //
  public int readBytes(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 61	com/badlogic/gdx/files/FileHandle:read	()Ljava/io/InputStream;
    //   4: astore 4
    //   6: iconst_0
    //   7: istore 5
    //   9: iload_2
    //   10: iload 5
    //   12: iadd
    //   13: istore 6
    //   15: iload_3
    //   16: iload 5
    //   18: isub
    //   19: istore 7
    //   21: aload 4
    //   23: aload_1
    //   24: iload 6
    //   26: iload 7
    //   28: invokevirtual 294	java/io/InputStream:read	([BII)I
    //   31: istore 11
    //   33: iload 11
    //   35: ifle +13 -> 48
    //   38: iload 5
    //   40: iload 11
    //   42: iadd
    //   43: istore 5
    //   45: goto -36 -> 9
    //   48: aload 4
    //   50: ifnull +8 -> 58
    //   53: aload 4
    //   55: invokevirtual 225	java/io/InputStream:close	()V
    //   58: iload 5
    //   60: iload_2
    //   61: isub
    //   62: ireturn
    //   63: astore 10
    //   65: new 67	com/badlogic/gdx/utils/GdxRuntimeException
    //   68: dup
    //   69: new 69	java/lang/StringBuilder
    //   72: dup
    //   73: ldc_w 290
    //   76: invokespecial 72	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   79: aload_0
    //   80: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   83: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   86: aload 10
    //   88: invokespecial 91	com/badlogic/gdx/utils/GdxRuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   91: athrow
    //   92: astore 8
    //   94: aload 4
    //   96: ifnull +8 -> 104
    //   99: aload 4
    //   101: invokevirtual 225	java/io/InputStream:close	()V
    //   104: aload 8
    //   106: athrow
    //   107: astore 12
    //   109: goto -51 -> 58
    //   112: astore 9
    //   114: goto -10 -> 104
    //
    // Exception table:
    //   from	to	target	type
    //   21	33	63	java/io/IOException
    //   21	33	92	finally
    //   65	92	92	finally
    //   53	58	107	java/io/IOException
    //   99	104	112	java/io/IOException
  }

  // ERROR //
  public byte[] readBytes()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 296	com/badlogic/gdx/files/FileHandle:length	()J
    //   4: l2i
    //   5: istore_1
    //   6: iload_1
    //   7: ifne +7 -> 14
    //   10: sipush 512
    //   13: istore_1
    //   14: iload_1
    //   15: newarray byte
    //   17: astore_2
    //   18: aload_0
    //   19: invokevirtual 61	com/badlogic/gdx/files/FileHandle:read	()Ljava/io/InputStream;
    //   22: astore_3
    //   23: iconst_0
    //   24: istore 4
    //   26: aload_3
    //   27: aload_2
    //   28: iload 4
    //   30: aload_2
    //   31: arraylength
    //   32: iload 4
    //   34: isub
    //   35: invokevirtual 294	java/io/InputStream:read	([BII)I
    //   38: istore 8
    //   40: iload 8
    //   42: iconst_m1
    //   43: if_icmpeq +41 -> 84
    //   46: iload 4
    //   48: iload 8
    //   50: iadd
    //   51: istore 4
    //   53: iload 4
    //   55: aload_2
    //   56: arraylength
    //   57: if_icmpne +115 -> 172
    //   60: iconst_2
    //   61: aload_2
    //   62: arraylength
    //   63: imul
    //   64: newarray byte
    //   66: astore 11
    //   68: aload_2
    //   69: iconst_0
    //   70: aload 11
    //   72: iconst_0
    //   73: iload 4
    //   75: invokestatic 243	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   78: aload 11
    //   80: astore_2
    //   81: goto -55 -> 26
    //   84: aload_3
    //   85: ifnull +7 -> 92
    //   88: aload_3
    //   89: invokevirtual 225	java/io/InputStream:close	()V
    //   92: iload 4
    //   94: aload_2
    //   95: arraylength
    //   96: if_icmpge +22 -> 118
    //   99: iload 4
    //   101: newarray byte
    //   103: astore 9
    //   105: aload_2
    //   106: iconst_0
    //   107: aload 9
    //   109: iconst_0
    //   110: iload 4
    //   112: invokestatic 243	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   115: aload 9
    //   117: astore_2
    //   118: aload_2
    //   119: areturn
    //   120: astore 7
    //   122: new 67	com/badlogic/gdx/utils/GdxRuntimeException
    //   125: dup
    //   126: new 69	java/lang/StringBuilder
    //   129: dup
    //   130: ldc_w 290
    //   133: invokespecial 72	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   136: aload_0
    //   137: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   140: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   143: aload 7
    //   145: invokespecial 91	com/badlogic/gdx/utils/GdxRuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   148: athrow
    //   149: astore 5
    //   151: aload_3
    //   152: ifnull +7 -> 159
    //   155: aload_3
    //   156: invokevirtual 225	java/io/InputStream:close	()V
    //   159: aload 5
    //   161: athrow
    //   162: astore 10
    //   164: goto -72 -> 92
    //   167: astore 6
    //   169: goto -10 -> 159
    //   172: aload_2
    //   173: astore 11
    //   175: goto -97 -> 78
    //
    // Exception table:
    //   from	to	target	type
    //   26	40	120	java/io/IOException
    //   53	78	120	java/io/IOException
    //   26	40	149	finally
    //   53	78	149	finally
    //   122	149	149	finally
    //   88	92	162	java/io/IOException
    //   155	159	167	java/io/IOException
  }

  public String readString()
  {
    return readString(null);
  }

  public String readString(String paramString)
  {
    int i = (int)length();
    if (i == 0)
      i = 512;
    StringBuilder localStringBuilder = new StringBuilder(i);
    Object localObject1 = null;
    if (paramString == null);
    while (true)
    {
      try
      {
        localObject1 = new InputStreamReader(read());
        char[] arrayOfChar = new char[256];
        int j = ((InputStreamReader)localObject1).read(arrayOfChar);
        if (j != -1)
        {
          localStringBuilder.append(arrayOfChar, 0, j);
          continue;
        }
      }
      catch (IOException localIOException2)
      {
        throw new GdxRuntimeException("Error reading layout file: " + this, localIOException2);
      }
      finally
      {
        if (localObject1 == null);
      }
      try
      {
        ((InputStreamReader)localObject1).close();
        label119: throw localObject2;
        InputStreamReader localInputStreamReader = new InputStreamReader(read(), paramString);
        localObject1 = localInputStreamReader;
        continue;
        try
        {
          ((InputStreamReader)localObject1).close();
          label148: return localStringBuilder.toString();
        }
        catch (IOException localIOException3)
        {
          break label148;
        }
      }
      catch (IOException localIOException1)
      {
        break label119;
      }
    }
  }

  public BufferedReader reader(int paramInt)
  {
    return new BufferedReader(new InputStreamReader(read()), paramInt);
  }

  public BufferedReader reader(int paramInt, String paramString)
  {
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(read(), paramString), paramInt);
      return localBufferedReader;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new GdxRuntimeException("Error reading file: " + this, localUnsupportedEncodingException);
    }
  }

  public Reader reader()
  {
    return new InputStreamReader(read());
  }

  public Reader reader(String paramString)
  {
    try
    {
      InputStreamReader localInputStreamReader = new InputStreamReader(read(), paramString);
      return localInputStreamReader;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new GdxRuntimeException("Error reading file: " + this, localUnsupportedEncodingException);
    }
  }

  public FileHandle sibling(String paramString)
  {
    if (this.file.getPath().length() == 0)
      throw new GdxRuntimeException("Cannot get the sibling of the root.");
    return new FileHandle(new File(this.file.getParent(), paramString), this.type);
  }

  public String toString()
  {
    return this.file.getPath().replace('\\', '/');
  }

  public Files.FileType type()
  {
    return this.type;
  }

  public OutputStream write(boolean paramBoolean)
  {
    if (this.type == Files.FileType.Classpath)
      throw new GdxRuntimeException("Cannot write to a classpath file: " + this.file);
    if (this.type == Files.FileType.Internal)
      throw new GdxRuntimeException("Cannot write to an internal file: " + this.file);
    parent().mkdirs();
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(file(), paramBoolean);
      return localFileOutputStream;
    }
    catch (Exception localException)
    {
      if (file().isDirectory())
        throw new GdxRuntimeException("Cannot open a stream to a directory: " + this.file + " (" + this.type + ")", localException);
      throw new GdxRuntimeException("Error writing file: " + this.file + " (" + this.type + ")", localException);
    }
  }

  public void write(InputStream paramInputStream, boolean paramBoolean)
  {
    OutputStream localOutputStream = null;
    try
    {
      localOutputStream = write(paramBoolean);
      byte[] arrayOfByte = new byte[4096];
      while (true)
      {
        int i = paramInputStream.read(arrayOfByte);
        if (i == -1)
          break;
        localOutputStream.write(arrayOfByte, 0, i);
      }
    }
    catch (Exception localException3)
    {
      throw new GdxRuntimeException("Error stream writing to file: " + this.file + " (" + this.type + ")", localException3);
    }
    finally
    {
      if (paramInputStream == null);
    }
    try
    {
      paramInputStream.close();
      if (localOutputStream == null);
    }
    catch (Exception localException2)
    {
      try
      {
        localOutputStream.close();
        label108: throw localObject;
        if (paramInputStream != null);
        try
        {
          paramInputStream.close();
          if (localOutputStream == null);
        }
        catch (Exception localException5)
        {
          try
          {
            localOutputStream.close();
            return;
            localException5 = localException5;
          }
          catch (Exception localException4)
          {
            return;
          }
        }
        localException2 = localException2;
      }
      catch (Exception localException1)
      {
        break label108;
      }
    }
  }

  // ERROR //
  public void writeBytes(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: iload 4
    //   3: invokevirtual 355	com/badlogic/gdx/files/FileHandle:write	(Z)Ljava/io/OutputStream;
    //   6: astore 5
    //   8: aload 5
    //   10: aload_1
    //   11: iload_2
    //   12: iload_3
    //   13: invokevirtual 363	java/io/OutputStream:write	([BII)V
    //   16: aload 5
    //   18: invokevirtual 366	java/io/OutputStream:close	()V
    //   21: return
    //   22: astore 8
    //   24: new 67	com/badlogic/gdx/utils/GdxRuntimeException
    //   27: dup
    //   28: new 69	java/lang/StringBuilder
    //   31: dup
    //   32: ldc_w 353
    //   35: invokespecial 72	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   38: aload_0
    //   39: getfield 15	com/badlogic/gdx/files/FileHandle:file	Ljava/io/File;
    //   42: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   45: ldc 78
    //   47: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: aload_0
    //   51: getfield 22	com/badlogic/gdx/files/FileHandle:type	Lcom/badlogic/gdx/Files$FileType;
    //   54: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   57: ldc 85
    //   59: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   65: aload 8
    //   67: invokespecial 91	com/badlogic/gdx/utils/GdxRuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   70: athrow
    //   71: astore 6
    //   73: aload 5
    //   75: invokevirtual 366	java/io/OutputStream:close	()V
    //   78: aload 6
    //   80: athrow
    //   81: astore 9
    //   83: return
    //   84: astore 7
    //   86: goto -8 -> 78
    //
    // Exception table:
    //   from	to	target	type
    //   8	16	22	java/io/IOException
    //   8	16	71	finally
    //   24	71	71	finally
    //   16	21	81	java/io/IOException
    //   73	78	84	java/io/IOException
  }

  // ERROR //
  public void writeBytes(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: iload_2
    //   2: invokevirtual 355	com/badlogic/gdx/files/FileHandle:write	(Z)Ljava/io/OutputStream;
    //   5: astore_3
    //   6: aload_3
    //   7: aload_1
    //   8: invokevirtual 372	java/io/OutputStream:write	([B)V
    //   11: aload_3
    //   12: invokevirtual 366	java/io/OutputStream:close	()V
    //   15: return
    //   16: astore 6
    //   18: new 67	com/badlogic/gdx/utils/GdxRuntimeException
    //   21: dup
    //   22: new 69	java/lang/StringBuilder
    //   25: dup
    //   26: ldc_w 353
    //   29: invokespecial 72	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   32: aload_0
    //   33: getfield 15	com/badlogic/gdx/files/FileHandle:file	Ljava/io/File;
    //   36: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   39: ldc 78
    //   41: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: aload_0
    //   45: getfield 22	com/badlogic/gdx/files/FileHandle:type	Lcom/badlogic/gdx/Files$FileType;
    //   48: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   51: ldc 85
    //   53: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   59: aload 6
    //   61: invokespecial 91	com/badlogic/gdx/utils/GdxRuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   64: athrow
    //   65: astore 4
    //   67: aload_3
    //   68: invokevirtual 366	java/io/OutputStream:close	()V
    //   71: aload 4
    //   73: athrow
    //   74: astore 7
    //   76: return
    //   77: astore 5
    //   79: goto -8 -> 71
    //
    // Exception table:
    //   from	to	target	type
    //   6	11	16	java/io/IOException
    //   6	11	65	finally
    //   18	65	65	finally
    //   11	15	74	java/io/IOException
    //   67	71	77	java/io/IOException
  }

  public void writeString(String paramString, boolean paramBoolean)
  {
    writeString(paramString, paramBoolean, null);
  }

  // ERROR //
  public void writeString(String paramString1, boolean paramBoolean, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: iload_2
    //   5: aload_3
    //   6: invokevirtual 381	com/badlogic/gdx/files/FileHandle:writer	(ZLjava/lang/String;)Ljava/io/Writer;
    //   9: astore 4
    //   11: aload 4
    //   13: aload_1
    //   14: invokevirtual 385	java/io/Writer:write	(Ljava/lang/String;)V
    //   17: aload 4
    //   19: ifnull +8 -> 27
    //   22: aload 4
    //   24: invokevirtual 386	java/io/Writer:close	()V
    //   27: return
    //   28: astore 7
    //   30: new 67	com/badlogic/gdx/utils/GdxRuntimeException
    //   33: dup
    //   34: new 69	java/lang/StringBuilder
    //   37: dup
    //   38: ldc_w 353
    //   41: invokespecial 72	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   44: aload_0
    //   45: getfield 15	com/badlogic/gdx/files/FileHandle:file	Ljava/io/File;
    //   48: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   51: ldc 78
    //   53: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: aload_0
    //   57: getfield 22	com/badlogic/gdx/files/FileHandle:type	Lcom/badlogic/gdx/Files$FileType;
    //   60: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   63: ldc 85
    //   65: invokevirtual 81	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   71: aload 7
    //   73: invokespecial 91	com/badlogic/gdx/utils/GdxRuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   76: athrow
    //   77: astore 5
    //   79: aload 4
    //   81: ifnull +8 -> 89
    //   84: aload 4
    //   86: invokevirtual 386	java/io/Writer:close	()V
    //   89: aload 5
    //   91: athrow
    //   92: astore 8
    //   94: return
    //   95: astore 6
    //   97: goto -8 -> 89
    //
    // Exception table:
    //   from	to	target	type
    //   3	17	28	java/lang/Exception
    //   3	17	77	finally
    //   30	77	77	finally
    //   22	27	92	java/lang/Exception
    //   84	89	95	java/lang/Exception
  }

  public Writer writer(boolean paramBoolean)
  {
    return writer(paramBoolean, null);
  }

  public Writer writer(boolean paramBoolean, String paramString)
  {
    if (this.type == Files.FileType.Classpath)
      throw new GdxRuntimeException("Cannot write to a classpath file: " + this.file);
    if (this.type == Files.FileType.Internal)
      throw new GdxRuntimeException("Cannot write to an internal file: " + this.file);
    parent().mkdirs();
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(file(), paramBoolean);
      if (paramString == null)
        return new OutputStreamWriter(localFileOutputStream);
      OutputStreamWriter localOutputStreamWriter = new OutputStreamWriter(localFileOutputStream, paramString);
      return localOutputStreamWriter;
    }
    catch (IOException localIOException)
    {
      if (file().isDirectory())
        throw new GdxRuntimeException("Cannot open a stream to a directory: " + this.file + " (" + this.type + ")", localIOException);
      throw new GdxRuntimeException("Error writing file: " + this.file + " (" + this.type + ")", localIOException);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.files.FileHandle
 * JD-Core Version:    0.6.2
 */
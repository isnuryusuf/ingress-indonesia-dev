package com.nianticproject.ingress.o;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.media.ExifInterface;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public final class g
{
  private static int a = 0;

  private static ExifInterface a(File paramFile)
  {
    String str = paramFile.getAbsolutePath();
    if (!paramFile.exists())
    {
      Log.w("PhotoUtils", "File \"" + str + "\" does not exist!");
      return null;
    }
    try
    {
      ExifInterface localExifInterface = new ExifInterface(str);
      return localExifInterface;
    }
    catch (IOException localIOException)
    {
      Log.e("PhotoUtils", "Problem opening an ExifInterface to \"" + str + "\"", localIOException);
    }
    return null;
  }

  public static Uri a(Context paramContext, Uri paramUri)
  {
    String str = a(".png");
    File localFile = new File(a(), str);
    localFile.createNewFile();
    a(paramContext.getContentResolver().openInputStream(paramUri), new FileOutputStream(localFile));
    Uri localUri = Uri.fromFile(localFile);
    a(paramContext, localFile);
    return localUri;
  }

  public static i a(Context paramContext, Uri paramUri, int paramInt, boolean paramBoolean1, long paramLong, boolean paramBoolean2)
  {
    if (paramInt < 0)
      throw new IllegalArgumentException("Size must never be less than 0!");
    if ((paramLong > 0L) && (h(paramContext, paramUri) > paramLong))
      return new i(paramUri, h.b);
    int i = Math.max(1, paramInt);
    String.format("Loading photo from %s", new Object[] { paramUri });
    Uri localUri2;
    if ((paramBoolean2) && (!e(paramContext, paramUri)))
    {
      localUri2 = a(paramContext, paramUri);
      String.format("Made public copy at %s", new Object[] { localUri2 });
    }
    for (Uri localUri1 = localUri2; ; localUri1 = paramUri)
    {
      InputStream localInputStream1 = paramContext.getContentResolver().openInputStream(localUri1);
      if (localInputStream1 == null)
        throw new IOException("Null InputStream");
      int j;
      InputStream localInputStream2;
      try
      {
        BitmapFactory.Options localOptions1 = new BitmapFactory.Options();
        localOptions1.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(localInputStream1, null, localOptions1);
        j = Math.max(1, (int)Math.max(localOptions1.outWidth, localOptions1.outHeight) / i);
        localInputStream1.close();
        localInputStream2 = paramContext.getContentResolver().openInputStream(localUri1);
        if (localInputStream2 == null)
          throw new IOException("Null InputStream");
      }
      finally
      {
        localInputStream1.close();
      }
      BitmapFactory.Options localOptions2;
      Bitmap localBitmap1;
      try
      {
        localOptions2 = new BitmapFactory.Options();
        localOptions2.inSampleSize = j;
        localBitmap1 = BitmapFactory.decodeStream(localInputStream2, null, localOptions2);
        localInputStream2.close();
        if (localBitmap1 == null)
          throw new IOException("Image decode failure");
      }
      finally
      {
        localInputStream2.close();
      }
      double d2;
      if (paramBoolean1)
      {
        double d1 = Math.max(localOptions2.outWidth, localOptions2.outHeight);
        if (i > d1)
          return new i(localBitmap1, paramUri, localUri1);
        d2 = i / d1;
      }
      for (Bitmap localBitmap2 = Bitmap.createScaledBitmap(localBitmap1, (int)(d2 * localOptions2.outWidth), (int)(d2 * localOptions2.outHeight), true); ; localBitmap2 = localBitmap1)
      {
        if (localBitmap2 == null)
          return null;
        int k = f(paramContext, localUri1);
        if (k != 0)
        {
          Matrix localMatrix = new Matrix();
          localMatrix.postRotate(k, localBitmap2.getWidth() / 2, localBitmap2.getHeight() / 2);
          localBitmap2 = Bitmap.createBitmap(localBitmap2, 0, 0, localBitmap2.getWidth(), localBitmap2.getHeight(), localMatrix, true);
        }
        return new i(localBitmap2, paramUri, localUri1);
      }
    }
  }

  private static File a()
  {
    File localFile = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), "Ingress");
    if (!localFile.exists())
      localFile.mkdirs();
    return localFile;
  }

  public static File a(Context paramContext)
  {
    String str = a(null);
    File localFile = new File(a(), str + ".png");
    localFile.createNewFile();
    a(paramContext, localFile);
    return localFile;
  }

  private static String a(String paramString)
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US);
    StringBuilder localStringBuilder1 = new StringBuilder("ingress_").append(localSimpleDateFormat.format(new Date())).append("_");
    int i = a;
    a = i + 1;
    StringBuilder localStringBuilder2 = localStringBuilder1.append(Integer.toString(i));
    if (!TextUtils.isEmpty(paramString))
      localStringBuilder2.append(paramString);
    return localStringBuilder2.toString();
  }

  public static void a(Context paramContext, Uri paramUri, int paramInt)
  {
    if (paramInt == 0)
      return;
    if ((paramInt % 90 != 0) || (paramInt / 90 <= 0) || (paramInt / 90 > 3))
      throw new IllegalArgumentException("rotation amount must be 90, 180, or 270");
    int i = (paramInt + f(paramContext, paramUri)) % 360;
    if ("content".equals(paramUri.getScheme()))
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("orientation", Integer.valueOf(i));
      paramContext.getContentResolver().update(paramUri, localContentValues, null, null);
      return;
    }
    if ("file".equals(paramUri.getScheme()))
    {
      a(new File(paramUri.getPath()), i);
      return;
    }
    throw new IllegalArgumentException("Cannot handle a Uri that's not file:// or content://, bad Uri: " + paramUri.toString());
  }

  private static void a(Context paramContext, File paramFile)
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = paramFile.getPath();
    MediaScannerConnection.scanFile(paramContext, arrayOfString, new String[] { "image/png" }, null);
  }

  private static void a(File paramFile, int paramInt)
  {
    ExifInterface localExifInterface = a(paramFile);
    if (localExifInterface == null)
      return;
    int i;
    switch (paramInt)
    {
    default:
      throw new IllegalArgumentException(paramInt + " is an illegal value.Supported values: 0, 9, 180, or 270");
    case 0:
      i = 1;
    case 90:
    case 180:
    case 270:
    }
    while (true)
    {
      localExifInterface.setAttribute("Orientation", Integer.toString(i));
      try
      {
        localExifInterface.saveAttributes();
        return;
      }
      catch (IOException localIOException)
      {
        Log.e("PhotoUtils", "Problem saving the EXIF tags to \"" + paramFile.getPath() + "\"", localIOException);
        return;
      }
      i = 6;
      continue;
      i = 3;
      continue;
      i = 8;
    }
  }

  private static void a(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    try
    {
      byte[] arrayOfByte = new byte[1024];
      while (paramInputStream.read(arrayOfByte, 0, 1024) != -1)
        paramOutputStream.write(arrayOfByte);
    }
    finally
    {
      paramOutputStream.close();
      paramInputStream.close();
    }
    paramOutputStream.flush();
    paramOutputStream.close();
    paramInputStream.close();
  }

  private static boolean a(Uri paramUri)
  {
    if (paramUri == null);
    while ((!"com.android.gallery3d.provider".equals(paramUri.getAuthority())) && (!"com.google.android.gallery3d.provider".equals(paramUri.getAuthority())))
      return false;
    return true;
  }

  public static Uri b(Context paramContext, Uri paramUri)
  {
    int i = f(paramContext, paramUri);
    InputStream localInputStream = paramContext.getContentResolver().openInputStream(paramUri);
    String str = a(".png");
    File localFile = new File(paramContext.getFilesDir(), str);
    a(localInputStream, paramContext.openFileOutput(str, 0));
    Uri localUri = Uri.fromFile(localFile);
    a(new File(localUri.getPath()), i);
    return localUri;
  }

  public static void c(Context paramContext, Uri paramUri)
  {
    if ("file".equals(paramUri.getScheme()))
      new File(paramUri.getPath()).delete();
    do
    {
      return;
      if (!"content".equals(paramUri.getScheme()))
        break;
      try
      {
        paramContext.getContentResolver().delete(paramUri, null, null);
        return;
      }
      catch (UnsupportedOperationException localUnsupportedOperationException)
      {
      }
    }
    while (a(paramUri));
    throw localUnsupportedOperationException;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = paramUri.toString();
    throw new IllegalArgumentException(String.format("Don't understand the scheme of %s", arrayOfObject));
  }

  // ERROR //
  public static com.google.a.d.u d(Context paramContext, Uri paramUri)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_1
    //   3: invokestatic 369	com/nianticproject/ingress/o/g:a	(Landroid/net/Uri;)Z
    //   6: ifeq +9 -> 15
    //   9: aconst_null
    //   10: astore 12
    //   12: aload 12
    //   14: areturn
    //   15: iconst_1
    //   16: anewarray 134	java/lang/String
    //   19: dup
    //   20: iconst_0
    //   21: ldc_w 375
    //   24: aastore
    //   25: astore_3
    //   26: aload_0
    //   27: invokevirtual 80	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   30: aload_1
    //   31: aload_3
    //   32: aconst_null
    //   33: aconst_null
    //   34: aconst_null
    //   35: invokevirtual 379	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   38: astore 5
    //   40: aload 5
    //   42: ifnull +13 -> 55
    //   45: aload 5
    //   47: invokeinterface 384 1 0
    //   52: ifne +43 -> 95
    //   55: ldc 25
    //   57: new 27	java/lang/StringBuilder
    //   60: dup
    //   61: ldc_w 386
    //   64: invokespecial 33	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   67: aload_1
    //   68: invokevirtual 301	android/net/Uri:toString	()Ljava/lang/String;
    //   71: invokevirtual 37	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: invokevirtual 42	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   77: invokestatic 48	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   80: pop
    //   81: aload 5
    //   83: ifnull +10 -> 93
    //   86: aload 5
    //   88: invokeinterface 387 1 0
    //   93: aconst_null
    //   94: areturn
    //   95: aload 5
    //   97: iconst_0
    //   98: invokeinterface 390 2 0
    //   103: astore 7
    //   105: new 15	java/io/File
    //   108: dup
    //   109: aload 7
    //   111: invokespecial 295	java/io/File:<init>	(Ljava/lang/String;)V
    //   114: invokestatic 312	com/nianticproject/ingress/o/g:a	(Ljava/io/File;)Landroid/media/ExifInterface;
    //   117: astore 8
    //   119: aload 8
    //   121: ifnonnull +41 -> 162
    //   124: ldc 25
    //   126: new 27	java/lang/StringBuilder
    //   129: dup
    //   130: ldc_w 392
    //   133: invokespecial 33	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   136: aload 7
    //   138: invokevirtual 37	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: invokevirtual 42	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   144: invokestatic 48	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   147: pop
    //   148: aload 5
    //   150: ifnull +10 -> 160
    //   153: aload 5
    //   155: invokeinterface 387 1 0
    //   160: aconst_null
    //   161: areturn
    //   162: iconst_2
    //   163: newarray float
    //   165: astore 10
    //   167: aload 8
    //   169: aload 10
    //   171: invokevirtual 396	android/media/ExifInterface:getLatLong	([F)Z
    //   174: ifne +43 -> 217
    //   177: ldc 25
    //   179: new 27	java/lang/StringBuilder
    //   182: dup
    //   183: ldc_w 398
    //   186: invokespecial 33	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   189: aload_1
    //   190: invokevirtual 301	android/net/Uri:toString	()Ljava/lang/String;
    //   193: invokevirtual 37	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   196: invokevirtual 42	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   199: invokestatic 401	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   202: pop
    //   203: aload 5
    //   205: ifnull +10 -> 215
    //   208: aload 5
    //   210: invokeinterface 387 1 0
    //   215: aconst_null
    //   216: areturn
    //   217: aload 10
    //   219: iconst_0
    //   220: faload
    //   221: f2d
    //   222: aload 10
    //   224: iconst_1
    //   225: faload
    //   226: f2d
    //   227: invokestatic 406	com/google/a/d/u:b	(DD)Lcom/google/a/d/u;
    //   230: astore 11
    //   232: aload 11
    //   234: astore 12
    //   236: aload 5
    //   238: ifnull -226 -> 12
    //   241: aload 5
    //   243: invokeinterface 387 1 0
    //   248: aload 12
    //   250: areturn
    //   251: astore 4
    //   253: aload_2
    //   254: ifnull +9 -> 263
    //   257: aload_2
    //   258: invokeinterface 387 1 0
    //   263: aload 4
    //   265: athrow
    //   266: astore 4
    //   268: aload 5
    //   270: astore_2
    //   271: goto -18 -> 253
    //
    // Exception table:
    //   from	to	target	type
    //   15	40	251	finally
    //   45	55	266	finally
    //   55	81	266	finally
    //   95	119	266	finally
    //   124	148	266	finally
    //   162	203	266	finally
    //   217	232	266	finally
  }

  public static boolean e(Context paramContext, Uri paramUri)
  {
    String str1 = paramUri.getScheme();
    String str2;
    if ("content".equals(str1))
    {
      String[] arrayOfString = { "_data" };
      Cursor localCursor = paramContext.getContentResolver().query(paramUri, arrayOfString, null, null, null);
      if (localCursor == null)
        return false;
      if (!localCursor.moveToFirst())
        return false;
      str2 = localCursor.getString(0);
    }
    while (str2 == null)
    {
      return false;
      if ("file".equals(str1))
      {
        str2 = new File(paramUri.getPath()).getAbsolutePath();
      }
      else
      {
        Log.w("PhotoUtils", "Cannot handle this Uri's scheme: " + paramUri);
        return false;
      }
    }
    String str3 = new File(str2).getParentFile().getAbsolutePath();
    return TextUtils.equals(a().getAbsolutePath(), str3);
  }

  private static int f(Context paramContext, Uri paramUri)
  {
    if ("content".equals(paramUri.getScheme()))
      i = g(paramContext, paramUri);
    ExifInterface localExifInterface;
    do
    {
      return i;
      if (!"file".equals(paramUri.getScheme()))
        break;
      localExifInterface = a(new File(paramUri.getPath()));
      i = 0;
    }
    while (localExifInterface == null);
    int j = localExifInterface.getAttributeInt("Orientation", 1);
    int i = 0;
    switch (j)
    {
    case 1:
    case 2:
    case 4:
    case 5:
    case 7:
    default:
      Log.w("PhotoUtils", "Unhandled ExifInterface ORIENTATION value: " + j + " using 0 degrees");
      return 0;
    case 6:
      return 90;
    case 3:
      return 180;
    case 8:
    }
    return 270;
    throw new IllegalArgumentException("Cannot handle a Uri that's not file:// or content://, bad Uri: " + paramUri.toString());
  }

  private static int g(Context paramContext, Uri paramUri)
  {
    String[] arrayOfString = { "orientation" };
    Cursor localCursor = paramContext.getContentResolver().query(paramUri, arrayOfString, null, null, null);
    if (localCursor == null)
      return 0;
    try
    {
      if (localCursor.moveToNext())
      {
        int i = localCursor.getInt(0);
        return i;
      }
      return 0;
    }
    finally
    {
      localCursor.close();
    }
  }

  // ERROR //
  private static long h(Context paramContext, Uri paramUri)
  {
    // Byte code:
    //   0: new 15	java/io/File
    //   3: dup
    //   4: aload_1
    //   5: invokevirtual 294	android/net/Uri:getPath	()Ljava/lang/String;
    //   8: invokespecial 295	java/io/File:<init>	(Ljava/lang/String;)V
    //   11: astore_2
    //   12: aload_2
    //   13: invokevirtual 439	java/io/File:length	()J
    //   16: lconst_0
    //   17: lcmp
    //   18: ifle +12 -> 30
    //   21: aload_2
    //   22: invokevirtual 439	java/io/File:length	()J
    //   25: lstore 10
    //   27: lload 10
    //   29: lreturn
    //   30: iconst_1
    //   31: anewarray 134	java/lang/String
    //   34: dup
    //   35: iconst_0
    //   36: ldc_w 441
    //   39: aastore
    //   40: astore_3
    //   41: aload_0
    //   42: invokevirtual 80	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   45: aload_1
    //   46: aload_3
    //   47: aconst_null
    //   48: aconst_null
    //   49: aconst_null
    //   50: invokevirtual 379	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   53: astore 6
    //   55: aload 6
    //   57: ifnull +13 -> 70
    //   60: aload 6
    //   62: invokeinterface 384 1 0
    //   67: ifne +45 -> 112
    //   70: ldc 25
    //   72: new 27	java/lang/StringBuilder
    //   75: dup
    //   76: ldc_w 443
    //   79: invokespecial 33	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   82: aload_1
    //   83: invokevirtual 301	android/net/Uri:toString	()Ljava/lang/String;
    //   86: invokevirtual 37	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: invokevirtual 42	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   92: invokestatic 48	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   95: pop
    //   96: aload 6
    //   98: ifnull +10 -> 108
    //   101: aload 6
    //   103: invokeinterface 387 1 0
    //   108: ldc2_w 444
    //   111: lreturn
    //   112: aload 6
    //   114: iconst_0
    //   115: invokeinterface 449 2 0
    //   120: lstore 8
    //   122: lload 8
    //   124: lstore 10
    //   126: aload 6
    //   128: ifnull -101 -> 27
    //   131: aload 6
    //   133: invokeinterface 387 1 0
    //   138: lload 10
    //   140: lreturn
    //   141: astore 4
    //   143: aconst_null
    //   144: astore 5
    //   146: aload 5
    //   148: ifnull +10 -> 158
    //   151: aload 5
    //   153: invokeinterface 387 1 0
    //   158: aload 4
    //   160: athrow
    //   161: astore 4
    //   163: aload 6
    //   165: astore 5
    //   167: goto -21 -> 146
    //
    // Exception table:
    //   from	to	target	type
    //   30	55	141	finally
    //   60	70	161	finally
    //   70	96	161	finally
    //   112	122	161	finally
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.o.g
 * JD-Core Version:    0.6.2
 */
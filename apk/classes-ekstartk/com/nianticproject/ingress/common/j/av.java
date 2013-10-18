package com.nianticproject.ingress.common.j;

import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.utils.GdxRuntimeException;
import com.google.a.a.an;
import com.google.a.f.b;
import com.nianticproject.ingress.common.n.a;
import com.nianticproject.ingress.common.n.c;
import com.nianticproject.ingress.common.n.f;
import com.nianticproject.ingress.common.w.aa;
import java.io.IOException;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.TreeSet;

public final class av
{
  private static final aa a = new aa(av.class);
  private final bc b = new bc(this, (byte)0);
  private final HashMap<aw, az> c = new HashMap();
  private final TreeSet<az> d = new TreeSet();
  private final a e;
  private final byte[] f;
  private int g;

  public av(a parama, byte[] paramArrayOfByte)
  {
    this.e = parama;
    this.f = paramArrayOfByte;
    an.a(parama);
  }

  public static Pixmap a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null)
      try
      {
        Pixmap localPixmap = new Pixmap(paramArrayOfByte, 0, paramArrayOfByte.length);
        return localPixmap;
      }
      catch (GdxRuntimeException localGdxRuntimeException)
      {
        a.b("Unable to load Pixmap: " + localGdxRuntimeException.getMessage());
      }
    return null;
  }

  private byte[] a(String paramString)
  {
    try
    {
      f localf2 = this.e.a(paramString);
      localf1 = localf2;
      if (localf1 == null)
        return null;
    }
    catch (IOException localIOException1)
    {
      f localf1;
      while (true)
        localf1 = null;
      try
      {
        byte[] arrayOfByte = b.a(localf1.a());
        return arrayOfByte;
      }
      catch (IOException localIOException2)
      {
        new Object[] { paramString };
        return null;
      }
      finally
      {
        localf1.close();
      }
    }
  }

  private byte[] b(String paramString, int paramInt)
  {
    byte[] arrayOfByte = a(paramString);
    if (arrayOfByte == null)
    {
      arrayOfByte = c(paramString, paramInt);
      if (arrayOfByte == null)
      {
        new Object[] { paramString };
        return null;
      }
    }
    c localc;
    try
    {
      localc = this.e.b(paramString);
      if (localc == null)
      {
        new Object[] { paramString };
        return arrayOfByte;
      }
    }
    catch (IOException localIOException1)
    {
      new Object[] { paramString };
      return arrayOfByte;
    }
    try
    {
      OutputStream localOutputStream = localc.a();
      try
      {
        localOutputStream.write(arrayOfByte);
        localOutputStream.close();
        return arrayOfByte;
      }
      finally
      {
        localOutputStream.close();
      }
    }
    catch (IOException localIOException2)
    {
      localc.c();
      throw localIOException2;
    }
  }

  // ERROR //
  private static byte[] c(String paramString, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: iload_1
    //   2: invokestatic 170	com/nianticproject/ingress/common/w/v:a	(Ljava/lang/String;I)Ljava/lang/String;
    //   5: astore_2
    //   6: new 172	java/net/URL
    //   9: dup
    //   10: aload_2
    //   11: invokespecial 173	java/net/URL:<init>	(Ljava/lang/String;)V
    //   14: astore_3
    //   15: aload_3
    //   16: invokevirtual 177	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   19: astore 5
    //   21: aload 5
    //   23: invokevirtual 182	java/net/URLConnection:connect	()V
    //   26: aload 5
    //   28: invokevirtual 185	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   31: astore 6
    //   33: aload 6
    //   35: invokestatic 135	com/google/a/f/b:a	(Ljava/io/InputStream;)[B
    //   38: astore 8
    //   40: aload 6
    //   42: invokevirtual 188	java/io/InputStream:close	()V
    //   45: aload 8
    //   47: areturn
    //   48: astore 9
    //   50: getstatic 30	com/nianticproject/ingress/common/j/av:a	Lcom/nianticproject/ingress/common/w/aa;
    //   53: ldc 190
    //   55: iconst_1
    //   56: anewarray 4	java/lang/Object
    //   59: dup
    //   60: iconst_0
    //   61: aload_2
    //   62: aastore
    //   63: invokevirtual 193	com/nianticproject/ingress/common/w/aa:b	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   66: aconst_null
    //   67: areturn
    //   68: astore 7
    //   70: aload 6
    //   72: invokevirtual 188	java/io/InputStream:close	()V
    //   75: aload 7
    //   77: athrow
    //   78: astore 4
    //   80: getstatic 30	com/nianticproject/ingress/common/j/av:a	Lcom/nianticproject/ingress/common/w/aa;
    //   83: new 72	java/lang/StringBuilder
    //   86: dup
    //   87: ldc 195
    //   89: invokespecial 77	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   92: aload 4
    //   94: invokevirtual 196	java/io/IOException:toString	()Ljava/lang/String;
    //   97: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   103: invokevirtual 90	com/nianticproject/ingress/common/w/aa:b	(Ljava/lang/String;)V
    //   106: aconst_null
    //   107: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   6	15	48	java/net/MalformedURLException
    //   33	40	68	finally
    //   15	33	78	java/io/IOException
    //   40	45	78	java/io/IOException
    //   70	78	78	java/io/IOException
  }

  public final d a(String paramString, int paramInt)
  {
    return a(paramString, paramInt, false);
  }

  public final d a(String paramString, int paramInt, boolean paramBoolean)
  {
    try
    {
      String str2 = new URL(paramString).toString();
      str1 = str2;
      aw localaw = new aw(str1, paramInt, (byte)0);
      az localaz = (az)this.c.get(localaw);
      if ((localaz == null) || ((paramBoolean) && (localaz.c())))
      {
        localaz = new az(this, localaw, str1, paramInt, this.b, (byte)0);
        this.c.put(localaw, localaz);
      }
      localaz.g();
      return localaz;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      while (true)
        String str1 = "";
    }
  }

  public final void a()
  {
    while ((this.g > 3145728) && (!this.d.isEmpty()))
    {
      az localaz = (az)this.d.first();
      this.c.remove(localaz.e());
      this.d.remove(localaz);
      localaz.i();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.j.av
 * JD-Core Version:    0.6.2
 */
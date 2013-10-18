package com.nianticproject.ingress.common.q.b;

import com.nianticproject.ingress.common.n.a;
import com.nianticproject.ingress.common.q.c;
import com.nianticproject.ingress.common.q.d;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class l
  implements f
{
  private final a a;

  public l(a parama)
  {
    this.a = parama;
  }

  private static void a(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    byte[] arrayOfByte = new byte[1024];
    while (true)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (i == -1)
        break;
      paramOutputStream.write(arrayOfByte, 0, i);
    }
  }

  private static String b(c paramc)
  {
    return Long.valueOf(0x5A5A5A5A ^ paramc.d()).toString();
  }

  public final d a(c paramc)
  {
    try
    {
      com.nianticproject.ingress.common.n.f localf = this.a.a(b(paramc));
      if (localf == null)
        return null;
      DataInputStream localDataInputStream = new DataInputStream(localf.a());
      int i = localDataInputStream.readInt();
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      a(localDataInputStream, localByteArrayOutputStream);
      locald = new d(paramc, i, localByteArrayOutputStream.toByteArray());
      return locald;
    }
    catch (IOException localIOException)
    {
      while (true)
        d locald = null;
    }
  }

  // ERROR //
  public final void a(c paramc, d paramd)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_0
    //   3: getfield 15	com/nianticproject/ingress/common/q/b/l:a	Lcom/nianticproject/ingress/common/n/a;
    //   6: aload_1
    //   7: invokestatic 53	com/nianticproject/ingress/common/q/b/l:b	(Lcom/nianticproject/ingress/common/q/c;)Ljava/lang/String;
    //   10: invokevirtual 90	com/nianticproject/ingress/common/n/a:b	(Ljava/lang/String;)Lcom/nianticproject/ingress/common/n/c;
    //   13: astore 8
    //   15: aload 8
    //   17: astore 6
    //   19: new 92	java/io/ByteArrayInputStream
    //   22: dup
    //   23: aload_2
    //   24: invokevirtual 94	com/nianticproject/ingress/common/q/d:b	()[B
    //   27: invokespecial 97	java/io/ByteArrayInputStream:<init>	([B)V
    //   30: astore 9
    //   32: new 99	java/io/DataOutputStream
    //   35: dup
    //   36: aload 6
    //   38: invokevirtual 104	com/nianticproject/ingress/common/n/c:a	()Ljava/io/OutputStream;
    //   41: invokespecial 107	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   44: astore 10
    //   46: aload 10
    //   48: aload_2
    //   49: invokevirtual 109	com/nianticproject/ingress/common/q/d:a	()I
    //   52: invokevirtual 113	java/io/DataOutputStream:writeInt	(I)V
    //   55: aload 9
    //   57: aload 10
    //   59: invokestatic 77	com/nianticproject/ingress/common/q/b/l:a	(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   62: aload 10
    //   64: invokevirtual 116	java/io/DataOutputStream:close	()V
    //   67: aload 6
    //   69: ifnull +12 -> 81
    //   72: iload_3
    //   73: ifeq +42 -> 115
    //   76: aload 6
    //   78: invokevirtual 119	com/nianticproject/ingress/common/n/c:c	()V
    //   81: return
    //   82: astore 11
    //   84: aconst_null
    //   85: astore 10
    //   87: aload 10
    //   89: ifnull +8 -> 97
    //   92: aload 10
    //   94: invokevirtual 116	java/io/DataOutputStream:close	()V
    //   97: aload 11
    //   99: athrow
    //   100: astore 12
    //   102: aload 6
    //   104: astore 5
    //   106: iconst_1
    //   107: istore_3
    //   108: aload 5
    //   110: astore 6
    //   112: goto -45 -> 67
    //   115: aload 6
    //   117: invokevirtual 121	com/nianticproject/ingress/common/n/c:b	()V
    //   120: return
    //   121: astore 7
    //   123: return
    //   124: astore 4
    //   126: aconst_null
    //   127: astore 5
    //   129: goto -23 -> 106
    //   132: astore 11
    //   134: goto -47 -> 87
    //
    // Exception table:
    //   from	to	target	type
    //   32	46	82	finally
    //   19	32	100	java/io/IOException
    //   62	67	100	java/io/IOException
    //   92	97	100	java/io/IOException
    //   97	100	100	java/io/IOException
    //   76	81	121	java/io/IOException
    //   115	120	121	java/io/IOException
    //   2	15	124	java/io/IOException
    //   46	62	132	finally
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.q.b.l
 * JD-Core Version:    0.6.2
 */
package com.google.c.a.a.b;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Vector;

public final class a
{
  public static final Boolean a = new Boolean(false);
  public static final Boolean b = new Boolean(true);
  public static final byte[] c = new byte[0];
  private static final b h = new b((byte)0);
  private c d;
  private final com.google.c.a.b.c e;
  private com.google.c.a.b.c f;
  private int g = -2147483648;

  public a(c paramc)
  {
    this.d = paramc;
    this.e = new com.google.c.a.b.c();
  }

  private static int a(long paramLong)
  {
    int i;
    if (paramLong < 0L)
      i = 10;
    while (true)
    {
      return i;
      i = 1;
      while (paramLong >= 128L)
      {
        i++;
        paramLong >>= 7;
      }
    }
  }

  private int a(com.google.c.a.a.e parame)
  {
    com.google.c.a.b.d locald = new com.google.c.a.b.d(this.e);
    int i3;
    for (int i = 0; locald.a(); i = i3 + i)
    {
      int j = locald.b();
      int k = d(j);
      int m = e(j);
      int n;
      switch (m)
      {
      case 4:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      default:
        throw new RuntimeException("Unsupp.Type:" + this.d + '/' + j + '/' + m);
      case 0:
      case 1:
      case 2:
      case 3:
      case 5:
      case 16:
        n = m;
      case 19:
      case 20:
      case 21:
      case 24:
      case 29:
      case 30:
      case 33:
      case 34:
      case 25:
      case 27:
      case 28:
      case 35:
      case 36:
      case 17:
      case 22:
      case 32:
      case 18:
      case 23:
      case 31:
      case 26:
      }
      int i2;
      int i4;
      int i5;
      while (true)
      {
        int i1 = n | j << 3;
        i2 = 0;
        i3 = 0;
        if (i2 >= k)
          break;
        i4 = i3 + a(parame, i1);
        i5 = parame.b();
        switch (n)
        {
        case 4:
        default:
          throw new IllegalArgumentException();
          n = 0;
          continue;
          n = 2;
          continue;
          n = 1;
          continue;
          n = 5;
          continue;
          n = 3;
        case 1:
        case 5:
        case 0:
        case 2:
        case 3:
        }
      }
      long l2 = ((Long)a(j, i2, 19)).longValue();
      if (n == 5);
      for (int i10 = 4; ; i10 = 8)
        for (int i11 = 0; i11 < i10; i11++)
        {
          parame.write((int)(0xFF & l2));
          l2 >>= 8;
        }
      int i6 = 0;
      i3 = i4;
      while (true)
      {
        if (i6 == 0)
          i3 += parame.b() - i5;
        i2++;
        break;
        long l1 = ((Long)a(j, i2, 19)).longValue();
        if (f(j))
          l1 = l1 << 1 ^ -(l1 >>> 63);
        a(parame, l1);
        i3 = i4;
        i6 = 0;
        continue;
        if (e(j) == 27);
        Object localObject;
        for (int i7 = 16; ; i7 = 25)
        {
          localObject = a(j, i2, i7);
          if (!(localObject instanceof byte[]))
            break label607;
          byte[] arrayOfByte = (byte[])localObject;
          a(parame, arrayOfByte.length);
          parame.write(arrayOfByte);
          i3 = i4;
          i6 = 0;
          break;
        }
        label607: parame.b(parame.b());
        int i8 = parame.a();
        parame.b(-1);
        int i9 = ((a)localObject).a(parame);
        parame.a(i8, i9);
        i3 = i4 + (i9 + a(i9));
        i6 = 1;
        continue;
        i3 = i4 + ((a)a(j, i2, 26)).a(parame) + a(parame, 0x4 | j << 3);
        i6 = 1;
      }
    }
    return i;
  }

  private int a(InputStream paramInputStream, int paramInt, boolean paramBoolean, b paramb)
  {
    if (paramBoolean)
    {
      this.e.b();
      this.f = null;
    }
    int i = paramInt;
    if (i > 0)
    {
      long l1 = a(paramInputStream, true, paramb);
      if (l1 != -1L)
      {
        int j = i - paramb.a;
        int k = 0x7 & (int)l1;
        if (k != 4)
        {
          int m = (int)(l1 >>> 3);
          if (e(m) == 16)
          {
            if (this.f == null)
              this.f = new com.google.c.a.b.c();
            this.f.a(m, com.google.c.a.b.e.a(k));
          }
          Object localObject;
          int n;
          switch (k)
          {
          case 4:
          default:
            throw new IOException("Unknown wire type " + k + ", reading garbage data?");
          case 0:
            long l3 = a(paramInputStream, false, paramb);
            int i7 = j - paramb.a;
            if (f(m))
              l3 = l3 >>> 1 ^ -(l3 & 1L);
            localObject = com.google.c.a.b.e.a(l3);
            n = i7;
          case 1:
          case 5:
            while (true)
            {
              a(m, localObject);
              i = n;
              break;
              long l2 = 0L;
              int i4 = 0;
              if (k == 5);
              for (int i5 = 4; ; i5 = 8)
              {
                n = j - i5;
                while (true)
                {
                  int i6 = i5 - 1;
                  if (i5 <= 0)
                    break;
                  l2 |= paramInputStream.read() << i4;
                  i4 += 8;
                  i5 = i6;
                }
              }
              localObject = com.google.c.a.b.e.a(l2);
            }
          case 2:
            int i1 = (int)a(paramInputStream, false, paramb);
            n = j - paramb.a - i1;
            label358: int i2;
            if (i1 == 0)
            {
              localObject = c;
              i2 = 0;
            }
            while (i2 < i1)
            {
              int i3 = paramInputStream.read((byte[])localObject, i2, i1 - i2);
              if (i3 <= 0)
              {
                throw new IOException("Unexp.EOF");
                localObject = new byte[i1];
                break label358;
              }
              i2 += i3;
            }
          case 3:
          }
          if (this.d == null);
          for (c localc = null; ; localc = (c)this.d.b(m))
          {
            a locala = new a(localc);
            n = locala.a(paramInputStream, j, false, paramb);
            localObject = locala;
            break;
          }
        }
        i = j;
      }
    }
    if (i < 0)
      throw new IOException();
    return i;
  }

  private static int a(OutputStream paramOutputStream, long paramLong)
  {
    for (int i = 0; ; i++)
    {
      int j;
      if (i < 10)
      {
        j = (int)(0x7F & paramLong);
        paramLong >>>= 7;
        if (paramLong == 0L)
        {
          paramOutputStream.write(j);
          i++;
        }
      }
      else
      {
        return i;
      }
      paramOutputStream.write(j | 0x80);
    }
  }

  private static int a(Object paramObject)
  {
    if (paramObject == null)
      return 0;
    if ((paramObject instanceof Vector))
      return ((Vector)paramObject).size();
    return 1;
  }

  static long a(InputStream paramInputStream, boolean paramBoolean)
  {
    return a(paramInputStream, paramBoolean, h);
  }

  private static long a(InputStream paramInputStream, boolean paramBoolean, b paramb)
  {
    paramb.a = 0;
    int i = 0;
    long l = 0L;
    for (int j = 0; j < 10; j++)
    {
      int k = paramInputStream.read();
      if (k == -1)
      {
        if ((j == 0) && (paramBoolean))
          return -1L;
        throw new IOException("EOF");
      }
      l |= (k & 0x7F) << i;
      if ((k & 0x80) == 0)
        break;
      i += 7;
    }
    paramb.a = (j + 1);
    return l;
  }

  private a a(byte[] paramArrayOfByte)
  {
    a(new ByteArrayInputStream(paramArrayOfByte), paramArrayOfByte.length);
    return this;
  }

  private Object a(int paramInt1, int paramInt2, int paramInt3)
  {
    Object localObject = this.e.a(paramInt1);
    if (paramInt2 >= a(localObject))
      throw new ArrayIndexOutOfBoundsException();
    return a(paramInt1, paramInt2, paramInt3, localObject);
  }

  private Object a(int paramInt1, int paramInt2, int paramInt3, Object paramObject)
  {
    Vector localVector;
    Object localObject1;
    if ((paramObject instanceof Vector))
    {
      localVector = (Vector)paramObject;
      localObject1 = localVector.elementAt(paramInt2);
    }
    while (true)
    {
      Object localObject2 = a(localObject1, paramInt3, paramInt1);
      if ((localObject2 != localObject1) && (localObject1 != null))
      {
        if (localVector == null)
          b(paramInt1, localObject2);
      }
      else
        return localObject2;
      localVector.setElementAt(localObject2, paramInt2);
      return localObject2;
      localObject1 = paramObject;
      localVector = null;
    }
  }

  private Object a(Object paramObject, int paramInt1, int paramInt2)
  {
    switch (paramInt1)
    {
    case 17:
    case 18:
    case 20:
    case 29:
    case 30:
    default:
      throw new RuntimeException("Unsupp.Type");
    case 24:
      if (!(paramObject instanceof Boolean))
        break;
    case 16:
    case 19:
    case 21:
    case 22:
    case 23:
    case 31:
    case 32:
    case 33:
    case 34:
    case 25:
    case 35:
    case 28:
    case 36:
    case 26:
    case 27:
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return paramObject;
            switch ((int)((Long)paramObject).longValue())
            {
            default:
              throw new IllegalArgumentException("Type mismatch");
            case 0:
              return a;
            case 1:
            }
            return b;
          }
          while (!(paramObject instanceof Boolean));
          if (((Boolean)paramObject).booleanValue());
          for (long l = 1L; ; l = 0L)
            return com.google.c.a.b.e.a(l);
          if ((paramObject instanceof String))
            return com.google.c.a.a.d.a((String)paramObject);
        }
        while (!(paramObject instanceof a));
        ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
        try
        {
          ((a)paramObject).a(localByteArrayOutputStream);
          byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
          return arrayOfByte2;
        }
        catch (IOException localIOException2)
        {
          throw new RuntimeException(localIOException2.toString());
        }
      }
      while (!(paramObject instanceof byte[]));
      byte[] arrayOfByte1 = (byte[])paramObject;
      return com.google.c.a.a.d.a(arrayOfByte1, arrayOfByte1.length);
    }
    while (!(paramObject instanceof byte[]));
    if (paramInt2 > 0);
    try
    {
      if (this.d != null);
      for (a locala = new a((c)this.d.b(paramInt2)); ; locala = new a(null))
        return locala.a((byte[])paramObject);
    }
    catch (IOException localIOException1)
    {
      throw new RuntimeException(localIOException1.toString());
    }
  }

  private void a(int paramInt, Object paramObject)
  {
    Object localObject = this.e.a(paramInt);
    boolean bool = localObject instanceof Vector;
    Vector localVector = null;
    if (bool)
      localVector = (Vector)localObject;
    if ((localObject == null) || ((localVector != null) && (localVector.size() == 0)))
    {
      b(paramInt, paramObject);
      return;
    }
    if (localVector == null)
    {
      localVector = new Vector();
      localVector.addElement(localObject);
      this.e.a(paramInt, localVector);
    }
    localVector.addElement(paramObject);
  }

  private Object b(int paramInt1, int paramInt2)
  {
    Object localObject = this.e.a(paramInt1);
    int i = a(localObject);
    if (i == 0)
      return g(paramInt1);
    if (i > 1)
      throw new IllegalArgumentException();
    return a(paramInt1, 0, paramInt2, localObject);
  }

  private void b(int paramInt, Object paramObject)
  {
    if (paramInt < 0)
      throw new ArrayIndexOutOfBoundsException();
    this.e.a(paramInt, paramObject);
  }

  private int d(int paramInt)
  {
    return a(this.e.a(paramInt));
  }

  private a d()
  {
    try
    {
      a locala = new a(this.d);
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      a(localByteArrayOutputStream);
      locala.a(localByteArrayOutputStream.toByteArray());
      return locala;
    }
    catch (IOException localIOException)
    {
    }
    throw new RuntimeException("Could not serialize and parse ProtoBuf.");
  }

  private int e(int paramInt)
  {
    if (this.d != null);
    for (int i = this.d.a(paramInt); ; i = 16)
    {
      Integer localInteger;
      if (i == 16)
        if (this.f != null)
        {
          localInteger = (Integer)this.f.a(paramInt);
          if (localInteger == null)
            break label105;
        }
      label105: for (int j = localInteger.intValue(); ; j = i)
      {
        if ((j == 16) && (d(paramInt) > 0))
        {
          Object localObject = a(paramInt, 0, 16);
          if (((localObject instanceof Long)) || ((localObject instanceof Boolean)))
            j = 0;
        }
        else
        {
          return j;
          localInteger = null;
          break;
        }
        return 2;
      }
    }
  }

  private boolean f(int paramInt)
  {
    int i = e(paramInt);
    return (i == 33) || (i == 34);
  }

  private Object g(int paramInt)
  {
    switch (e(paramInt))
    {
    default:
      if (this.d != null)
        break;
    case 16:
    case 26:
    case 27:
      return null;
    }
    return this.d.b(paramInt);
  }

  public final int a(InputStream paramInputStream, int paramInt)
  {
    return a(paramInputStream, paramInt, true, new b((byte)0));
  }

  public final a a(InputStream paramInputStream)
  {
    a(paramInputStream, 2147483647);
    return this;
  }

  public final void a(int paramInt)
  {
    a(2, com.google.c.a.b.e.a(paramInt));
  }

  public final void a(int paramInt1, int paramInt2)
  {
    a(paramInt1, paramInt2);
  }

  public final void a(int paramInt, long paramLong)
  {
    b(paramInt, com.google.c.a.b.e.a(paramLong));
  }

  public final void a(int paramInt, a parama)
  {
    b(paramInt, parama);
  }

  public final void a(int paramInt, String paramString)
  {
    b(paramInt, paramString);
  }

  public final void a(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean);
    for (Boolean localBoolean = b; ; localBoolean = a)
    {
      b(paramInt, localBoolean);
      return;
    }
  }

  public final void a(a parama)
  {
    a(9, parama);
  }

  final void a(c paramc)
  {
    if (this.e.a() == 0);
    for (int i = 1; (i == 0) || ((this.d != null) && (paramc != null) && (paramc != this.d)); i = 0)
      throw new IllegalArgumentException();
    this.d = paramc;
    this.f = null;
  }

  public final void a(OutputStream paramOutputStream)
  {
    int i = 0;
    com.google.c.a.a.e locale = new com.google.c.a.a.e();
    a(locale);
    int j = locale.a();
    int m;
    for (int k = 0; i < j; k = m)
    {
      m = locale.a(i);
      locale.a(paramOutputStream, k, m - k);
      a(paramOutputStream, locale.a(i + 1));
      i += 2;
    }
    if (k < locale.b())
      locale.a(paramOutputStream, k, locale.b() - k);
  }

  public final void a(String paramString)
  {
    a(5, paramString);
  }

  public final byte[] a()
  {
    return (byte[])b(2, 25);
  }

  public final int b(int paramInt)
  {
    return (int)((Long)b(paramInt, 21)).longValue();
  }

  public final a b()
  {
    return (a)b(1, 26);
  }

  public final String c()
  {
    return (String)b(1, 28);
  }

  public final boolean c(int paramInt)
  {
    if (d(paramInt) > 0);
    for (int i = 1; ; i = 0)
    {
      boolean bool;
      if (i == 0)
      {
        Object localObject = g(paramInt);
        bool = false;
        if (localObject == null);
      }
      else
      {
        bool = true;
      }
      return bool;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.c.a.a.b.a
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.common.q.a;

import com.nianticproject.ingress.common.q.b.b;
import java.io.DataInput;
import java.io.IOException;
import java.util.ArrayList;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

public final class g
{
  private final y a;
  private final i b = new i(this);
  private final h c = new h(this);

  public g(y paramy)
  {
    this.a = paramy;
  }

  private static ArrayList<t> a(DataInput paramDataInput, int paramInt)
  {
    ArrayList localArrayList1 = new ArrayList();
    int i = 0;
    int j;
    if (i < paramInt)
    {
      j = paramDataInput.readUnsignedByte();
      if ((j & 0x1) == 0)
        break label204;
    }
    label204: for (int[] arrayOfInt = f(paramDataInput, aa.a(paramDataInput)); ; arrayOfInt = null)
    {
      if ((j & 0x2) != 0);
      for (ArrayList localArrayList2 = b(paramDataInput, aa.a(paramDataInput)); ; localArrayList2 = null)
      {
        if ((j & 0x4) != 0);
        for (w localw = new w(paramDataInput.readInt(), paramDataInput.readInt(), paramDataInput.readUnsignedByte(), paramDataInput.readShort(), paramDataInput.readShort(), paramDataInput.readUnsignedByte()); ; localw = null)
        {
          if ((j & 0x8) != 0);
          for (v localv = new v(paramDataInput.readInt(), b(paramDataInput)); ; localv = null)
          {
            if ((j & 0x10) != 0);
            for (u localu = b(paramDataInput); ; localu = null)
            {
              localArrayList1.add(new t(arrayOfInt, localArrayList2, localw, localv, localu));
              i++;
              break;
              return localArrayList1;
            }
          }
        }
      }
    }
  }

  private static void a(DataInput paramDataInput)
  {
    new n();
    int i = aa.a(paramDataInput);
    for (int j = 0; j < i; j++)
    {
      a locala = new a();
      locala.a(paramDataInput.readShort(), paramDataInput.readShort());
      int k = paramDataInput.readUnsignedByte();
      if ((k & 0x1) != 0)
        locala.a(aa.a(paramDataInput));
      if ((k & 0x2) != 0)
        locala.a(paramDataInput.readShort(), paramDataInput.readShort(), aa.a(paramDataInput), aa.a(paramDataInput), aa.a(paramDataInput));
    }
    aa.a(paramDataInput);
    aa.a(paramDataInput);
    c(paramDataInput);
    c(paramDataInput);
    ArrayList localArrayList = new ArrayList();
    int m = aa.a(paramDataInput);
    for (int n = 0; n < m; n++)
      localArrayList.add(new c(paramDataInput.readUnsignedByte()));
    paramDataInput.readByte();
    paramDataInput.readByte();
    paramDataInput.readByte();
    int i1 = paramDataInput.readInt();
    d(paramDataInput, i1);
    if ((i1 & 0x20) != 0)
      paramDataInput.readUTF();
    if ((i1 & 0x40) != 0)
      paramDataInput.readUTF();
    if ((i1 & 0x80) != 0)
      paramDataInput.readUTF();
    g(paramDataInput, aa.a(paramDataInput));
  }

  private static void a(DataInput paramDataInput, i parami)
  {
    int i = aa.a(paramDataInput);
    for (int j = 0; j < i; j++)
      parami.a(new short[] { paramDataInput.readShort(), paramDataInput.readShort() });
  }

  private static void a(DataInput paramDataInput, i parami, h paramh)
  {
    int i = aa.a(paramDataInput);
    for (int j = 0; j < i; j++)
      parami.a(new short[] { paramDataInput.readShort(), paramDataInput.readShort(), paramDataInput.readShort() });
    int k = aa.a(paramDataInput);
    for (int m = 0; m < k; m++)
    {
      int[] arrayOfInt1 = new int[1];
      arrayOfInt1[0] = aa.a(paramDataInput);
      int n = paramh.a + arrayOfInt1.length;
      int i1 = paramh.b.length;
      while (n > i1)
        i1 += (i1 >> 1);
      if (i1 != paramh.b.length)
      {
        int[] arrayOfInt3 = new int[i1];
        System.arraycopy(paramh.b, 0, arrayOfInt3, 0, paramh.b.length);
        paramh.b = arrayOfInt3;
      }
      int i2 = arrayOfInt1.length;
      for (int i3 = 0; i3 < i2; i3++)
      {
        int i4 = arrayOfInt1[i3];
        int[] arrayOfInt2 = paramh.b;
        int i5 = paramh.a;
        paramh.a = (i5 + 1);
        arrayOfInt2[i5] = i4;
      }
    }
  }

  private void a(DataInput paramDataInput, x paramx)
  {
    int i = 0;
    int j = aa.a(paramDataInput);
    for (int k = 0; k < j; k++)
      b(paramDataInput, paramx);
    int m = aa.a(paramDataInput);
    if (i < m)
    {
      int n = paramDataInput.readByte();
      if ((n & 0x1) != 0)
      {
        b(paramDataInput, paramx);
        if ((n & 0x2) != 0)
          aa.a(paramDataInput);
      }
      while (true)
      {
        i++;
        break;
        d(paramDataInput, n);
      }
    }
  }

  private static u b(DataInput paramDataInput)
  {
    int i = paramDataInput.readInt();
    int j = paramDataInput.readUnsignedByte();
    int k = aa.a(paramDataInput);
    short[] arrayOfShort = new short[k];
    for (int m = 0; m < k; m++)
      arrayOfShort[m] = paramDataInput.readShort();
    return new u(i, j, arrayOfShort, paramDataInput.readUnsignedByte());
  }

  private static ArrayList<u> b(DataInput paramDataInput, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; i < paramInt; i++)
      localArrayList.add(b(paramDataInput));
    return localArrayList;
  }

  private void b(DataInput paramDataInput, x paramx)
  {
    int i = 0;
    int i2;
    switch (aa.a(paramDataInput))
    {
    case 10:
    default:
      throw new IOException("unknown feature type detected in VectorTile");
    case 1:
      i2 = aa.a(paramDataInput);
    case 2:
      while (i < i2)
      {
        aa.a(paramDataInput);
        i++;
        continue;
        q localq = paramx.a();
        this.b.a = 0;
        a(paramDataInput, this.b);
        localq.a(this.b.a / 2, this.b.b);
        localq.a(aa.a(paramDataInput));
        aa.a(paramDataInput);
        c(paramDataInput, aa.a(paramDataInput));
        aa.a(paramDataInput);
        paramDataInput.readByte();
        d(paramDataInput, paramDataInput.readInt());
        g(paramDataInput, aa.a(paramDataInput));
        localq.a();
      }
      return;
    case 3:
      d locald = paramx.b();
      this.b.a = 0;
      a(paramDataInput, this.b);
      int n = this.b.a >> 1;
      if (n % 3 != 0)
        throw new IOException("malformed triangle list in area, numVertices (" + n + ") not a multiple of 3");
      int i1 = n / 3;
      locald.a(n, this.b.b);
      h(paramDataInput, i1);
      locald.a(aa.a(paramDataInput));
      aa.a(paramDataInput);
      paramDataInput.readByte();
      d(paramDataInput, paramDataInput.readInt());
      g(paramDataInput, aa.a(paramDataInput));
      locald.a();
      return;
    case 4:
      e locale = paramx.c();
      this.b.a = 0;
      a(paramDataInput, this.b);
      int k = this.b.a >> 1;
      if (k % 3 != 0)
        throw new IOException("Malformed footprint triangle list in building. Invalid numFootprintVertices (" + k + ")");
      int m = k / 3;
      locale.a(k, this.b.b);
      this.b.a = 0;
      this.c.a = 0;
      a(paramDataInput, this.b, this.c);
      if (this.b.a % 3 != 0)
        throw new IOException("malformed building triangle list in building.");
      if ((this.b.a / 3 > 0) && (k > 0))
        throw new IOException("malformed building has both 2D and 3D geometry.");
      h(paramDataInput, m);
      aa.a(paramDataInput);
      aa.a(paramDataInput);
      locale.a(aa.a(paramDataInput));
      aa.a(paramDataInput);
      paramDataInput.readByte();
      d(paramDataInput, paramDataInput.readInt());
      g(paramDataInput, aa.a(paramDataInput));
      locale.a();
      return;
    case 5:
      m localm = paramx.d();
      this.b.a = 0;
      a(paramDataInput, this.b);
      localm.a(this.b.a / 2, this.b.b);
      aa.a(paramDataInput);
      aa.a(paramDataInput);
      paramDataInput.readByte();
      d(paramDataInput, paramDataInput.readInt());
      g(paramDataInput, aa.a(paramDataInput));
      localm.a();
      return;
    case 6:
      new o();
      aa.a(paramDataInput);
      int j = paramDataInput.readInt();
      paramDataInput.readFully(new byte[j], 0, j);
      paramDataInput.readByte();
      g(paramDataInput, aa.a(paramDataInput));
      return;
    case 7:
      a(paramDataInput);
      return;
    case 8:
      c(paramDataInput, paramx);
      return;
    case 9:
      new p();
      this.b.a = 0;
      a(paramDataInput, this.b);
      aa.a(paramDataInput);
      aa.a(paramDataInput);
      switch (aa.a(paramDataInput))
      {
      default:
      case 1:
      case 2:
      case 3:
      case 4:
      }
      while (true)
      {
        paramDataInput.readInt();
        g(paramDataInput, aa.a(paramDataInput));
        return;
        continue;
        continue;
      }
    case 11:
    }
    c(paramDataInput, paramx);
  }

  private static byte[] b(com.nianticproject.ingress.common.q.c paramc, byte[] paramArrayOfByte)
  {
    b localb = new b(paramArrayOfByte);
    if (localb.readInt() != 1146241364)
      throw new IOException("corrupted tile data, bad magic.");
    int i = localb.readUnsignedShort();
    if (i != 9)
      throw new IOException("unexpected tile format, wanted v3, got v" + i);
    int j = localb.readInt();
    long l = localb.readLong();
    byte[] arrayOfByte1 = new byte[-18 + paramArrayOfByte.length];
    System.arraycopy(paramArrayOfByte, 18, arrayOfByte1, 0, arrayOfByte1.length);
    int k = arrayOfByte1.length;
    byte[] arrayOfByte2 = z.a(paramc.b(), paramc.c(), paramc.a(), i, j, l);
    z localz = new z();
    localz.a(arrayOfByte2);
    localz.a(arrayOfByte1, 0, k);
    Inflater localInflater = new Inflater(true);
    try
    {
      localInflater.setInput(arrayOfByte1, 0, arrayOfByte1.length);
      Object localObject2 = new byte[4 * arrayOfByte1.length];
      int m = localInflater.inflate((byte[])localObject2);
      while (localInflater.getRemaining() > 0)
      {
        byte[] arrayOfByte3 = new byte[2 * localObject2.length];
        System.arraycopy(localObject2, 0, arrayOfByte3, 0, m);
        int n = localInflater.inflate(arrayOfByte3, m, arrayOfByte3.length - m);
        m += n;
        localObject2 = arrayOfByte3;
      }
      return localObject2;
    }
    catch (DataFormatException localDataFormatException)
    {
      throw new IOException("could not expand tile data: " + localDataFormatException.getMessage());
    }
    finally
    {
      localInflater.end();
    }
  }

  private static j c(DataInput paramDataInput)
  {
    j localj = new j();
    int i = aa.a(paramDataInput);
    int j = 0;
    if (j < i)
    {
      int k = paramDataInput.readUnsignedByte();
      int m = 1;
      int n = k & 0x1;
      String str1 = null;
      if (n != 0)
      {
        str1 = paramDataInput.readUTF();
        m = paramDataInput.readUnsignedByte();
      }
      int i1 = k & 0x2;
      String str2 = null;
      if (i1 != 0)
        str2 = paramDataInput.readUTF();
      int i2 = -1;
      int i3 = -1;
      if ((k & 0x4) != 0)
      {
        i2 = aa.a(paramDataInput);
        i3 = aa.a(paramDataInput);
      }
      int i4 = k & 0x10;
      float f = 0.0F;
      if (i4 != 0)
        f = aa.a(paramDataInput) / 8.0F;
      if (((k & 0x8) != 0) && (k != 8))
      {
        localj.a(new k(k ^ 0x8, str1, m, str2, i2, i3, f));
        localj.a(new k(8, null, 1, null, -1, -1, 0.0F));
      }
      while (true)
      {
        j++;
        break;
        localj.a(new k(k, str1, m, str2, i2, i3, f));
      }
    }
    if (i > 1)
      localj.a(new c(paramDataInput.readUnsignedByte()));
    return localj;
  }

  private static ArrayList<j> c(DataInput paramDataInput, int paramInt)
  {
    for (int i = 0; i < paramInt; i++)
      c(paramDataInput);
    return null;
  }

  private void c(DataInput paramDataInput, x paramx)
  {
    l locall = paramx.e();
    this.b.a = 0;
    a(paramDataInput, this.b);
    locall.a(this.b.a / 2, this.b.b);
    aa.a(paramDataInput);
    aa.a(paramDataInput);
    c(paramDataInput, aa.a(paramDataInput));
    paramDataInput.readByte();
    paramDataInput.readByte();
    d(paramDataInput, paramDataInput.readInt());
    g(paramDataInput, aa.a(paramDataInput));
    locall.a();
  }

  private static f d(DataInput paramDataInput, int paramInt)
  {
    f localf;
    if ((paramInt & 0x1) != 0)
      localf = new f(paramDataInput.readLong(), paramDataInput.readLong());
    int i;
    do
    {
      return localf;
      i = paramInt & 0x2;
      localf = null;
    }
    while (i == 0);
    return new f((0xFFFF & paramDataInput.readShort()) << 32 | 0xFFFFFFFF & paramDataInput.readInt());
  }

  private static ArrayList<String> e(DataInput paramDataInput, int paramInt)
  {
    for (int i = 0; i < paramInt; i++)
      paramDataInput.readUTF();
    return null;
  }

  private static int[] f(DataInput paramDataInput, int paramInt)
  {
    int[] arrayOfInt = new int[paramInt];
    for (int i = 0; i < paramInt; i++)
      arrayOfInt[i] = paramDataInput.readInt();
    return arrayOfInt;
  }

  private static int[] g(DataInput paramDataInput, int paramInt)
  {
    for (int i = 0; i < paramInt; i++)
      aa.a(paramDataInput);
    return null;
  }

  private static byte[] h(DataInput paramDataInput, int paramInt)
  {
    for (int i = 0; i < paramInt; i++)
      paramDataInput.readByte();
    return null;
  }

  public final void a(com.nianticproject.ingress.common.q.c paramc, byte[] paramArrayOfByte)
  {
    b localb;
    try
    {
      localb = new b(b(paramc, paramArrayOfByte));
      if (localb.readInt() != 1146241364)
        throw new IOException("corrupted VectorTile header, bad magic.");
    }
    finally
    {
    }
    int i = aa.a(localb);
    int j = aa.a(localb);
    int k = aa.a(localb);
    if ((paramc.a() != i) && (paramc.b() != j) && (paramc.c() != k))
      throw new IOException("unexpected VectorTile returned, coodinate mismatch.");
    x localx = this.a.a();
    localb.readUnsignedByte();
    e(localb, aa.a(localb));
    e(localb, aa.a(localb));
    localx.a(a(localb, aa.a(localb)));
    e(localb, aa.a(localb));
    a(localb, localx);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.q.a.g
 * JD-Core Version:    0.6.2
 */
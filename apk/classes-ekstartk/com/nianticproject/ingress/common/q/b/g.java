package com.nianticproject.ingress.common.q.b;

import com.google.c.a.a.b.a;
import com.google.i.a.a.a.o;
import com.nianticproject.ingress.common.q.c;
import com.nianticproject.ingress.common.q.d;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;

public class g
  implements e
{
  private final ArrayList<c> a = new ArrayList();
  private final ArrayList<d> b = new ArrayList();
  private int c = -1;

  public final int a()
  {
    return this.a.size();
  }

  public final c a(int paramInt)
  {
    return (c)this.a.get(paramInt);
  }

  public final void a(c paramc)
  {
    synchronized (this.a)
    {
      if (!this.a.contains(paramc))
      {
        this.a.add(paramc);
        this.b.add(null);
      }
      return;
    }
  }

  public final void a(DataInput paramDataInput)
  {
    if (paramDataInput.readUnsignedByte() != 108)
      throw new IOException();
    InputStream localInputStream = com.google.c.a.a.b.e.a(paramDataInput);
    a locala1;
    try
    {
      locala1 = new a(null);
      if (com.google.c.a.a.b.e.a(o.g, localInputStream, locala1) != 1)
        throw new IOException("Missing header.");
    }
    catch (IOException localIOException)
    {
      this.b.clear();
      throw localIOException;
    }
    finally
    {
      localInputStream.close();
    }
    this.c = locala1.b(1);
    a locala2;
    a locala3;
    int j;
    int k;
    int m;
    if (locala1.b(2) != 0)
    {
      throw new IOException("Tile fetch error.");
      locala2 = new a(null);
      if (com.google.c.a.a.b.e.a(o.g, localInputStream, locala2) != -1)
      {
        locala3 = locala2.b();
        j = locala3.b(2);
        k = locala3.b(3);
        m = locala3.b(4);
        if (!locala3.c(8))
          break label277;
      }
    }
    label277: for (int n = locala3.b(8); ; n = -1)
    {
      c localc = (c)this.a.get(i);
      if ((localc.b() != j) && (localc.c() != k) && (localc.a() != m))
        throw new IOException("Tile mismatch in response");
      d locald = new d(localc, n, locala2.a());
      this.b.set(i, locald);
      i++;
      break;
      localInputStream.close();
      return;
      int i = 0;
      break;
    }
  }

  public final void a(DataOutput paramDataOutput)
  {
    a locala1 = new a(o.c);
    a locala2 = new a(o.d);
    locala1.a(1, 256);
    locala1.a(4, 3);
    locala1.a(0);
    locala1.a(11);
    locala2.a(1, locala1);
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      a locala3 = new a(com.google.i.a.a.a.g.i);
      locala3.a(1, 10);
      locala3.a(2, localc.b());
      locala3.a(3, localc.c());
      locala3.a(4, localc.a());
      locala2.a(locala3);
    }
    paramDataOutput.writeByte(108);
    com.google.c.a.a.b.e.a(paramDataOutput, locala2);
  }

  public final d b(int paramInt)
  {
    return (d)this.b.get(paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.q.b.g
 * JD-Core Version:    0.6.2
 */
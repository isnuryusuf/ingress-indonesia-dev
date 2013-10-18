package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class at extends an
  implements ae
{
  public static final p a = new p();
  private final int b;
  private final Parcel c;
  private final int d;
  private final aq e;
  private final String f;
  private int g;
  private int h;

  at(int paramInt, Parcel paramParcel, aq paramaq)
  {
    this.b = paramInt;
    this.c = ((Parcel)gg.a(paramParcel));
    this.d = 2;
    this.e = paramaq;
    if (this.e == null);
    for (this.f = null; ; this.f = this.e.c())
    {
      this.g = 2;
      return;
    }
  }

  private static HashMap<String, String> a(Bundle paramBundle)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localHashMap.put(str, paramBundle.getString(str));
    }
    return localHashMap;
  }

  private static void a(StringBuilder paramStringBuilder, int paramInt, Object paramObject)
  {
    switch (paramInt)
    {
    default:
      throw new IllegalArgumentException("Unknown type = " + paramInt);
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      paramStringBuilder.append(paramObject);
      return;
    case 7:
      paramStringBuilder.append("\"").append(s.a(paramObject.toString())).append("\"");
      return;
    case 8:
      paramStringBuilder.append("\"").append(r.a((byte[])paramObject)).append("\"");
      return;
    case 9:
      paramStringBuilder.append("\"").append(r.b((byte[])paramObject));
      paramStringBuilder.append("\"");
      return;
    case 10:
      t.a(paramStringBuilder, (HashMap)paramObject);
      return;
    case 11:
    }
    throw new IllegalArgumentException("Method does not accept concrete type.");
  }

  private void a(StringBuilder paramStringBuilder, an.a<?, ?> parama, Parcel paramParcel, int paramInt)
  {
    int i = 0;
    if (parama.e())
    {
      paramStringBuilder.append("[");
      int i8;
      int i9;
      Object localObject;
      switch (parama.d())
      {
      default:
        throw new IllegalStateException("Unknown field type out.");
      case 0:
        int i11 = b.a(paramParcel, paramInt);
        int i12 = paramParcel.dataPosition();
        int[] arrayOfInt = null;
        if (i11 == 0);
        while (true)
        {
          int i13 = arrayOfInt.length;
          while (i < i13)
          {
            if (i != 0)
              paramStringBuilder.append(",");
            paramStringBuilder.append(Integer.toString(arrayOfInt[i]));
            i++;
          }
          arrayOfInt = paramParcel.createIntArray();
          paramParcel.setDataPosition(i11 + i12);
        }
      case 1:
        i8 = b.a(paramParcel, paramInt);
        i9 = paramParcel.dataPosition();
        localObject = null;
        if (i8 == 0)
          q.a(paramStringBuilder, (Object[])localObject);
        break;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      }
      while (true)
      {
        paramStringBuilder.append("]");
        return;
        int i10 = paramParcel.readInt();
        localObject = new BigInteger[i10];
        while (i < i10)
        {
          localObject[i] = new BigInteger(paramParcel.createByteArray());
          i++;
        }
        paramParcel.setDataPosition(i8 + i9);
        break;
        int i6 = b.a(paramParcel, paramInt);
        int i7 = paramParcel.dataPosition();
        long[] arrayOfLong = null;
        if (i6 == 0);
        while (true)
        {
          q.a(paramStringBuilder, arrayOfLong);
          break;
          arrayOfLong = paramParcel.createLongArray();
          paramParcel.setDataPosition(i6 + i7);
        }
        int i4 = b.a(paramParcel, paramInt);
        int i5 = paramParcel.dataPosition();
        float[] arrayOfFloat = null;
        if (i4 == 0);
        while (true)
        {
          q.a(paramStringBuilder, arrayOfFloat);
          break;
          arrayOfFloat = paramParcel.createFloatArray();
          paramParcel.setDataPosition(i4 + i5);
        }
        int i2 = b.a(paramParcel, paramInt);
        int i3 = paramParcel.dataPosition();
        double[] arrayOfDouble = null;
        if (i2 == 0);
        while (true)
        {
          q.a(paramStringBuilder, arrayOfDouble);
          break;
          arrayOfDouble = paramParcel.createDoubleArray();
          paramParcel.setDataPosition(i2 + i3);
        }
        q.a(paramStringBuilder, b.p(paramParcel, paramInt));
        continue;
        int n = b.a(paramParcel, paramInt);
        int i1 = paramParcel.dataPosition();
        boolean[] arrayOfBoolean = null;
        if (n == 0);
        while (true)
        {
          q.a(paramStringBuilder, arrayOfBoolean);
          break;
          arrayOfBoolean = paramParcel.createBooleanArray();
          paramParcel.setDataPosition(n + i1);
        }
        q.a(paramStringBuilder, b.q(paramParcel, paramInt));
        continue;
        throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
        Parcel[] arrayOfParcel = b.s(paramParcel, paramInt);
        int k = arrayOfParcel.length;
        for (int m = 0; m < k; m++)
        {
          if (m > 0)
            paramStringBuilder.append(",");
          arrayOfParcel[m].setDataPosition(0);
          a(paramStringBuilder, parama.l(), arrayOfParcel[m]);
        }
      }
    }
    switch (parama.d())
    {
    default:
      throw new IllegalStateException("Unknown field type out");
    case 0:
      paramStringBuilder.append(b.f(paramParcel, paramInt));
      return;
    case 1:
      paramStringBuilder.append(b.h(paramParcel, paramInt));
      return;
    case 2:
      paramStringBuilder.append(b.g(paramParcel, paramInt));
      return;
    case 3:
      paramStringBuilder.append(b.i(paramParcel, paramInt));
      return;
    case 4:
      paramStringBuilder.append(b.j(paramParcel, paramInt));
      return;
    case 5:
      paramStringBuilder.append(b.k(paramParcel, paramInt));
      return;
    case 6:
      paramStringBuilder.append(b.c(paramParcel, paramInt));
      return;
    case 7:
      String str2 = b.l(paramParcel, paramInt);
      paramStringBuilder.append("\"").append(s.a(str2)).append("\"");
      return;
    case 8:
      byte[] arrayOfByte2 = b.o(paramParcel, paramInt);
      paramStringBuilder.append("\"").append(r.a(arrayOfByte2)).append("\"");
      return;
    case 9:
      byte[] arrayOfByte1 = b.o(paramParcel, paramInt);
      paramStringBuilder.append("\"").append(r.b(arrayOfByte1));
      paramStringBuilder.append("\"");
      return;
    case 10:
      Bundle localBundle = b.n(paramParcel, paramInt);
      Set localSet = localBundle.keySet();
      localSet.size();
      paramStringBuilder.append("{");
      Iterator localIterator = localSet.iterator();
      for (int j = 1; localIterator.hasNext(); j = 0)
      {
        String str1 = (String)localIterator.next();
        if (j == 0)
          paramStringBuilder.append(",");
        paramStringBuilder.append("\"").append(str1).append("\"");
        paramStringBuilder.append(":");
        paramStringBuilder.append("\"").append(s.a(localBundle.getString(str1))).append("\"");
      }
      paramStringBuilder.append("}");
      return;
    case 11:
    }
    Parcel localParcel = b.r(paramParcel, paramInt);
    localParcel.setDataPosition(0);
    a(paramStringBuilder, parama.l(), localParcel);
  }

  private static void a(StringBuilder paramStringBuilder, an.a<?, ?> parama, Object paramObject)
  {
    if (parama.c())
    {
      ArrayList localArrayList = (ArrayList)paramObject;
      paramStringBuilder.append("[");
      int i = localArrayList.size();
      for (int j = 0; j < i; j++)
      {
        if (j != 0)
          paramStringBuilder.append(",");
        a(paramStringBuilder, parama.b(), localArrayList.get(j));
      }
      paramStringBuilder.append("]");
      return;
    }
    a(paramStringBuilder, parama.b(), paramObject);
  }

  private void a(StringBuilder paramStringBuilder, HashMap<String, an.a<?, ?>> paramHashMap, Parcel paramParcel)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramHashMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry2 = (Map.Entry)localIterator.next();
      localHashMap.put(Integer.valueOf(((an.a)localEntry2.getValue()).g()), localEntry2);
    }
    paramStringBuilder.append('{');
    int i = b.a(paramParcel);
    int j = 0;
    while (paramParcel.dataPosition() < i)
    {
      int k = paramParcel.readInt();
      Map.Entry localEntry1 = (Map.Entry)localHashMap.get(Integer.valueOf(0xFFFF & k));
      if (localEntry1 != null)
      {
        if (j != 0)
          paramStringBuilder.append(",");
        String str = (String)localEntry1.getKey();
        an.a locala = (an.a)localEntry1.getValue();
        paramStringBuilder.append("\"").append(str).append("\":");
        if (locala.j())
          switch (locala.d())
          {
          default:
            throw new IllegalArgumentException("Unknown field out type = " + locala.d());
          case 0:
            a(paramStringBuilder, locala, a(locala, Integer.valueOf(b.f(paramParcel, k))));
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 10:
          case 11:
          }
        while (true)
        {
          j = 1;
          break;
          a(paramStringBuilder, locala, a(locala, b.h(paramParcel, k)));
          continue;
          a(paramStringBuilder, locala, a(locala, Long.valueOf(b.g(paramParcel, k))));
          continue;
          a(paramStringBuilder, locala, a(locala, Float.valueOf(b.i(paramParcel, k))));
          continue;
          a(paramStringBuilder, locala, a(locala, Double.valueOf(b.j(paramParcel, k))));
          continue;
          a(paramStringBuilder, locala, a(locala, b.k(paramParcel, k)));
          continue;
          a(paramStringBuilder, locala, a(locala, Boolean.valueOf(b.c(paramParcel, k))));
          continue;
          a(paramStringBuilder, locala, a(locala, b.l(paramParcel, k)));
          continue;
          a(paramStringBuilder, locala, a(locala, b.o(paramParcel, k)));
          continue;
          a(paramStringBuilder, locala, a(locala, a(b.n(paramParcel, k))));
          continue;
          throw new IllegalArgumentException("Method does not accept concrete type.");
          a(paramStringBuilder, locala, paramParcel, k);
        }
      }
    }
    if (paramParcel.dataPosition() != i)
      throw new c("Overread allowed size end=" + i, paramParcel);
    paramStringBuilder.append('}');
  }

  public final int a()
  {
    return this.b;
  }

  public final HashMap<String, an.a<?, ?>> b()
  {
    if (this.e == null)
      return null;
    return this.e.a(this.f);
  }

  protected final Object c()
  {
    throw new UnsupportedOperationException("Converting to JSON does not require this method.");
  }

  protected final boolean d()
  {
    throw new UnsupportedOperationException("Converting to JSON does not require this method.");
  }

  public int describeContents()
  {
    return 0;
  }

  public final Parcel e()
  {
    switch (this.g)
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      return this.c;
      this.h = d.a(this.c);
      d.a(this.c, this.h);
      this.g = 2;
    }
  }

  final aq f()
  {
    switch (this.d)
    {
    default:
      throw new IllegalStateException("Invalid creation type: " + this.d);
    case 0:
      return null;
    case 1:
      return this.e;
    case 2:
    }
    return this.e;
  }

  public String toString()
  {
    gg.a(this.e, "Cannot convert to JSON on client side.");
    Parcel localParcel = e();
    localParcel.setDataPosition(0);
    StringBuilder localStringBuilder = new StringBuilder(100);
    a(localStringBuilder, this.e.a(this.f), localParcel);
    return localStringBuilder.toString();
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    p.a(this, paramParcel, paramInt);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.at
 * JD-Core Version:    0.6.2
 */
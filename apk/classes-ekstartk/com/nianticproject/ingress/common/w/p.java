package com.nianticproject.ingress.common.w;

import com.google.a.a.w;
import com.google.a.e.aa;
import com.google.a.e.ab;
import com.google.a.e.u;
import com.google.a.e.z;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

public final class p
{
  private static final byte[][] a = { { 125, 76, -56, 122, -38, 14, -125, -18, -116, 92, 107, -6, 21, 79, 52, 53 }, { 40, -70, 33, 46, -68, 0, 2, -105, 107, -69, -47, 119, -46, -8, -108, -109 }, { -7, 32, 42, 46, 14, -17, -42, -90, -53, 94, -91, -56, -33, 21, -56, 22 }, { -21, -30, -76, 117, -124, 87, 44, -18, 7, -89, 14, 42, -8, -120, 97, -88 }, { -79, 49, -67, 63, -89, 6, 119, -71, -14, -101, 72, -84, -51, 0, 69, 30 }, { 69, -45, 22, -54, 70, -63, -63, -119, -73, -97, -63, 1, -40, 26, -79, -68 }, { 85, -69, -34, -26, 83, -66, 114, -89, 3, 10, -60, -128, -8, 92, 41, 117 }, { 75, -28, 67, 66, -109, -42, -33, -24, -83, -102, 60, -3, -105, -86, -53, 120 }, { -32, 28, 29, -95, -62, -125, -29, -8, -48, -61, 71, -62, -55, 117, -102, -122 }, { 6, 109, -91, 32, 22, 96, -73, -89, 86, -13, -112, -74, -124, 40, -121, -53 } };

  public static boolean a(Collection<String> paramCollection)
  {
    z localz = ab.a();
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      byte[] arrayOfByte = localz.a().a("Ingress" + str, w.c).a().b();
      byte[][] arrayOfByte1 = a;
      int i = arrayOfByte1.length;
      for (int j = 0; j < i; j++)
        if (Arrays.equals(arrayOfByte1[j], arrayOfByte))
          return true;
    }
    return false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.w.p
 * JD-Core Version:    0.6.2
 */
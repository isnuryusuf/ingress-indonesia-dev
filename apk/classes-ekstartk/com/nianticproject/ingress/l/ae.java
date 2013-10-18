package com.nianticproject.ingress.l;

import android.location.GpsStatus;
import android.location.Location;
import com.google.a.a.an;
import com.google.a.c.dc;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.q.b;
import com.nianticproject.ingress.o.a.a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

final class ae
{
  private static final double[] a = { 300.0D, 75.0D, 75.0D, 75.0D, 60.0D, 45.0D, 30.0D, 20.0D, 10.0D, 0.0D };
  private static final boolean l = a.c.a();
  private static final List<String> m = dc.a("gmm", "network");
  private final int b = 300;
  private final double c = 20.0D;
  private final Random d = new Random();
  private ah[] e = b();
  private ah[] f = b();
  private Location g = null;
  private Location h = null;
  private double i;
  private boolean j = false;
  private final ArrayList<Location> k = eq.a();
  private float n = -1.0F;
  private int o = 0;
  private long p = System.nanoTime();
  private final af q = new af(this, (byte)0);

  ae()
  {
    this((byte)0);
  }

  private ae(byte paramByte)
  {
  }

  static double a(Location paramLocation)
  {
    return b.d(3.141592653589793D * paramLocation.getLongitude() / 180.0D);
  }

  private ag a(ArrayList<Location> paramArrayList, List<String> paramList)
  {
    double d1 = 0.0D;
    double d2 = 0.0D;
    double d3 = 0.0D;
    int i1 = 0;
    Location localLocation;
    int i3;
    if (i1 < paramArrayList.size())
    {
      localLocation = (Location)paramArrayList.get(i1);
      String str = localLocation.getProvider();
      if (paramList == null)
        break label204;
      i3 = 0;
      label45: if (i3 >= paramList.size())
        break label204;
      if (!str.startsWith((String)paramList.get(i3)));
    }
    label204: for (int i2 = 1; ; i2 = 0)
    {
      if (i2 == 0)
      {
        double d4 = a(localLocation);
        double d5 = b(localLocation);
        double d6 = c(localLocation);
        double d7 = 1.0D / (d6 * d6);
        d1 += d4 * d7;
        d2 += d5 * d7;
        d3 += d7;
      }
      i1++;
      break;
      i3++;
      break label45;
      if (d3 == 0.0D)
        return null;
      ag localag = new ag((byte)0);
      localag.a = (d1 / d3);
      localag.b = (d2 / d3);
      localag.c = Math.sqrt(1.0D / d3);
      return localag;
    }
  }

  private void a(ArrayList<Location> paramArrayList)
  {
    int i1 = paramArrayList.size();
    double[] arrayOfDouble = new double[i1];
    for (int i2 = 0; i2 < i1; i2++)
    {
      Location localLocation2 = (Location)paramArrayList.get(i2);
      arrayOfDouble[i2] = (localLocation2.getAccuracy() * d(localLocation2));
    }
    int i3 = 0;
    if (i3 < this.b)
    {
      ah localah = this.e[i3];
      int i4 = this.d.nextInt(i1);
      Location localLocation1 = (Location)paramArrayList.get(i4);
      localah.a = (a(localLocation1) + this.d.nextGaussian() * arrayOfDouble[i4]);
      localah.b = (b(localLocation1) + this.d.nextGaussian() * arrayOfDouble[i4]);
      if (this.d.nextDouble() < 0.75D);
      for (boolean bool = true; ; bool = false)
      {
        localah.f = bool;
        localah.c = 0.0D;
        localah.d = 0.0D;
        i3++;
        break;
      }
    }
  }

  static double b(Location paramLocation)
  {
    if (paramLocation.getProvider().equals("gps"))
      return b.e(3.141592653589793D * paramLocation.getLatitude() / 180.0D);
    return b.e(3.141592653589793D * (0.0D + paramLocation.getLatitude()) / 180.0D);
  }

  private static ah[] b()
  {
    ah[] arrayOfah = new ah[300];
    for (int i1 = 0; i1 < arrayOfah.length; i1++)
      arrayOfah[i1] = new ah();
    return arrayOfah;
  }

  private static double d(Location paramLocation)
  {
    return b.a(3.141592653589793D * paramLocation.getLatitude() / 180.0D);
  }

  final Location a(Collection<Location> paramCollection, GpsStatus paramGpsStatus)
  {
    Location localLocation1;
    long l1;
    ArrayList localArrayList;
    while (true)
    {
      try
      {
        int i1 = paramCollection.size();
        if (i1 == 0)
        {
          localLocation1 = null;
          return localLocation1;
        }
        l1 = System.currentTimeMillis();
        this.k.clear();
        Iterator localIterator1 = paramCollection.iterator();
        if (localIterator1.hasNext())
        {
          Location localLocation4 = (Location)localIterator1.next();
          if ((localLocation4 == null) || (localLocation4.getAccuracy() >= 100.0D))
            continue;
          this.k.add(localLocation4);
          continue;
        }
      }
      finally
      {
      }
      if (this.k.size() == 0)
      {
        localLocation1 = null;
      }
      else
      {
        if ((this.g != null) && ((this.g.getTime() - l1) / 1000.0D > 30.0D))
          a(this.k);
        int i2 = 0;
        if (paramGpsStatus != null)
        {
          Iterator localIterator2 = paramGpsStatus.getSatellites().iterator();
          while (localIterator2.hasNext())
          {
            localIterator2.next();
            i2++;
          }
        }
        this.o = i2;
        localArrayList = this.k;
        if (this.j)
          break;
        Location localLocation3 = (Location)localArrayList.get(0);
        double d33 = a(localLocation3);
        double d34 = b(localLocation3);
        for (int i24 = 0; i24 < this.b; i24++)
        {
          ah localah12 = this.e[i24];
          localah12.a = (d33 + (2.0D * this.d.nextDouble() - 1.0D) * this.c);
          localah12.b = (d34 + (2.0D * this.d.nextDouble() - 1.0D) * this.c);
          localah12.e = 0.0D;
        }
        this.j = true;
        localLocation1 = (Location)localArrayList.get(0);
        this.k.clear();
      }
    }
    double d29;
    double d30;
    label400: int i22;
    label409: boolean bool3;
    label516: label702: int i3;
    double d21;
    int i21;
    label767: double d27;
    double d1;
    ag localag2;
    int i4;
    label884: int i5;
    label910: int i6;
    ag localag3;
    label951: double d20;
    label1102: int i7;
    double d2;
    int i8;
    label1152: label1336: int i15;
    label1563: int i16;
    int i17;
    double d8;
    double d7;
    double d6;
    label1665: boolean bool1;
    double d11;
    double d12;
    int i18;
    label1693: double d13;
    double d14;
    if (this.g != null)
    {
      double d28 = d(this.g);
      long l2 = System.nanoTime();
      d29 = (l2 - this.p) / 1000000000.0D;
      if (d29 > 5.0D)
      {
        d30 = 5.0D;
        this.p = l2;
        i22 = 0;
        if (i22 < this.e.length)
        {
          ah localah11 = this.e[i22];
          localah11.a += d28 * (2.0D * (d30 * this.d.nextGaussian()));
          localah11.b += d28 * (2.0D * (d30 * this.d.nextGaussian()));
          if (this.d.nextDouble() >= 0.05D * Math.min(1.0D, d30))
            break label2014;
          if (localah11.f)
            break label2020;
          bool3 = true;
          localah11.f = bool3;
          break label2014;
        }
        if (this.h == null)
          break label2026;
        float f1 = this.n;
        this.n = -1.0F;
        int i23 = 0;
        while (true)
          if (i23 < this.b)
          {
            ah localah10 = this.e[i23];
            double d31 = f1 * (1.0D + 1.0D * this.d.nextGaussian());
            if (d31 > 20.0D)
              d31 = 20.0D;
            double d32 = 3.141592653589793D * (2.0D * this.d.nextDouble());
            localah10.c += d31 * Math.cos(d32);
            localah10.d += d31 * Math.sin(d32);
            localah10.a += d28 * (d30 * localah10.c);
            localah10.b += d28 * (d30 * localah10.d);
            i23++;
            continue;
            if (i3 < localArrayList.size())
            {
              Location localLocation2 = (Location)localArrayList.get(i3);
              if (!localLocation2.getProvider().equals("gps"))
                break label2042;
              d21 = 1.7976931348623157E+308D;
              double d22 = a(localLocation2);
              double d23 = b(localLocation2);
              double d24 = c(localLocation2);
              i21 = 0;
              if (i21 < this.b)
              {
                ah localah9 = this.e[i21];
                double d25 = localah9.a - d22;
                double d26 = localah9.b - d23;
                d27 = Math.sqrt(d25 * d25 + d26 * d26) / d24;
                if (d27 < d21)
                  break label2032;
              }
              else
              {
                if (d21 <= 20.0D)
                  break label2042;
                a(localArrayList);
                break label2042;
              }
            }
            else
            {
              d1 = 1.7976931348623157E+308D;
              ag localag1 = a(localArrayList, null);
              localag2 = a(localArrayList, m);
              i4 = 0;
              break label2048;
              while (true)
                if (i5 < this.b)
                {
                  this.e[i5].e = 0.0D;
                  i5++;
                  continue;
                  if (i6 < this.b)
                  {
                    ah localah8 = this.e[i6];
                    if (localag2 == null)
                      localah8.f = true;
                    if (!localah8.f)
                      break label2077;
                    localag3 = localag1;
                    double d16 = 1.0D / (2.0D * (localag3.c * localag3.c));
                    double d17 = localah8.a - localag3.a;
                    double d18 = localah8.b - localag3.b;
                    double d19 = d17 * d17 + d18 * d18;
                    localah8.e += d16 * -d19;
                    localah8.e += Math.log(1.0D / (6.283185307179586D * localag3.c * localag3.c));
                    d20 = Math.sqrt(d19) / localag3.c;
                    if (d20 < d1)
                      break label2067;
                  }
                  else
                  {
                    if (d1 <= 20.0D)
                      break label2084;
                    a(localArrayList);
                    i4++;
                    break label2048;
                    if (i7 < this.b)
                    {
                      ah localah7 = this.e[i7];
                      Object localObject2;
                      if (localah7.e <= localObject2)
                        break label2114;
                      d2 = localah7.e;
                      break label2114;
                    }
                    double d3 = 0.0D;
                    this.i = 0.0D;
                    i8 = 0;
                    if (i8 < this.b)
                    {
                      ah localah6 = this.e[i8];
                      localah6.e = Math.exp(localah6.e - d2);
                      d3 += localah6.e;
                      if (localah6.e <= this.i)
                        break label2120;
                      this.i = localah6.e;
                      break label2120;
                    }
                    if (d3 > 0.0D)
                    {
                      double d4 = 1.0D / d3;
                      for (int i9 = 0; i9 < this.b; i9++)
                      {
                        ah localah5 = this.e[i9];
                        localah5.e = (d4 * localah5.e);
                      }
                      this.i = (d4 * this.i);
                      break label2126;
                    }
                    double d15 = 1.0D / this.b;
                    for (int i20 = 0; i20 < this.b; i20++)
                      this.e[i20].e = d15;
                    this.i = d15;
                    break label2126;
                    int i11 = this.d.nextInt(this.b);
                    double d5 = 0.0D;
                    int i12 = i11;
                    for (int i13 = 0; i13 < this.b; i13++)
                    {
                      d5 += 2.0D * this.d.nextDouble() * this.i;
                      while ((this.e[i12].e < d5) || (this.e[i12].e == 0.0D))
                      {
                        d5 -= this.e[i12].e;
                        i12++;
                        if (i12 == this.b)
                          i12 = 0;
                      }
                      ah localah3 = this.f[i13];
                      ah localah4 = this.e[i12];
                      localah3.a = localah4.a;
                      localah3.b = localah4.b;
                      localah3.c = localah4.c;
                      localah3.d = localah4.d;
                      localah3.e = localah4.e;
                      localah3.f = localah4.f;
                    }
                    ah[] arrayOfah = this.e;
                    this.e = this.f;
                    this.f = arrayOfah;
                    int i14 = 0;
                    i15 = 0;
                    if (i15 < this.b)
                    {
                      if (!this.e[i15].f)
                        break label2132;
                      i14++;
                      break label2132;
                    }
                    if (i14 <= this.b / 2)
                      break label2159;
                    i16 = 1;
                    break label2138;
                    if (i17 >= this.b)
                      break label2165;
                    ah localah2 = this.e[i17];
                    if (localah2.f != i16)
                      break label2153;
                    Object localObject5;
                    localObject5 += localah2.a;
                    Object localObject4;
                    localObject4 += localah2.b;
                    Object localObject3;
                    localObject3 += 1.0D;
                    break label2153;
                    an.a(bool1);
                    double d9 = d8 / d6;
                    double d10 = d7 / d6;
                    d11 = 0.0D;
                    d12 = 0.0D;
                    i18 = 0;
                    if (i18 < this.b)
                    {
                      ah localah1 = this.e[i18];
                      if (localah1.f != i16)
                        break label2178;
                      d12 += (d9 - localah1.a) * (d9 - localah1.a) + (d10 - localah1.b) * (d10 - localah1.b);
                      d11 += 1.0D;
                      break label2178;
                    }
                    this.h = this.g;
                    this.g = new Location("particle-filter");
                    d13 = 180.0D * b.c(d10) / 3.141592653589793D;
                    d14 = 180.0D * b.b(d9) / 3.141592653589793D;
                    if (d14 > 180.0D)
                    {
                      d14 -= 360.0D;
                      break label2190;
                    }
                  }
                }
            }
          }
      }
    }
    label1952: label2210: 
    while (true)
    {
      label1842: this.g.setTime(l1);
      this.g.setLatitude(d13);
      this.g.setLongitude(d14);
      this.g.setAccuracy((float)(2.0D * Math.sqrt(d12 / d11) / b.a(3.141592653589793D * d13 / 180.0D)));
      if (l)
        c.a(this, localArrayList, this.e, this.b);
      localLocation1 = this.g;
      break;
      int i19;
      if (d14 < -180.0D)
      {
        d14 += 360.0D;
        break label2190;
        boolean bool2 = d13 < -90.0D;
        i19 = 0;
        if (!bool2)
          break label2210;
        d13 = -180.0D - d13;
        i19 = 0;
        break label2210;
      }
      label2014: label2020: label2026: label2032: label2042: 
      do
      {
        d14 += 180.0D;
        break label1842;
        d20 = d1;
        break label2067;
        d27 = d21;
        break label2032;
        d30 = d29;
        break label400;
        i22++;
        break label409;
        bool3 = false;
        break label516;
        i3 = 0;
        break label702;
        i21++;
        d21 = d27;
        break label767;
        i3++;
        break label702;
        if (i4 < 10)
        {
          i5 = 0;
          break label884;
          i6 = 0;
          break label910;
          i6++;
          d1 = d20;
          break label910;
          localag3 = localag2;
          break label951;
        }
        if (i4 == 10);
        for (int i10 = 0; ; i10 = 1)
        {
          if (i10 != 0)
            break label2130;
          localLocation1 = null;
          break;
          d2 = 0.0D;
          i7 = 0;
          break label1102;
          i7++;
          break label1102;
          i8++;
          break label1152;
        }
        break label1336;
        i15++;
        break label1563;
        while (true)
        {
          d6 = 0.0D;
          d7 = 0.0D;
          d8 = 0.0D;
          i17 = 0;
          break;
          i17++;
          break;
          i16 = 0;
        }
        if (d6 > 0.0D)
        {
          bool1 = true;
          break label1665;
          i18++;
          break label1693;
        }
        bool1 = false;
        break label1665;
        if (d13 <= 90.0D)
          break label1952;
        d13 = 180.0D - d13;
        i19 = 1;
        if (i19 == 0)
          break label1842;
      }
      while (d14 <= 0.0D);
      label2084: label2114: label2120: label2126: label2130: label2132: label2138: label2153: label2159: label2165: d14 -= 180.0D;
    }
  }

  public final ab a()
  {
    return this.q;
  }

  final double c(Location paramLocation)
  {
    double d1 = paramLocation.getAccuracy() * d(paramLocation);
    if (paramLocation.getProvider().equals("gps"))
    {
      if (this.o >= a.length);
      for (double d2 = a[(-1 + a.length)]; ; d2 = a[this.o])
      {
        double d3 = d2 * d(paramLocation);
        return Math.sqrt(d3 * d3 + d1 * d1);
      }
    }
    return 1.0D * d1;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.l.ae
 * JD-Core Version:    0.6.2
 */
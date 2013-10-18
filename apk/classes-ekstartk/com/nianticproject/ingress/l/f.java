package com.nianticproject.ingress.l;

import android.content.Context;
import android.database.ContentObserver;
import android.location.GpsSatellite;
import android.location.GpsStatus;
import android.location.GpsStatus.Listener;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings.Secure;
import android.provider.Settings.SettingNotFoundException;
import com.google.a.a.ak;
import com.google.a.c.hc;
import com.nianticproject.ingress.common.s.c;
import com.nianticproject.ingress.common.u.at;
import com.nianticproject.ingress.common.u.au;
import com.nianticproject.ingress.common.u.av;
import com.nianticproject.ingress.common.u.aw;
import com.nianticproject.ingress.common.u.ax;
import com.nianticproject.ingress.common.u.ay;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.common.x;
import com.nianticproject.ingress.ec;
import com.nianticproject.ingress.knobs.ClientFeatureKnobBundle;
import com.nianticproject.ingress.shared.aj;
import com.nianticproject.ingress.shared.handshake.DeviceInfo;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map.Entry;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicReference;

public class f
{
  private static final SimpleDateFormat D = new SimpleDateFormat("MMdd-HH:mm:ss.SSS", Locale.US);
  public static final String a = y.a("network", "cell");
  public static final String b = y.a("network", "wifi");
  private static final boolean c = com.nianticproject.ingress.o.a.a.b.a();
  private static boolean d = false;
  private static int e = 5;
  private static int f = 5000;
  private static d g;
  private static ThreadLocal<Collection<q>> j = new g();
  private static ThreadLocal<ArrayList<Location>> k = new h();
  private static final aa l = new aa(f.class);
  private static f m;
  private final LocationListener A = new u(this, (byte)0);
  private final ae B;
  private final s C = new s(this);
  private boolean h;
  private final AtomicReference<p> i = new AtomicReference();
  private final Context n;
  private final LocationManager o;
  private final ai p;
  private boolean q = false;
  private final WeakHashMap<LocationListener, q> r = new WeakHashMap();
  private final EnumMap<y, Location> s = hc.a(y.class);
  private final EnumMap<y, x> t = hc.a(y.class);
  private GpsStatus u = null;
  private Location v;
  private ContentObserver w;
  private boolean x = false;
  private final LocationListener y = new j(this);
  private final GpsStatus.Listener z = new k(this);

  private f(Context paramContext)
  {
    this.n = paramContext;
    this.B = new ae();
    this.o = ((LocationManager)paramContext.getSystemService("location"));
    this.p = new ai("LocationTracker");
    this.h = c.t();
    this.p.a().post(new l(this));
  }

  private av a(List<Location> paramList)
  {
    aw localaw;
    try
    {
      aj.a("LocationTracker.createSignalLog");
      localaw = av.u();
      for (int i1 = 0; i1 < paramList.size(); i1++)
      {
        ay localay = ax.A();
        Location localLocation1 = (Location)paramList.get(i1);
        y localy = y.a(localLocation1.getProvider());
        x localx = (x)this.t.get(localy);
        if (localx != null)
        {
          float f1 = (float)(6371010.0D * Math.cos(Math.toRadians(localx.g())));
          localay.d(f1 * (float)localx.a());
          localay.e(f1 * (float)localx.b());
          localay.f((float)localx.c());
          localay.g((float)localx.d());
          localay.h((float)localx.e());
          localay.i((float)localx.f());
          localay.a(localx.h());
        }
        localay.a(localLocation1.getProvider());
        localay.a(localLocation1.getAccuracy());
        localay.b((float)localLocation1.getAltitude());
        for (int i2 = i1 + 1; i2 < paramList.size(); i2++)
        {
          Location localLocation2 = (Location)paramList.get(i2);
          localay.c((float)com.nianticproject.ingress.shared.b.a.a(localLocation1.getLatitude(), localLocation1.getLongitude(), localLocation2.getLatitude(), localLocation2.getLongitude()));
        }
        localay.a(localLocation1.getTime());
        localaw.a(localay.c());
      }
      if (this.u != null)
      {
        Iterator localIterator = this.u.getSatellites().iterator();
        while (localIterator.hasNext())
        {
          GpsSatellite localGpsSatellite = (GpsSatellite)localIterator.next();
          localaw.a(localGpsSatellite.getPrn());
          localaw.a(localGpsSatellite.getAzimuth());
        }
      }
    }
    finally
    {
      aj.b();
    }
    localaw.a(System.currentTimeMillis());
    DeviceInfo localDeviceInfo = com.nianticproject.ingress.ab.a();
    if (localDeviceInfo == null);
    at localat;
    for (Object localObject2 = null; ; localObject2 = localat)
    {
      localaw.a((at)localObject2);
      av localav = localaw.c();
      aj.b();
      return localav;
      Boolean localBoolean = localDeviceInfo.a();
      String str1 = localDeviceInfo.b();
      String str2 = localDeviceInfo.c();
      String str3 = localDeviceInfo.d();
      String str4 = localDeviceInfo.e();
      String str5 = localDeviceInfo.f();
      String str6 = localDeviceInfo.g();
      String str7 = localDeviceInfo.h();
      String str8 = localDeviceInfo.i();
      String str9 = localDeviceInfo.j();
      String str10 = localDeviceInfo.k();
      String str11 = localDeviceInfo.l();
      String str12 = localDeviceInfo.m();
      String str13 = localDeviceInfo.n();
      au localau = at.G();
      if (localBoolean != null)
        localau.a(localBoolean.booleanValue());
      if (str1 != null)
        localau.a(str1);
      if (str2 != null)
        localau.b(str2);
      if (str3 != null)
        localau.c(str3);
      if (str4 != null)
        localau.d(str4);
      if (str5 != null)
        localau.e(str5);
      if (str6 != null)
        localau.f(str6);
      if (str7 != null)
        localau.g(str7);
      if (str8 != null)
        localau.h(str8);
      if (str9 != null)
        localau.i(str9);
      if (str10 != null)
        localau.j(str10);
      if (str11 != null)
        localau.k(str11);
      if (str12 != null)
        localau.l(str12);
      if (str13 != null)
        localau.m(str13);
      localat = localau.c();
    }
  }

  public static f a(Context paramContext)
  {
    try
    {
      if (m == null)
        m = new f(paramContext);
      f localf = m;
      return localf;
    }
    finally
    {
    }
  }

  private String a(long paramLong)
  {
    if (this.u == null)
      return "";
    StringBuilder localStringBuilder = new StringBuilder();
    while (true)
    {
      synchronized (this.u)
      {
        Iterator localIterator = this.u.getSatellites().iterator();
        if (!localIterator.hasNext())
          break;
        GpsSatellite localGpsSatellite = (GpsSatellite)localIterator.next();
        localStringBuilder.append(" sat ");
        localStringBuilder.append(localGpsSatellite.getPrn());
        localStringBuilder.append(": SNR ");
        localStringBuilder.append(localGpsSatellite.getSnr());
        localStringBuilder.append(" AZ ");
        localStringBuilder.append(localGpsSatellite.getAzimuth());
        localStringBuilder.append(" EL ");
        localStringBuilder.append(localGpsSatellite.getElevation());
        d locald = g;
        int i1 = localGpsSatellite.getPrn();
        double d1 = localGpsSatellite.getSnr();
        double d2 = localGpsSatellite.getAzimuth();
        double d3 = localGpsSatellite.getElevation();
        if (localGpsSatellite.usedInFix())
        {
          i2 = 1;
          locald.a(i1, paramLong, d1, d2, d3, i2);
        }
      }
      int i2 = 0;
    }
    return localStringBuilder.toString();
  }

  private static String a(Location paramLocation)
  {
    return paramLocation.getProvider() + " : " + D.format(new Date(paramLocation.getTime())) + ", " + paramLocation.getLatitude() + ", " + paramLocation.getLongitude() + ", " + paramLocation.getAccuracy();
  }

  // ERROR //
  private void a(Location paramLocation, av paramav)
  {
    // Byte code:
    //   0: ldc_w 558
    //   3: invokestatic 233	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   6: aload_0
    //   7: getfield 135	com/nianticproject/ingress/l/f:i	Ljava/util/concurrent/atomic/AtomicReference;
    //   10: invokevirtual 560	java/util/concurrent/atomic/AtomicReference:get	()Ljava/lang/Object;
    //   13: astore 4
    //   15: aload 4
    //   17: ifnull +12 -> 29
    //   20: aload_0
    //   21: aload_1
    //   22: putfield 562	com/nianticproject/ingress/l/f:v	Landroid/location/Location;
    //   25: invokestatic 394	com/nianticproject/ingress/shared/aj:b	()V
    //   28: return
    //   29: new 255	android/location/Location
    //   32: dup
    //   33: aload_1
    //   34: invokespecial 565	android/location/Location:<init>	(Landroid/location/Location;)V
    //   37: astore 5
    //   39: aload_0
    //   40: getfield 142	com/nianticproject/ingress/l/f:r	Ljava/util/WeakHashMap;
    //   43: astore 6
    //   45: aload 6
    //   47: monitorenter
    //   48: getstatic 101	com/nianticproject/ingress/l/f:j	Ljava/lang/ThreadLocal;
    //   51: invokevirtual 568	java/lang/ThreadLocal:get	()Ljava/lang/Object;
    //   54: checkcast 570	java/util/Collection
    //   57: invokeinterface 573 1 0
    //   62: getstatic 101	com/nianticproject/ingress/l/f:j	Ljava/lang/ThreadLocal;
    //   65: invokevirtual 568	java/lang/ThreadLocal:get	()Ljava/lang/Object;
    //   68: checkcast 570	java/util/Collection
    //   71: aload_0
    //   72: getfield 142	com/nianticproject/ingress/l/f:r	Ljava/util/WeakHashMap;
    //   75: invokevirtual 577	java/util/WeakHashMap:values	()Ljava/util/Collection;
    //   78: invokeinterface 581 2 0
    //   83: pop
    //   84: aload 6
    //   86: monitorexit
    //   87: getstatic 101	com/nianticproject/ingress/l/f:j	Ljava/lang/ThreadLocal;
    //   90: invokevirtual 568	java/lang/ThreadLocal:get	()Ljava/lang/Object;
    //   93: checkcast 570	java/util/Collection
    //   96: invokeinterface 582 1 0
    //   101: astore 9
    //   103: aload 9
    //   105: invokeinterface 374 1 0
    //   110: ifeq +41 -> 151
    //   113: aload 9
    //   115: invokeinterface 378 1 0
    //   120: checkcast 584	com/nianticproject/ingress/l/q
    //   123: aload 5
    //   125: aload_2
    //   126: invokevirtual 586	com/nianticproject/ingress/l/q:a	(Landroid/location/Location;Lcom/nianticproject/ingress/common/u/av;)V
    //   129: goto -26 -> 103
    //   132: astore_3
    //   133: aload_0
    //   134: aload_1
    //   135: putfield 562	com/nianticproject/ingress/l/f:v	Landroid/location/Location;
    //   138: invokestatic 394	com/nianticproject/ingress/shared/aj:b	()V
    //   141: aload_3
    //   142: athrow
    //   143: astore 7
    //   145: aload 6
    //   147: monitorexit
    //   148: aload 7
    //   150: athrow
    //   151: aload_0
    //   152: aload_1
    //   153: putfield 562	com/nianticproject/ingress/l/f:v	Landroid/location/Location;
    //   156: invokestatic 394	com/nianticproject/ingress/shared/aj:b	()V
    //   159: return
    //
    // Exception table:
    //   from	to	target	type
    //   0	15	132	finally
    //   29	48	132	finally
    //   87	103	132	finally
    //   103	129	132	finally
    //   145	151	132	finally
    //   48	87	143	finally
  }

  private void a(String paramString, Location paramLocation)
  {
    try
    {
      aj.a("LocationTracker.setLocation");
      if (paramLocation == null)
        synchronized (this.s)
        {
          this.s.remove(paramString);
          return;
        }
    }
    finally
    {
      aj.b();
    }
    if (!paramLocation.hasAccuracy())
      paramLocation.setAccuracy(0.0F);
    synchronized (this.s)
    {
      this.s.put(y.a(paramString), paramLocation);
      x localx = (x)this.t.get(y.a(paramString));
      if (localx == null)
      {
        localx = new x();
        this.t.put(y.a(paramString), localx);
      }
      localx.a(paramLocation.getLatitude(), paramLocation.getLongitude(), paramLocation.getAccuracy(), paramLocation.getAltitude(), paramLocation.getTime());
      aj.b();
      return;
    }
  }

  private void g()
  {
    long l1 = System.currentTimeMillis();
    synchronized (this.s)
    {
      Iterator localIterator = this.s.entrySet().iterator();
      while (localIterator.hasNext())
        if (720000L + ((Location)((Map.Entry)localIterator.next()).getValue()).getTime() < l1)
          localIterator.remove();
    }
  }

  // ERROR //
  private ak<Location, av> h()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: ldc_w 810
    //   5: invokestatic 233	com/nianticproject/ingress/shared/aj:a	(Ljava/lang/String;)V
    //   8: getstatic 106	com/nianticproject/ingress/l/f:k	Ljava/lang/ThreadLocal;
    //   11: invokevirtual 568	java/lang/ThreadLocal:get	()Ljava/lang/Object;
    //   14: checkcast 812	java/util/ArrayList
    //   17: astore_3
    //   18: aload_3
    //   19: invokevirtual 813	java/util/ArrayList:clear	()V
    //   22: aload_0
    //   23: getfield 149	com/nianticproject/ingress/l/f:s	Ljava/util/EnumMap;
    //   26: astore 4
    //   28: aload 4
    //   30: monitorenter
    //   31: aload_3
    //   32: aload_0
    //   33: getfield 149	com/nianticproject/ingress/l/f:s	Ljava/util/EnumMap;
    //   36: invokevirtual 814	java/util/EnumMap:values	()Ljava/util/Collection;
    //   39: invokevirtual 815	java/util/ArrayList:addAll	(Ljava/util/Collection;)Z
    //   42: pop
    //   43: aload 4
    //   45: monitorexit
    //   46: getstatic 88	com/nianticproject/ingress/l/f:c	Z
    //   49: ifeq +303 -> 352
    //   52: aload_0
    //   53: getfield 213	com/nianticproject/ingress/l/f:h	Z
    //   56: ifeq +296 -> 352
    //   59: invokestatic 820	com/nianticproject/ingress/common/q:f	()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;
    //   62: invokevirtual 824	com/nianticproject/ingress/knobs/ClientFeatureKnobBundle:c	()Z
    //   65: ifne +287 -> 352
    //   68: invokestatic 820	com/nianticproject/ingress/common/q:f	()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;
    //   71: invokevirtual 826	com/nianticproject/ingress/knobs/ClientFeatureKnobBundle:b	()Z
    //   74: ifeq +278 -> 352
    //   77: aload_0
    //   78: getfield 186	com/nianticproject/ingress/l/f:B	Lcom/nianticproject/ingress/l/ae;
    //   81: aload_3
    //   82: aload_0
    //   83: getfield 153	com/nianticproject/ingress/l/f:u	Landroid/location/GpsStatus;
    //   86: invokevirtual 829	com/nianticproject/ingress/l/ae:a	(Ljava/util/Collection;Landroid/location/GpsStatus;)Landroid/location/Location;
    //   89: astore 7
    //   91: aload 7
    //   93: ifnonnull +246 -> 339
    //   96: aload_0
    //   97: getfield 149	com/nianticproject/ingress/l/f:s	Ljava/util/EnumMap;
    //   100: astore 8
    //   102: aload 8
    //   104: monitorenter
    //   105: aload_0
    //   106: getfield 149	com/nianticproject/ingress/l/f:s	Ljava/util/EnumMap;
    //   109: invokevirtual 710	java/util/EnumMap:entrySet	()Ljava/util/Set;
    //   112: invokeinterface 713 1 0
    //   117: astore 10
    //   119: aload 10
    //   121: invokeinterface 374 1 0
    //   126: ifeq +169 -> 295
    //   129: aload 10
    //   131: invokeinterface 378 1 0
    //   136: checkcast 715	java/util/Map$Entry
    //   139: astore 13
    //   141: invokestatic 820	com/nianticproject/ingress/common/q:f	()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;
    //   144: invokevirtual 824	com/nianticproject/ingress/knobs/ClientFeatureKnobBundle:c	()Z
    //   147: ifne +24 -> 171
    //   150: getstatic 832	com/nianticproject/ingress/l/y:a	Lcom/nianticproject/ingress/l/y;
    //   153: astore 16
    //   155: aload 13
    //   157: invokeinterface 720 1 0
    //   162: astore 17
    //   164: aload 16
    //   166: aload 17
    //   168: if_acmpeq +48 -> 216
    //   171: iconst_1
    //   172: istore 14
    //   174: iload 14
    //   176: ifeq +170 -> 346
    //   179: aload 13
    //   181: ifnull +177 -> 358
    //   184: aload_1
    //   185: ifnonnull +37 -> 222
    //   188: iconst_1
    //   189: istore 15
    //   191: iload 15
    //   193: ifeq +153 -> 346
    //   196: aload 13
    //   198: astore_1
    //   199: goto -80 -> 119
    //   202: astore 5
    //   204: aload 4
    //   206: monitorexit
    //   207: aload 5
    //   209: athrow
    //   210: astore_2
    //   211: invokestatic 394	com/nianticproject/ingress/shared/aj:b	()V
    //   214: aload_2
    //   215: athrow
    //   216: iconst_0
    //   217: istore 14
    //   219: goto -45 -> 174
    //   222: aload 13
    //   224: invokeinterface 726 1 0
    //   229: checkcast 255	android/location/Location
    //   232: invokevirtual 346	android/location/Location:getTime	()J
    //   235: ldc2_w 833
    //   238: aload_1
    //   239: invokeinterface 726 1 0
    //   244: checkcast 255	android/location/Location
    //   247: invokevirtual 346	android/location/Location:getTime	()J
    //   250: ladd
    //   251: lcmp
    //   252: ifle +9 -> 261
    //   255: iconst_1
    //   256: istore 15
    //   258: goto -67 -> 191
    //   261: aload 13
    //   263: invokeinterface 720 1 0
    //   268: checkcast 69	com/nianticproject/ingress/l/y
    //   271: invokevirtual 837	com/nianticproject/ingress/l/y:ordinal	()I
    //   274: aload_1
    //   275: invokeinterface 720 1 0
    //   280: checkcast 69	com/nianticproject/ingress/l/y
    //   283: invokevirtual 837	com/nianticproject/ingress/l/y:ordinal	()I
    //   286: if_icmpge +72 -> 358
    //   289: iconst_1
    //   290: istore 15
    //   292: goto -101 -> 191
    //   295: aload 8
    //   297: monitorexit
    //   298: aload_1
    //   299: ifnull +40 -> 339
    //   302: aload_1
    //   303: invokeinterface 726 1 0
    //   308: checkcast 255	android/location/Location
    //   311: astore 11
    //   313: aload 11
    //   315: aload_0
    //   316: aload_3
    //   317: invokespecial 839	com/nianticproject/ingress/l/f:a	(Ljava/util/List;)Lcom/nianticproject/ingress/common/u/av;
    //   320: invokestatic 842	com/google/a/a/ak:a	(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/a/ak;
    //   323: astore 12
    //   325: invokestatic 394	com/nianticproject/ingress/shared/aj:b	()V
    //   328: aload 12
    //   330: areturn
    //   331: astore 9
    //   333: aload 8
    //   335: monitorexit
    //   336: aload 9
    //   338: athrow
    //   339: aload 7
    //   341: astore 11
    //   343: goto -30 -> 313
    //   346: aload_1
    //   347: astore 13
    //   349: goto -153 -> 196
    //   352: aconst_null
    //   353: astore 7
    //   355: goto -264 -> 91
    //   358: iconst_0
    //   359: istore 15
    //   361: goto -170 -> 191
    //
    // Exception table:
    //   from	to	target	type
    //   31	46	202	finally
    //   2	31	210	finally
    //   46	91	210	finally
    //   96	105	210	finally
    //   204	210	210	finally
    //   302	313	210	finally
    //   313	325	210	finally
    //   333	339	210	finally
    //   105	119	331	finally
    //   119	164	331	finally
    //   222	255	331	finally
    //   261	289	331	finally
    //   295	298	331	finally
  }

  private void i()
  {
    boolean bool = true;
    if ((!com.nianticproject.ingress.o.a.a.a.a()) && ((com.nianticproject.ingress.common.g.p.a().G()) || (ec.d())))
    {
      this.x = bool;
      return;
    }
    try
    {
      int i2 = Settings.Secure.getInt(this.n.getContentResolver(), "mock_location");
      i1 = i2;
      if (i1 == 0)
      {
        this.x = bool;
        return;
      }
    }
    catch (Settings.SettingNotFoundException localSettingNotFoundException)
    {
      while (true)
      {
        int i1 = 0;
        continue;
        bool = false;
      }
    }
  }

  public final ab a()
  {
    if (this.B != null)
      return this.B.a();
    return null;
  }

  public final void a(t paramt)
  {
    Looper localLooper = Looper.myLooper();
    if (localLooper == null)
      localLooper = Looper.getMainLooper();
    synchronized (this.r)
    {
      if (!this.r.containsKey(paramt))
        this.r.put(paramt, new q(this, paramt, localLooper));
      return;
    }
  }

  public final void a(boolean paramBoolean)
  {
    this.h = paramBoolean;
  }

  public final Location b()
  {
    if (this.v != null)
      return this.v;
    Location localLocation = (Location)h().a;
    if (localLocation != null)
      return new Location(localLocation);
    return null;
  }

  public final Location c()
  {
    return this.v;
  }

  public final void d()
  {
    boolean bool1 = true;
    if (!ec.c())
    {
      d = com.nianticproject.ingress.o.a.a.d.a();
      if ((g == null) && (d))
        g = d.a();
      e = com.nianticproject.ingress.o.a.a.e.b();
      f = com.nianticproject.ingress.o.a.a.f.b();
    }
    if (this.i.get() != null);
    while (true)
    {
      synchronized (this.i)
      {
        ((p)this.i.get()).a = true;
        bool2 = ((p)this.i.get()).b;
        this.i.set(null);
        if (!bool2)
          break label285;
        synchronized (this.s)
        {
          if (this.s.size() == 0)
          {
            if (bool1)
              break label202;
            Iterator localIterator1 = this.s.values().iterator();
            if (!localIterator1.hasNext())
              break label202;
            ((Location)localIterator1.next()).setAccuracy(99999.0F);
          }
        }
      }
      bool1 = false;
      continue;
      label202: Iterator localIterator2 = this.t.values().iterator();
      while (localIterator2.hasNext())
        ((x)localIterator2.next()).i();
      if (bool1)
      {
        Location localLocation = this.o.getLastKnownLocation("gps");
        if (localLocation != null)
        {
          localLocation.setAccuracy(99999.0F);
          a(y.a(localLocation), localLocation);
        }
      }
      label285: this.p.a().post(new m(this));
      return;
      boolean bool2 = bool1;
    }
  }

  public final void e()
  {
    if (com.nianticproject.ingress.common.q.f().l())
    {
      if (this.i.get() == null)
      {
        this.i.set(new p(this, (byte)0));
        this.p.a().postDelayed((Runnable)this.i.get(), a.u());
      }
      return;
    }
    this.p.a().post(new n(this));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.l.f
 * JD-Core Version:    0.6.2
 */
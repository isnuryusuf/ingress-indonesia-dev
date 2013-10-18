package com.nianticproject.ingress.l;

import android.content.Context;
import android.hardware.GeomagneticField;
import android.hardware.Sensor;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.location.Location;
import android.util.FloatMath;
import android.view.Display;
import android.view.WindowManager;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.w.y;
import com.nianticproject.ingress.shared.aj;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

public final class z
{
  private static z A;
  private static final float a = FloatMath.sqrt(2.0F) / 2.0F;
  private final ad b;
  private final SensorManager c;
  private final Display d;
  private final Sensor e;
  private final float[] f = new float[3];
  private long g;
  private final Sensor h;
  private final float[] i = new float[3];
  private long j;
  private final Sensor k;
  private final float[] l = new float[4];
  private long m;
  private float n;
  private float o;
  private float p;
  private long q;
  private final WeakHashMap<ac, Void> r = new WeakHashMap();
  private final List<ac> s = eq.a();
  private final List<ab> t = new CopyOnWriteArrayList();
  private final float[] u = new float[9];
  private final float[] v = new float[9];
  private final float[] w = new float[9];
  private final float[] x = new float[3];
  private final a y = new a();
  private final SensorEventListener z = new aa(this);

  private z(Context paramContext, ad paramad)
  {
    this.b = paramad;
    this.c = ((SensorManager)paramContext.getSystemService("sensor"));
    this.e = this.c.getDefaultSensor(10);
    this.h = this.c.getDefaultSensor(2);
    this.k = a(this.c);
    this.d = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
  }

  private static Sensor a(SensorManager paramSensorManager)
  {
    try
    {
      Field localField = Sensor.class.getField("TYPE_ROTATION_VECTOR");
      Sensor localSensor = paramSensorManager.getDefaultSensor(localField.getInt(localField));
      return localSensor;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static z a(Context paramContext, ad paramad)
  {
    try
    {
      if (A == null)
        A = new z(paramContext, paramad);
      z localz = A;
      return localz;
    }
    finally
    {
    }
  }

  private void a(long paramLong, float[] paramArrayOfFloat)
  {
    int i1 = 129;
    int i2 = 2;
    float[] arrayOfFloat;
    switch (this.d.getRotation())
    {
    default:
      i1 = i2;
      i2 = 1;
    case 1:
      arrayOfFloat = this.x;
      if (SensorManager.remapCoordinateSystem(paramArrayOfFloat, i2, i1, this.v))
        break;
    case 3:
    case 2:
    }
    do
    {
      return;
      i1 = 1;
      i2 = 130;
      break;
      i2 = i1;
      i1 = 130;
      break;
      if (this.v[7] <= a)
        break label316;
    }
    while (!SensorManager.remapCoordinateSystem(this.v, 1, 3, this.w));
    SensorManager.getOrientation(this.w, arrayOfFloat);
    float f1 = (float)Math.toDegrees(arrayOfFloat[1]) - 90.0F;
    label146: float f2 = arrayOfFloat[0];
    long l1 = System.currentTimeMillis();
    if (600000L + this.q > l1)
      if (this.b == null)
        break label340;
    label316: label340: for (Location localLocation = this.b.a(); ; localLocation = null)
    {
      if (localLocation != null)
      {
        this.q = l1;
        this.p = new GeomagneticField((float)localLocation.getLatitude(), (float)localLocation.getLongitude(), (float)localLocation.getAltitude(), l1).getDeclination();
      }
      float f3 = y.d(f2 + 0.01745329F * this.p);
      float f4 = this.y.a(paramLong, f3 * 57.29578F);
      if ((Math.abs(f4 - this.n) < 1.0F) && (Math.abs(f1 - this.o) < 1.0F))
        break;
      this.n = f4;
      this.o = f1;
      this.m = paramLong;
      c();
      return;
      SensorManager.getOrientation(this.v, arrayOfFloat);
      f1 = (float)Math.toDegrees(arrayOfFloat[1]);
      break label146;
    }
  }

  private void c()
  {
    synchronized (this.r)
    {
      this.s.addAll(this.r.keySet());
      Iterator localIterator = this.s.iterator();
      if (localIterator.hasNext())
      {
        ac localac = (ac)localIterator.next();
        float f1 = this.n;
        localac.a(f1);
      }
    }
  }

  public final void a()
  {
    try
    {
      aj.a("OrientationTracker.resume");
      if (com.nianticproject.ingress.o.a.a.b.a())
        this.c.registerListener(this.z, this.e, 2);
      if (this.k != null)
        this.c.registerListener(this.z, this.k, 2);
      while (true)
      {
        return;
        this.c.registerListener(this.z, this.h, 2);
        if (!com.nianticproject.ingress.o.a.a.b.a())
          this.c.registerListener(this.z, this.e, 2);
      }
    }
    finally
    {
      aj.b();
    }
  }

  public final void a(ab paramab)
  {
    this.t.add(paramab);
  }

  public final void a(ac paramac)
  {
    synchronized (this.r)
    {
      this.r.put(paramac, null);
      return;
    }
  }

  public final void b()
  {
    try
    {
      aj.a("OrientationTracker.pause");
      this.c.unregisterListener(this.z);
      return;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.l.z
 * JD-Core Version:    0.6.2
 */
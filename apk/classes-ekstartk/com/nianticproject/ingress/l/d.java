package com.nianticproject.ingress.l;

import android.os.Environment;
import com.google.a.a.ab;
import com.google.a.c.dc;
import com.google.a.c.hc;
import com.google.a.d.u;
import com.nianticproject.ingress.ec;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public final class d
{
  private static final List<String> a = dc.a("provider", "date_time", "epoch_ms", "lat", "lng", "alt", "sigma", "last_jump", "sat_num", "snr", "az", "el", new String[] { "used_in_fix" });
  private static final SimpleDateFormat b = new SimpleDateFormat("MMdd-HH:mm:ss.SSS", Locale.US);
  private BufferedWriter c;
  private final Map<String, u> d = hc.b();
  private final String e;

  private d()
  {
    if ((!ec.d()) || (!com.nianticproject.ingress.o.a.a.d.a()))
    {
      this.e = null;
      return;
    }
    File localFile = new File(Environment.getExternalStorageDirectory().getAbsolutePath(), "ingress-loclog.csv");
    this.e = localFile.getAbsolutePath();
    try
    {
      this.c = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(localFile)));
      this.c.write(ab.a(',').a(a));
      this.c.write(10);
      this.c.flush();
      return;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      this.c = null;
      return;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException(localIOException);
    }
  }

  public static d a()
  {
    return e.a;
  }

  private static LinkedHashMap<String, String> b()
  {
    LinkedHashMap localLinkedHashMap = hc.c();
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
      localLinkedHashMap.put((String)localIterator.next(), "");
    return localLinkedHashMap;
  }

  public final void a(int paramInt1, long paramLong, double paramDouble1, double paramDouble2, double paramDouble3, int paramInt2)
  {
    LinkedHashMap localLinkedHashMap = b();
    localLinkedHashMap.put("sat_num", Integer.toString(paramInt1));
    localLinkedHashMap.put("date_time", b.format(new Date(paramLong)));
    localLinkedHashMap.put("epoch_ms", Long.toString(paramLong));
    localLinkedHashMap.put("az", Double.toString(paramDouble2));
    localLinkedHashMap.put("el", Double.toString(paramDouble3));
    localLinkedHashMap.put("snr", Double.toString(paramDouble1));
    localLinkedHashMap.put("used_in_fix", Integer.toString(paramInt2));
    String str = ab.a(',').a(localLinkedHashMap.values());
    try
    {
      this.c.write(str);
      this.c.write(10);
      this.c.flush();
      return;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException(localIOException);
    }
  }

  public final void a(String paramString, long paramLong, double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4)
  {
    if (this.c == null)
      return;
    LinkedHashMap localLinkedHashMap = b();
    localLinkedHashMap.put("provider", paramString);
    localLinkedHashMap.put("date_time", b.format(new Date(paramLong)));
    localLinkedHashMap.put("epoch_ms", Long.toString(paramLong));
    localLinkedHashMap.put("lat", Double.toString(paramDouble1));
    localLinkedHashMap.put("lng", Double.toString(paramDouble2));
    localLinkedHashMap.put("alt", Double.toString(paramDouble3));
    localLinkedHashMap.put("sigma", Double.toString(paramDouble4));
    u localu = (u)this.d.get(paramString);
    if (localu != null);
    for (double d1 = com.nianticproject.ingress.shared.b.a.a(localu.c(), localu.f(), paramDouble1, paramDouble2); ; d1 = -1.0D)
    {
      this.d.put(paramString, u.b(paramDouble1, paramDouble2));
      localLinkedHashMap.put("last_jump", Double.toString(d1));
      String str = ab.a(',').a(localLinkedHashMap.values());
      try
      {
        this.c.write(str);
        this.c.write(10);
        this.c.flush();
        return;
      }
      catch (IOException localIOException)
      {
        throw new RuntimeException(localIOException);
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.l.d
 * JD-Core Version:    0.6.2
 */
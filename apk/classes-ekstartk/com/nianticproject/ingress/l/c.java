package com.nianticproject.ingress.l;

import android.location.Location;
import com.badlogic.gdx.graphics.Color;
import com.google.a.a.ak;
import com.google.a.a.an;
import com.google.a.c.eq;
import com.nianticproject.ingress.common.scanner.visuals.m;
import com.nianticproject.ingress.common.scanner.visuals.o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class c
{
  public static void a(ae paramae, ArrayList<Location> paramArrayList, ah[] paramArrayOfah, int paramInt)
  {
    m localm = m.b();
    if (localm != null)
    {
      localm.c();
      double[] arrayOfDouble1 = new double[paramInt];
      double[] arrayOfDouble2 = new double[paramInt];
      for (int i = 0; i < paramInt; i++)
      {
        ah localah = paramArrayOfah[i];
        arrayOfDouble1[i] = localah.a;
        arrayOfDouble2[i] = localah.b;
      }
      localm.a(ak.a(arrayOfDouble1, arrayOfDouble2));
      ArrayList localArrayList = eq.a();
      Iterator localIterator = paramArrayList.iterator();
      if (localIterator.hasNext())
      {
        Location localLocation = (Location)localIterator.next();
        Color localColor = Color.RED;
        double d = paramae.c(localLocation);
        if (localLocation.getProvider().equals("gps"))
        {
          localColor = Color.GREEN;
          label142: localColor.a = 0.7F;
          an.a(localLocation.hasAccuracy());
          if (localLocation.getAccuracy() <= 0.0F)
            break label228;
        }
        label228: for (boolean bool = true; ; bool = false)
        {
          an.a(bool);
          localArrayList.add(new o(localColor, ae.a(localLocation), ae.b(localLocation), d));
          break;
          if (!localLocation.getProvider().equals("network"))
            break label142;
          localColor = Color.ORANGE;
          break label142;
        }
      }
      localm.a(localArrayList);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.l.c
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.knobs;

import android.content.pm.PackageManager.NameNotFoundException;
import com.nianticproject.ingress.NemesisApplication;
import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.ec;

public class a
  implements b
{
  private static final aa a = new aa(a.class);

  public final int a()
  {
    try
    {
      int i = ec.a(NemesisApplication.a());
      return i;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      a.b(localNameNotFoundException, "NameNotFoundException when attempting to get the application version code. Returning 0 instead.");
    }
    return 0;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.knobs.a
 * JD-Core Version:    0.6.2
 */
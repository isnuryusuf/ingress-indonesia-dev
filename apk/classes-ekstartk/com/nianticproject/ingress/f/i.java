package com.nianticproject.ingress.f;

import android.content.Context;
import com.nianticproject.ingress.shared.rpc.o;

public final class i
{
  public static String a(Context paramContext, o paramo, String paramString)
  {
    if (paramo == null)
      return paramContext.getString(2131296362);
    switch (j.a[paramo.ordinal()])
    {
    default:
      return paramContext.getString(2131296362, new Object[] { paramString });
    case 1:
      return paramContext.getString(2131296363, new Object[] { paramString });
    case 2:
    }
    return paramContext.getString(2131296364, new Object[] { paramString });
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.f.i
 * JD-Core Version:    0.6.2
 */
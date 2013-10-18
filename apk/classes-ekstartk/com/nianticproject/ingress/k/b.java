package com.nianticproject.ingress.k;

import android.content.Context;
import android.content.SharedPreferences;
import com.nianticproject.ingress.shared.aj;
import java.util.concurrent.Callable;

final class b
  implements Callable<SharedPreferences>
{
  b(a parama, Context paramContext)
  {
  }

  private SharedPreferences a()
  {
    try
    {
      aj.a("GetSharedPreferences");
      SharedPreferences localSharedPreferences = this.a.getSharedPreferences(a.b(), 0);
      return localSharedPreferences;
    }
    finally
    {
      aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.k.b
 * JD-Core Version:    0.6.2
 */
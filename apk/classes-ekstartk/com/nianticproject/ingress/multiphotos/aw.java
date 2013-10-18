package com.nianticproject.ingress.multiphotos;

import android.os.Handler;
import java.util.List;
import java.util.Map;

final class aw
  implements Runnable
{
  aw(av paramav, List paramList, Map paramMap, boolean paramBoolean)
  {
  }

  public final void run()
  {
    if ((this.a != null) && (this.a.size() > 0))
      av.a(this.d).a(this.a, this.b);
    av.b(this.d).post(new ax(this));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.multiphotos.aw
 * JD-Core Version:    0.6.2
 */
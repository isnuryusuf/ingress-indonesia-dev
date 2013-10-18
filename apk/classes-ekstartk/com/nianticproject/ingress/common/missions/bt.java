package com.nianticproject.ingress.common.missions;

import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.r;
import com.nianticproject.ingress.common.ui.widget.z;
import java.util.concurrent.atomic.AtomicBoolean;

final class bt
  implements z
{
  private final AtomicBoolean c = new AtomicBoolean(false);

  bt(bp parambp, ca paramca)
  {
  }

  public final void a(float paramFloat1, float paramFloat2)
  {
    if (this.c.compareAndSet(false, true))
    {
      p localp = bp.b(this.b);
      localp.a(true);
      bp.b(this.b).j().b();
      this.b.a(this.a);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.missions.bt
 * JD-Core Version:    0.6.2
 */
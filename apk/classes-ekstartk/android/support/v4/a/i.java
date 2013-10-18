package android.support.v4.a;

import android.os.Process;
import java.util.concurrent.atomic.AtomicBoolean;

final class i extends o<Params, Result>
{
  i(g paramg)
  {
    super((byte)0);
  }

  public final Result call()
  {
    g.a(this.a).set(true);
    Process.setThreadPriority(10);
    g localg1 = this.a;
    g localg2 = this.a;
    return g.a(localg1, localg2.b());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.a.i
 * JD-Core Version:    0.6.2
 */
import android.os.PowerManager.WakeLock;

final class L
  implements Runnable
{
  public final void run()
  {
    if (J.w)
      if (!J.a.isHeld())
        J.a.acquire();
    while (!J.a.isHeld())
      return;
    J.a.release();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     L
 * JD-Core Version:    0.6.2
 */
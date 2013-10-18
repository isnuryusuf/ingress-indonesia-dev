package android.support.v4.app;

import android.os.Handler;
import android.os.Message;

final class g extends Handler
{
  g(FragmentActivity paramFragmentActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      super.handleMessage(paramMessage);
    case 1:
      do
        return;
      while (!this.a.mStopped);
      this.a.doReallyStop(false);
      return;
    case 2:
    }
    this.a.onResumeFragments();
    this.a.mFragments.e();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     android.support.v4.app.g
 * JD-Core Version:    0.6.2
 */
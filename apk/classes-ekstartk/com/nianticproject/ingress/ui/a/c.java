package com.nianticproject.ingress.ui.a;

import android.os.Handler;
import android.os.Looper;
import android.widget.TextView;
import com.google.a.a.an;
import com.nianticproject.ingress.ec;
import java.util.Collection;
import java.util.concurrent.ConcurrentLinkedQueue;

public final class c
  implements b
{
  private final Runnable a = new d(this);
  private final ConcurrentLinkedQueue<TextView> b = new ConcurrentLinkedQueue();
  private final ConcurrentLinkedQueue<CharSequence> c = new ConcurrentLinkedQueue();
  private final Handler d = new Handler(Looper.getMainLooper());
  private a e;
  private b f;

  private void c()
  {
    TextView localTextView = (TextView)this.b.poll();
    if (localTextView == null)
    {
      if (this.f != null)
      {
        b localb = this.f;
        localb.G();
      }
      return;
    }
    this.e = new a(localTextView, (CharSequence)this.c.poll());
    this.e.a(this);
  }

  public final void G()
  {
    this.d.postDelayed(this.a, 1000L);
  }

  public final void a()
  {
    ec.a("completeImmediately");
    if (this.e != null)
      this.e.a();
    while (true)
    {
      TextView localTextView = (TextView)this.b.poll();
      if (localTextView == null)
        break;
      this.e = new a(localTextView, (CharSequence)this.c.poll());
      this.e.a();
    }
  }

  public final void a(b paramb)
  {
    this.f = paramb;
    c();
  }

  public final void a(Collection<TextView> paramCollection, Collection<CharSequence> paramCollection1)
  {
    an.a(paramCollection);
    an.a(paramCollection1);
    if (paramCollection.size() == paramCollection1.size());
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.b.clear();
      this.b.addAll(paramCollection);
      this.c.clear();
      this.c.addAll(paramCollection1);
      return;
    }
  }

  public final void b()
  {
    ec.a("pause");
    this.d.removeCallbacks(this.a);
    if (this.e != null)
      this.e.b();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ui.a.c
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.ui;

final class j
  implements Runnable
{
  private long b;

  private j(CollapsibleLayout paramCollapsibleLayout)
  {
  }

  public final void a()
  {
    if (CollapsibleLayout.a(this.a) > CollapsibleLayout.b(this.a))
      this.a.d();
    while (true)
    {
      this.b = System.currentTimeMillis();
      this.a.removeCallbacks(this);
      this.a.post(this);
      return;
      CollapsibleLayout.c();
    }
  }

  public final void run()
  {
    long l1 = System.currentTimeMillis();
    long l2 = l1 - this.b;
    this.b = l1;
    if (CollapsibleLayout.a(this.a) > CollapsibleLayout.b(this.a))
    {
      CollapsibleLayout.a(this.a, CollapsibleLayout.c(this.a) / 1000.0F * (float)l2);
      if (CollapsibleLayout.b(this.a) > CollapsibleLayout.a(this.a))
        CollapsibleLayout.b(this.a, CollapsibleLayout.a(this.a));
      CollapsibleLayout.b(this.a, Math.min(CollapsibleLayout.d(this.a), Math.max(CollapsibleLayout.e(this.a), CollapsibleLayout.b(this.a))));
      if (CollapsibleLayout.b(this.a) != CollapsibleLayout.a(this.a))
        break label240;
    }
    label240: for (int i = 1; ; i = 0)
    {
      this.a.requestLayout();
      if (i == 0)
        break label254;
      if (CollapsibleLayout.b(this.a) != CollapsibleLayout.d(this.a))
        break label246;
      CollapsibleLayout.f();
      return;
      CollapsibleLayout.c(this.a, CollapsibleLayout.c(this.a) / 1000.0F * (float)l2);
      if (CollapsibleLayout.b(this.a) >= CollapsibleLayout.a(this.a))
        break;
      CollapsibleLayout.b(this.a, CollapsibleLayout.a(this.a));
      break;
    }
    label246: this.a.e();
    return;
    label254: this.a.post(this);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.ui.j
 * JD-Core Version:    0.6.2
 */
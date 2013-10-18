package com.nianticproject.ingress.common.scanner;

import com.google.a.c.eq;
import com.nianticproject.ingress.common.ui.elements.ModalDialog;
import com.nianticproject.ingress.common.ui.elements.aa;
import java.util.Queue;

public final class et
{
  private final aa a = new eu(this);
  private final Queue<ev> b = eq.b();
  private final k c;
  private ModalDialog d = null;

  et(k paramk)
  {
    this.c = paramk;
  }

  final void a()
  {
    if ((this.d == null) && (this.c.v()) && (!this.b.isEmpty()))
    {
      this.d = ((ev)this.b.remove()).a();
      this.d.a(this.a);
      this.c.a(this.d);
    }
  }

  final void a(ev paramev)
  {
    this.b.offer(paramev);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.scanner.et
 * JD-Core Version:    0.6.2
 */
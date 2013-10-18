package com.nianticproject.ingress.common.playerprofile;

import com.google.a.a.ag;
import com.google.a.a.an;
import com.google.a.a.br;
import com.nianticproject.ingress.common.g.p;
import com.nianticproject.ingress.common.model.k;
import com.nianticproject.ingress.shared.playerprofile.AvatarOptions;

final class m
  implements ay, az, s
{
  private final String a;
  private final o b;
  private final ax c;
  private final k d;

  public m(String paramString, o paramo, ax paramax, k paramk)
  {
    if (!br.b(paramString));
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.a = paramString;
      this.b = ((o)an.a(paramo));
      this.c = ((ax)an.a(paramax));
      this.d = ((k)an.a(paramk));
      paramo.a(this);
      return;
    }
  }

  public final void a()
  {
    this.b.a(t.d);
    j localj = this.b.a();
    if (ag.a(localj, this.d.r()))
    {
      b();
      return;
    }
    this.c.a(this.a, localj, this);
  }

  public final void a(t paramt)
  {
    switch (n.a[paramt.ordinal()])
    {
    default:
      throw new IllegalStateException();
    case 1:
      e();
      return;
    case 2:
    }
    a();
  }

  public final void a(AvatarOptions paramAvatarOptions)
  {
    this.b.a(paramAvatarOptions);
    this.b.a(t.c);
  }

  public final void b()
  {
    this.d.a(this.b.a());
    p.a().n().d();
  }

  public final void c()
  {
    this.b.a(t.e);
  }

  public final void d()
  {
    this.b.a(t.b);
  }

  public final void e()
  {
    this.b.a(t.a);
    this.c.a(this);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.playerprofile.m
 * JD-Core Version:    0.6.2
 */
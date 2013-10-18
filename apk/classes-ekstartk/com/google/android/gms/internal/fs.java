package com.google.android.gms.internal;

import android.content.ComponentName;
import android.os.IBinder;
import java.util.HashSet;

final class fs
{
  private final String b;
  private final ft c;
  private final HashSet<fl<?>.fp> d;
  private int e;
  private boolean f;
  private IBinder g;
  private ComponentName h;

  public fs(fr paramfr, String paramString)
  {
    this.b = paramString;
    this.c = new ft(this);
    this.d = new HashSet();
    this.e = 0;
  }

  public final ft a()
  {
    return this.c;
  }

  public final void a(fl<?>.fp paramfl)
  {
    this.d.add(paramfl);
  }

  public final void a(boolean paramBoolean)
  {
    this.f = paramBoolean;
  }

  public final String b()
  {
    return this.b;
  }

  public final void b(fl<?>.fp paramfl)
  {
    this.d.remove(paramfl);
  }

  public final boolean c()
  {
    return this.f;
  }

  public final boolean c(fl<?>.fp paramfl)
  {
    return this.d.contains(paramfl);
  }

  public final int d()
  {
    return this.e;
  }

  public final boolean e()
  {
    return this.d.isEmpty();
  }

  public final IBinder f()
  {
    return this.g;
  }

  public final ComponentName g()
  {
    return this.h;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.fs
 * JD-Core Version:    0.6.2
 */
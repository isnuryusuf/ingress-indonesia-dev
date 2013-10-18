package com.nianticproject.ingress.common.f;

import com.google.a.a.ba;
import java.util.concurrent.Executor;

public abstract class h extends a<Void, Void>
{
  private static final Executor a = new i();

  public h()
  {
    super(a);
  }

  public final a<Void, Void> a(ba<Void> paramba)
  {
    throw new UnsupportedOperationException("BackgroundTask cannot have a callback.");
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.f.h
 * JD-Core Version:    0.6.2
 */
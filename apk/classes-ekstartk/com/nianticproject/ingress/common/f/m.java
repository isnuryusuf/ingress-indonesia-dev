package com.nianticproject.ingress.common.f;

import com.nianticproject.ingress.common.x.f;
import com.nianticproject.ingress.common.x.i;
import java.util.concurrent.Executor;

public abstract class m<Result> extends a<Void, Result>
{
  private static final Executor a = new n();

  public m()
  {
    super(a);
  }

  protected final void a(Result paramResult)
  {
    f localf = c(paramResult);
    if (localf != null)
      i.a().a(localf);
  }

  protected abstract f c(Result paramResult);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.f.m
 * JD-Core Version:    0.6.2
 */
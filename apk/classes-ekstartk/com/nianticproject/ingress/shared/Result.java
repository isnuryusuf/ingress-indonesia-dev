package com.nianticproject.ingress.shared;

import com.google.a.a.an;
import org.codehaus.jackson.annotate.JsonProperty;

public class Result<R, E>
{

  @JsonProperty
  private final E error;

  @JsonProperty
  private final R result;

  private Result()
  {
    this.result = null;
    this.error = null;
  }

  private Result(R paramR, E paramE)
  {
    this.result = paramR;
    this.error = paramE;
  }

  public static <E> Result<Void, E> a()
  {
    return new Result(null, null);
  }

  public static <R, E> Result<R, E> a(R paramR)
  {
    return new Result(paramR, null);
  }

  public static <R, E> Result<R, E> b(E paramE)
  {
    an.a(paramE);
    return new Result(null, paramE);
  }

  public final <W> Result<W, E> b()
  {
    if (!e());
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool);
      return this;
    }
  }

  public final R c()
  {
    return this.result;
  }

  public final E d()
  {
    return this.error;
  }

  public final boolean e()
  {
    return this.error == null;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append(this.result);
    if (this.error == null);
    for (String str = ""; ; str = " [" + this.error + "]")
      return str;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.Result
 * JD-Core Version:    0.6.2
 */
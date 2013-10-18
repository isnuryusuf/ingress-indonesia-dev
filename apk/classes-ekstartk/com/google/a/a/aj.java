package com.google.a.a;

import java.io.Serializable;

public abstract class aj<T>
  implements Serializable
{
  public static <T> aj<T> b(T paramT)
  {
    return new az(an.a(paramT));
  }

  public static <T> aj<T> c(T paramT)
  {
    if (paramT == null)
      return a.a;
    return new az(paramT);
  }

  public static <T> aj<T> d()
  {
    return a.a;
  }

  public abstract T a(T paramT);

  public abstract boolean a();

  public abstract T b();

  public abstract T c();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.aj
 * JD-Core Version:    0.6.2
 */
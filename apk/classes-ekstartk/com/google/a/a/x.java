package com.google.a.a;

public abstract class x<T>
{
  public static x<Object> a()
  {
    return y.a;
  }

  public static x<Object> b()
  {
    return z.a;
  }

  public final int a(T paramT)
  {
    if (paramT == null)
      return 0;
    return b(paramT);
  }

  public final boolean a(T paramT1, T paramT2)
  {
    if (paramT1 == paramT2)
      return true;
    if ((paramT1 == null) || (paramT2 == null))
      return false;
    return b(paramT1, paramT2);
  }

  protected abstract int b(T paramT);

  protected abstract boolean b(T paramT1, T paramT2);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.x
 * JD-Core Version:    0.6.2
 */
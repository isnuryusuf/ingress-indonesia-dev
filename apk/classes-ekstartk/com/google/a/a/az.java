package com.google.a.a;

final class az<T> extends aj<T>
{
  private final T a;

  az(T paramT)
  {
    this.a = paramT;
  }

  public final T a(T paramT)
  {
    an.a(paramT, "use Optional.orNull() instead of Optional.or(null)");
    return this.a;
  }

  public final boolean a()
  {
    return true;
  }

  public final T b()
  {
    return this.a;
  }

  public final T c()
  {
    return this.a;
  }

  public final boolean equals(Object paramObject)
  {
    if ((paramObject instanceof az))
    {
      az localaz = (az)paramObject;
      return this.a.equals(localaz.a);
    }
    return false;
  }

  public final int hashCode()
  {
    return 1502476572 + this.a.hashCode();
  }

  public final String toString()
  {
    return "Optional.of(" + this.a + ")";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.az
 * JD-Core Version:    0.6.2
 */
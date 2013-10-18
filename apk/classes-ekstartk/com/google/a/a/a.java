package com.google.a.a;

final class a extends aj<Object>
{
  static final a a = new a();

  public final Object a(Object paramObject)
  {
    return an.a(paramObject, "use Optional.orNull() instead of Optional.or(null)");
  }

  public final boolean a()
  {
    return false;
  }

  public final Object b()
  {
    throw new IllegalStateException("Optional.get() cannot be called on an absent value");
  }

  public final Object c()
  {
    return null;
  }

  public final boolean equals(Object paramObject)
  {
    return paramObject == this;
  }

  public final int hashCode()
  {
    return 1502476572;
  }

  public final String toString()
  {
    return "Optional.absent()";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.a
 * JD-Core Version:    0.6.2
 */
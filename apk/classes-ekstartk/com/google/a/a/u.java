package com.google.a.a;

final class u extends f
{
  final f p;
  final f q;

  u(f paramf1, f paramf2)
  {
    this(paramf1, paramf2, "CharMatcher.or(" + paramf1 + ", " + paramf2 + ")");
  }

  private u(f paramf1, f paramf2, String paramString)
  {
    super(paramString);
    this.p = ((f)an.a(paramf1));
    this.q = ((f)an.a(paramf2));
  }

  final f a(String paramString)
  {
    return new u(this.p, this.q, paramString);
  }

  public final boolean b(char paramChar)
  {
    return (this.p.b(paramChar)) || (this.q.b(paramChar));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.u
 * JD-Core Version:    0.6.2
 */
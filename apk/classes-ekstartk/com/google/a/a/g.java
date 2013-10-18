package com.google.a.a;

final class g extends f
{
  public final boolean b(char paramChar)
  {
    switch (paramChar)
    {
    default:
      if ((paramChar < ' ') || (paramChar > ' '))
        break;
    case '\t':
    case '\n':
    case '\013':
    case '\f':
    case '\r':
    case ' ':
    case '':
    case ' ':
    case ' ':
    case ' ':
    case ' ':
    case '　':
      return true;
    case ' ':
      return false;
    }
    return false;
  }

  public final String toString()
  {
    return "CharMatcher.BREAKING_WHITESPACE";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.g
 * JD-Core Version:    0.6.2
 */
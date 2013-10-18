package com.google.a.a;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class bb
{
  private final f a;
  private final boolean b;
  private final bi c;
  private final int d;

  private bb(bi parambi)
  {
    this(parambi, false, f.m, 2147483647);
  }

  private bb(bi parambi, boolean paramBoolean, f paramf, int paramInt)
  {
    this.c = parambi;
    this.b = paramBoolean;
    this.a = paramf;
    this.d = paramInt;
  }

  public static bb a(char paramChar)
  {
    return a(f.a(paramChar));
  }

  public static bb a(f paramf)
  {
    an.a(paramf);
    return new bb(new bc(paramf));
  }

  public static bb a(String paramString)
  {
    if (paramString.length() != 0);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "The separator may not be the empty string.");
      return new bb(new be(paramString));
    }
  }

  private Iterator<String> c(CharSequence paramCharSequence)
  {
    return this.c.a(this, paramCharSequence);
  }

  public final bb a()
  {
    return new bb(this.c, true, this.a, this.d);
  }

  public final Iterable<String> a(CharSequence paramCharSequence)
  {
    an.a(paramCharSequence);
    return new bg(this, paramCharSequence);
  }

  public final List<String> b(CharSequence paramCharSequence)
  {
    an.a(paramCharSequence);
    Iterator localIterator = c(paramCharSequence);
    ArrayList localArrayList = new ArrayList();
    while (localIterator.hasNext())
      localArrayList.add(localIterator.next());
    return Collections.unmodifiableList(localArrayList);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.bb
 * JD-Core Version:    0.6.2
 */
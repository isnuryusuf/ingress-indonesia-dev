package com.google.a.a;

import java.io.IOException;
import java.util.Iterator;

public class ab
{
  private final String a;

  private ab(ab paramab)
  {
    this.a = paramab.a;
  }

  private ab(String paramString)
  {
    this.a = ((String)an.a(paramString));
  }

  public static ab a(char paramChar)
  {
    return new ab(String.valueOf(paramChar));
  }

  public static ab a(String paramString)
  {
    return new ab(paramString);
  }

  public ab a()
  {
    return new ad(this, this);
  }

  public <A extends Appendable> A a(A paramA, Iterator<?> paramIterator)
  {
    an.a(paramA);
    if (paramIterator.hasNext())
    {
      paramA.append(a(paramIterator.next()));
      while (paramIterator.hasNext())
      {
        paramA.append(this.a);
        paramA.append(a(paramIterator.next()));
      }
    }
    return paramA;
  }

  CharSequence a(Object paramObject)
  {
    an.a(paramObject);
    if ((paramObject instanceof CharSequence))
      return (CharSequence)paramObject;
    return paramObject.toString();
  }

  public final String a(Iterable<?> paramIterable)
  {
    Iterator localIterator = paramIterable.iterator();
    return a(new StringBuilder(), localIterator).toString();
  }

  public final String a(Object paramObject1, Object paramObject2, Object[] paramArrayOfObject)
  {
    an.a(paramArrayOfObject);
    return a(new ae(paramArrayOfObject, paramObject1, paramObject2));
  }

  public final StringBuilder a(StringBuilder paramStringBuilder, Iterator<?> paramIterator)
  {
    try
    {
      a(paramStringBuilder, paramIterator);
      return paramStringBuilder;
    }
    catch (IOException localIOException)
    {
      throw new AssertionError(localIOException);
    }
  }

  public ab b(String paramString)
  {
    an.a(paramString);
    return new ac(this, this, paramString);
  }

  public af c(String paramString)
  {
    return new af(this, paramString, (byte)0);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.ab
 * JD-Core Version:    0.6.2
 */
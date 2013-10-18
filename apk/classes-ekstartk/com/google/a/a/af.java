package com.google.a.a;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map.Entry;

public final class af
{
  private final ab a;
  private final String b;

  private af(ab paramab, String paramString)
  {
    this.a = paramab;
    this.b = ((String)an.a(paramString));
  }

  public final StringBuilder a(StringBuilder paramStringBuilder, Iterator<? extends Map.Entry<?, ?>> paramIterator)
  {
    try
    {
      an.a(paramStringBuilder);
      if (paramIterator.hasNext())
      {
        Map.Entry localEntry1 = (Map.Entry)paramIterator.next();
        paramStringBuilder.append(this.a.a(localEntry1.getKey()));
        paramStringBuilder.append(this.b);
        paramStringBuilder.append(this.a.a(localEntry1.getValue()));
        while (paramIterator.hasNext())
        {
          paramStringBuilder.append(ab.a(this.a));
          Map.Entry localEntry2 = (Map.Entry)paramIterator.next();
          paramStringBuilder.append(this.a.a(localEntry2.getKey()));
          paramStringBuilder.append(this.b);
          paramStringBuilder.append(this.a.a(localEntry2.getValue()));
        }
      }
    }
    catch (IOException localIOException)
    {
      throw new AssertionError(localIOException);
    }
    return paramStringBuilder;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.a.af
 * JD-Core Version:    0.6.2
 */
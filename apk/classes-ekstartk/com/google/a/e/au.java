package com.google.a.e;

import com.google.a.a.an;
import java.io.Serializable;

final class au extends f
  implements Serializable
{
  private final int a;
  private final int b;
  private final long c;
  private final long d;

  au()
  {
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(2);
    an.a(true, "The number of SipRound iterations (c=%s) during Compression must be positive.", arrayOfObject1);
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Integer.valueOf(4);
    an.a(true, "The number of SipRound iterations (d=%s) during Finalization must be positive.", arrayOfObject2);
    this.a = 2;
    this.b = 4;
    this.c = 506097522914230528L;
    this.d = 1084818905618843912L;
  }

  public final aa a()
  {
    return new av(this.a, this.b, this.c, this.d);
  }

  public final String toString()
  {
    return "Hashing.sipHash" + this.a + this.b + "(" + this.c + ", " + this.d + ")";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.google.a.e.au
 * JD-Core Version:    0.6.2
 */
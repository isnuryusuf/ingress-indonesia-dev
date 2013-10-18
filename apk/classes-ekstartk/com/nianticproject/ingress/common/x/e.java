package com.nianticproject.ingress.common.x;

import com.google.a.a.an;
import java.util.LinkedList;

final class e
  implements f
{
  f a;

  private e(d paramd)
  {
  }

  public final f a(p paramp)
  {
    synchronized (d.a(this.b))
    {
      if (d.a(this.b).removeFirst() == this)
      {
        bool = true;
        an.b(bool);
        return this.a;
      }
      boolean bool = false;
    }
  }

  public final String n_()
  {
    return this.a.n_();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.x.e
 * JD-Core Version:    0.6.2
 */
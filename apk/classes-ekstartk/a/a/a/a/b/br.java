package a.a.a.a.b;

import a.a.a.a.e;
import java.util.Map.Entry;

final class br
  implements bj<V>, Map.Entry<Long, V>
{
  private int b;

  br(bl parambl, int paramInt)
  {
    this.b = paramInt;
  }

  public final long a()
  {
    return this.a.b[this.b];
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry))
      return false;
    Map.Entry localEntry = (Map.Entry)paramObject;
    if (this.a.b[this.b] == ((Long)localEntry.getKey()).longValue())
      if (this.a.c[this.b] == null)
      {
        if (localEntry.getValue() != null);
      }
      else
        while (this.a.c[this.b].equals(localEntry.getValue()))
          return true;
    return false;
  }

  public final V getValue()
  {
    return this.a.c[this.b];
  }

  public final int hashCode()
  {
    int i = e.b(this.a.b[this.b]);
    if (this.a.c[this.b] == null);
    for (int j = 0; ; j = this.a.c[this.b].hashCode())
      return j ^ i;
  }

  public final V setValue(V paramV)
  {
    Object localObject = this.a.c[this.b];
    this.a.c[this.b] = paramV;
    return localObject;
  }

  public final String toString()
  {
    return this.a.b[this.b] + "=>" + this.a.c[this.b];
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.br
 * JD-Core Version:    0.6.2
 */
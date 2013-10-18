package a.a.a.a.b;

import a.a.a.a.e;
import java.util.Map.Entry;

final class al
  implements ae, Map.Entry<Long, Long>
{
  private int b;

  al(ag paramag, int paramInt)
  {
    this.b = paramInt;
  }

  public final long a()
  {
    return this.a.b[this.b];
  }

  public final long b()
  {
    return this.a.c[this.b];
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry))
      return false;
    Map.Entry localEntry = (Map.Entry)paramObject;
    return (this.a.b[this.b] == ((Long)localEntry.getKey()).longValue()) && (this.a.c[this.b] == ((Long)localEntry.getValue()).longValue());
  }

  public final int hashCode()
  {
    return e.b(this.a.b[this.b]) ^ e.b(this.a.c[this.b]);
  }

  public final String toString()
  {
    return this.a.b[this.b] + "=>" + this.a.c[this.b];
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     a.a.a.a.b.al
 * JD-Core Version:    0.6.2
 */
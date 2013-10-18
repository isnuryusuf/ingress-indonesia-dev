package org.codehaus.jackson.sym;

final class BytesToNameCanonicalizer$Bucket
{
  protected final Name _name;
  protected final Bucket _next;

  BytesToNameCanonicalizer$Bucket(Name paramName, Bucket paramBucket)
  {
    this._name = paramName;
    this._next = paramBucket;
  }

  public final Name find(int paramInt1, int paramInt2, int paramInt3)
  {
    Name localName;
    if ((this._name.hashCode() == paramInt1) && (this._name.equals(paramInt2, paramInt3)))
    {
      localName = this._name;
      return localName;
    }
    for (Bucket localBucket = this._next; ; localBucket = localBucket._next)
    {
      if (localBucket == null)
        break label79;
      localName = localBucket._name;
      if ((localName.hashCode() == paramInt1) && (localName.equals(paramInt2, paramInt3)))
        break;
    }
    label79: return null;
  }

  public final Name find(int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    Name localName;
    if ((this._name.hashCode() == paramInt1) && (this._name.equals(paramArrayOfInt, paramInt2)))
    {
      localName = this._name;
      return localName;
    }
    for (Bucket localBucket = this._next; ; localBucket = localBucket._next)
    {
      if (localBucket == null)
        break label79;
      localName = localBucket._name;
      if ((localName.hashCode() == paramInt1) && (localName.equals(paramArrayOfInt, paramInt2)))
        break;
    }
    label79: return null;
  }

  public final int length()
  {
    int i = 1;
    for (Bucket localBucket = this._next; localBucket != null; localBucket = localBucket._next)
      i++;
    return i;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.sym.BytesToNameCanonicalizer.Bucket
 * JD-Core Version:    0.6.2
 */
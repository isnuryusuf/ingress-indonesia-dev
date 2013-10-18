package org.codehaus.jackson.map.util;

import java.util.Collection;

public abstract interface Provider<T>
{
  public abstract Collection<T> provide();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.util.Provider
 * JD-Core Version:    0.6.2
 */
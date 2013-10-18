package org.codehaus.jackson.map.util;

import java.lang.reflect.Array;

public class Comparators
{
  public static Object getArrayComparator(Object paramObject)
  {
    return new Comparators.1(paramObject, Array.getLength(paramObject));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.util.Comparators
 * JD-Core Version:    0.6.2
 */
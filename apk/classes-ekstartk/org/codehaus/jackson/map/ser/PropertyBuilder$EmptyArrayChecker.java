package org.codehaus.jackson.map.ser;

import java.lang.reflect.Array;

public class PropertyBuilder$EmptyArrayChecker
{
  public boolean equals(Object paramObject)
  {
    return (paramObject == null) || (Array.getLength(paramObject) == 0);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.PropertyBuilder.EmptyArrayChecker
 * JD-Core Version:    0.6.2
 */
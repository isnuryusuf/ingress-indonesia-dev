package org.codehaus.jackson.map.introspect;

import java.lang.reflect.Method;

public abstract interface MethodFilter
{
  public abstract boolean includeMethod(Method paramMethod);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.introspect.MethodFilter
 * JD-Core Version:    0.6.2
 */
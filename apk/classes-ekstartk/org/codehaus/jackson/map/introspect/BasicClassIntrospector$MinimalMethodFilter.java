package org.codehaus.jackson.map.introspect;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

class BasicClassIntrospector$MinimalMethodFilter
  implements MethodFilter
{
  public boolean includeMethod(Method paramMethod)
  {
    if (Modifier.isStatic(paramMethod.getModifiers()));
    while (paramMethod.getParameterTypes().length > 2)
      return false;
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.introspect.BasicClassIntrospector.MinimalMethodFilter
 * JD-Core Version:    0.6.2
 */
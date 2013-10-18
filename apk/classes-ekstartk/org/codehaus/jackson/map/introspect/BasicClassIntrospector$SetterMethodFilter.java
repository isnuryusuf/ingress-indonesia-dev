package org.codehaus.jackson.map.introspect;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

@Deprecated
public class BasicClassIntrospector$SetterMethodFilter
  implements MethodFilter
{
  public boolean includeMethod(Method paramMethod)
  {
    if (Modifier.isStatic(paramMethod.getModifiers()))
      return false;
    switch (paramMethod.getParameterTypes().length)
    {
    default:
      return false;
    case 1:
      return true;
    case 2:
    }
    return true;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.introspect.BasicClassIntrospector.SetterMethodFilter
 * JD-Core Version:    0.6.2
 */
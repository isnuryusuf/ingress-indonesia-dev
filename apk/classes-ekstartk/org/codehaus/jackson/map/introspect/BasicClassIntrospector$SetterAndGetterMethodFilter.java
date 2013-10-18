package org.codehaus.jackson.map.introspect;

import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Map;
import org.codehaus.jackson.map.util.ClassUtil;

@Deprecated
public final class BasicClassIntrospector$SetterAndGetterMethodFilter extends BasicClassIntrospector.SetterMethodFilter
{
  public final boolean includeMethod(Method paramMethod)
  {
    if (super.includeMethod(paramMethod));
    Class localClass;
    do
    {
      return true;
      if (!ClassUtil.hasGetterSignature(paramMethod))
        return false;
      localClass = paramMethod.getReturnType();
    }
    while ((Collection.class.isAssignableFrom(localClass)) || (Map.class.isAssignableFrom(localClass)));
    return false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.introspect.BasicClassIntrospector.SetterAndGetterMethodFilter
 * JD-Core Version:    0.6.2
 */
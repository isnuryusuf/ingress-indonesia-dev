package org.codehaus.jackson.map.introspect;

import java.lang.reflect.Method;
import org.codehaus.jackson.map.util.ClassUtil;

@Deprecated
public class BasicClassIntrospector$GetterMethodFilter
  implements MethodFilter
{
  public boolean includeMethod(Method paramMethod)
  {
    return ClassUtil.hasGetterSignature(paramMethod);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.introspect.BasicClassIntrospector.GetterMethodFilter
 * JD-Core Version:    0.6.2
 */
package org.codehaus.jackson.map.type;

import java.lang.reflect.Type;
import org.codehaus.jackson.type.JavaType;

public abstract class TypeModifier
{
  public abstract JavaType modifyType(JavaType paramJavaType, Type paramType, TypeBindings paramTypeBindings, TypeFactory paramTypeFactory);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.type.TypeModifier
 * JD-Core Version:    0.6.2
 */
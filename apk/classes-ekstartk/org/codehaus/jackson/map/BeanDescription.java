package org.codehaus.jackson.map;

import org.codehaus.jackson.map.introspect.AnnotatedClass;
import org.codehaus.jackson.type.JavaType;

public abstract class BeanDescription
{
  protected final JavaType _type;

  protected BeanDescription(JavaType paramJavaType)
  {
    this._type = paramJavaType;
  }

  public Class<?> getBeanClass()
  {
    return this._type.getRawClass();
  }

  public abstract AnnotatedClass getClassInfo();

  public JavaType getType()
  {
    return this._type;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.BeanDescription
 * JD-Core Version:    0.6.2
 */
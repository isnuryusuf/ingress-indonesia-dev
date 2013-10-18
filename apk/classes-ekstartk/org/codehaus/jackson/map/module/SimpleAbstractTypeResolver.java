package org.codehaus.jackson.map.module;

import java.lang.reflect.Modifier;
import java.util.HashMap;
import org.codehaus.jackson.map.AbstractTypeResolver;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.type.ClassKey;
import org.codehaus.jackson.type.JavaType;

public class SimpleAbstractTypeResolver extends AbstractTypeResolver
{
  protected final HashMap<ClassKey, Class<?>> _mappings = new HashMap();

  public <T> SimpleAbstractTypeResolver addMapping(Class<T> paramClass, Class<? extends T> paramClass1)
  {
    if (paramClass == paramClass1)
      throw new IllegalArgumentException("Can not add mapping from class to itself");
    if (!paramClass.isAssignableFrom(paramClass1))
      throw new IllegalArgumentException("Can not add mapping from class " + paramClass.getName() + " to " + paramClass1.getName() + ", as latter is not a subtype of former");
    if (!Modifier.isAbstract(paramClass.getModifiers()))
      throw new IllegalArgumentException("Can not add mapping from class " + paramClass.getName() + " since it is not abstract");
    this._mappings.put(new ClassKey(paramClass), paramClass1);
    return this;
  }

  public JavaType findTypeMapping(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType)
  {
    Class localClass1 = paramJavaType.getRawClass();
    Class localClass2 = (Class)this._mappings.get(new ClassKey(localClass1));
    if (localClass2 == null)
      return null;
    return paramJavaType.narrowBy(localClass2);
  }

  public JavaType resolveAbstractType(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType)
  {
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.module.SimpleAbstractTypeResolver
 * JD-Core Version:    0.6.2
 */
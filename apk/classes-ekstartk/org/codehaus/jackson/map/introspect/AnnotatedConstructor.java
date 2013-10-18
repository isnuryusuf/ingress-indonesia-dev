package org.codehaus.jackson.map.introspect;

import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Type;
import org.codehaus.jackson.map.type.TypeBindings;
import org.codehaus.jackson.type.JavaType;

public final class AnnotatedConstructor extends AnnotatedWithParams
{
  protected final Constructor<?> _constructor;

  public AnnotatedConstructor(Constructor<?> paramConstructor, AnnotationMap paramAnnotationMap, AnnotationMap[] paramArrayOfAnnotationMap)
  {
    super(paramAnnotationMap, paramArrayOfAnnotationMap);
    if (paramConstructor == null)
      throw new IllegalArgumentException("Null constructor not allowed");
    this._constructor = paramConstructor;
  }

  public final Object call()
  {
    return this._constructor.newInstance(new Object[0]);
  }

  public final Object call(Object[] paramArrayOfObject)
  {
    return this._constructor.newInstance(paramArrayOfObject);
  }

  public final Object call1(Object paramObject)
  {
    return this._constructor.newInstance(new Object[] { paramObject });
  }

  public final Constructor<?> getAnnotated()
  {
    return this._constructor;
  }

  public final Class<?> getDeclaringClass()
  {
    return this._constructor.getDeclaringClass();
  }

  public final Type getGenericType()
  {
    return getRawType();
  }

  public final Member getMember()
  {
    return this._constructor;
  }

  public final String getName()
  {
    return this._constructor.getName();
  }

  public final Class<?> getParameterClass(int paramInt)
  {
    Class[] arrayOfClass = this._constructor.getParameterTypes();
    if (paramInt >= arrayOfClass.length)
      return null;
    return arrayOfClass[paramInt];
  }

  public final int getParameterCount()
  {
    return this._constructor.getParameterTypes().length;
  }

  public final Type getParameterType(int paramInt)
  {
    Type[] arrayOfType = this._constructor.getGenericParameterTypes();
    if (paramInt >= arrayOfType.length)
      return null;
    return arrayOfType[paramInt];
  }

  public final Class<?> getRawType()
  {
    return this._constructor.getDeclaringClass();
  }

  public final JavaType getType(TypeBindings paramTypeBindings)
  {
    return getType(paramTypeBindings, this._constructor.getTypeParameters());
  }

  public final void setValue(Object paramObject1, Object paramObject2)
  {
    throw new UnsupportedOperationException("Cannot call setValue() on constructor of " + getDeclaringClass().getName());
  }

  public final String toString()
  {
    return "[constructor for " + getName() + ", annotations: " + this._annotations + "]";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.introspect.AnnotatedConstructor
 * JD-Core Version:    0.6.2
 */
package org.codehaus.jackson.map.introspect;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import org.codehaus.jackson.map.type.TypeBindings;
import org.codehaus.jackson.type.JavaType;

public final class AnnotatedMethod extends AnnotatedWithParams
{
  protected final Method _method;
  protected Class<?>[] _paramTypes;

  public AnnotatedMethod(Method paramMethod, AnnotationMap paramAnnotationMap, AnnotationMap[] paramArrayOfAnnotationMap)
  {
    super(paramAnnotationMap, paramArrayOfAnnotationMap);
    this._method = paramMethod;
  }

  public final Object call()
  {
    return this._method.invoke(null, new Object[0]);
  }

  public final Object call(Object[] paramArrayOfObject)
  {
    return this._method.invoke(null, paramArrayOfObject);
  }

  public final Object call1(Object paramObject)
  {
    return this._method.invoke(null, new Object[] { paramObject });
  }

  public final Method getAnnotated()
  {
    return this._method;
  }

  public final Class<?> getDeclaringClass()
  {
    return this._method.getDeclaringClass();
  }

  public final String getFullName()
  {
    return getDeclaringClass().getName() + "#" + getName() + "(" + getParameterCount() + " params)";
  }

  public final Type getGenericType()
  {
    return this._method.getGenericReturnType();
  }

  public final Member getMember()
  {
    return this._method;
  }

  public final String getName()
  {
    return this._method.getName();
  }

  public final Class<?> getParameterClass(int paramInt)
  {
    Class[] arrayOfClass = this._method.getParameterTypes();
    if (paramInt >= arrayOfClass.length)
      return null;
    return arrayOfClass[paramInt];
  }

  public final Class<?>[] getParameterClasses()
  {
    if (this._paramTypes == null)
      this._paramTypes = this._method.getParameterTypes();
    return this._paramTypes;
  }

  public final int getParameterCount()
  {
    return getParameterTypes().length;
  }

  public final Type getParameterType(int paramInt)
  {
    Type[] arrayOfType = this._method.getGenericParameterTypes();
    if (paramInt >= arrayOfType.length)
      return null;
    return arrayOfType[paramInt];
  }

  public final Type[] getParameterTypes()
  {
    return this._method.getGenericParameterTypes();
  }

  public final Class<?> getRawType()
  {
    return this._method.getReturnType();
  }

  public final JavaType getType(TypeBindings paramTypeBindings)
  {
    return getType(paramTypeBindings, this._method.getTypeParameters());
  }

  public final void setValue(Object paramObject1, Object paramObject2)
  {
    try
    {
      this._method.invoke(paramObject1, new Object[] { paramObject2 });
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new IllegalArgumentException("Failed to setValue() with method " + getFullName() + ": " + localIllegalAccessException.getMessage(), localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      throw new IllegalArgumentException("Failed to setValue() with method " + getFullName() + ": " + localInvocationTargetException.getMessage(), localInvocationTargetException);
    }
  }

  public final String toString()
  {
    return "[method " + getName() + ", annotations: " + this._annotations + "]";
  }

  public final AnnotatedMethod withAnnotations(AnnotationMap paramAnnotationMap)
  {
    return new AnnotatedMethod(this._method, paramAnnotationMap, this._paramAnnotations);
  }

  public final AnnotatedMethod withMethod(Method paramMethod)
  {
    return new AnnotatedMethod(paramMethod, this._annotations, this._paramAnnotations);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.introspect.AnnotatedMethod
 * JD-Core Version:    0.6.2
 */
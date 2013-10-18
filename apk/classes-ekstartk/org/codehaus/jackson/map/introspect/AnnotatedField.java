package org.codehaus.jackson.map.introspect;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Type;

public final class AnnotatedField extends AnnotatedMember
{
  protected final Field _field;

  public AnnotatedField(Field paramField, AnnotationMap paramAnnotationMap)
  {
    super(paramAnnotationMap);
    this._field = paramField;
  }

  public final void addOrOverride(Annotation paramAnnotation)
  {
    this._annotations.add(paramAnnotation);
  }

  public final Field getAnnotated()
  {
    return this._field;
  }

  public final <A extends Annotation> A getAnnotation(Class<A> paramClass)
  {
    return this._annotations.get(paramClass);
  }

  public final Class<?> getDeclaringClass()
  {
    return this._field.getDeclaringClass();
  }

  public final String getFullName()
  {
    return getDeclaringClass().getName() + "#" + getName();
  }

  public final Type getGenericType()
  {
    return this._field.getGenericType();
  }

  public final Member getMember()
  {
    return this._field;
  }

  public final String getName()
  {
    return this._field.getName();
  }

  public final Class<?> getRawType()
  {
    return this._field.getType();
  }

  public final void setValue(Object paramObject1, Object paramObject2)
  {
    try
    {
      this._field.set(paramObject1, paramObject2);
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new IllegalArgumentException("Failed to setValue() for field " + getFullName() + ": " + localIllegalAccessException.getMessage(), localIllegalAccessException);
    }
  }

  public final String toString()
  {
    return "[field " + getName() + ", annotations: " + this._annotations + "]";
  }

  public final AnnotatedField withAnnotations(AnnotationMap paramAnnotationMap)
  {
    return new AnnotatedField(this._field, paramAnnotationMap);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.introspect.AnnotatedField
 * JD-Core Version:    0.6.2
 */
package org.codehaus.jackson.map.type;

import java.lang.reflect.Array;
import org.codehaus.jackson.type.JavaType;

public final class ArrayType extends TypeBase
{
  protected final JavaType _componentType;
  protected final Object _emptyArray;

  private ArrayType(JavaType paramJavaType, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    super(paramObject1.getClass(), paramJavaType.hashCode(), paramObject2, paramObject3);
    this._componentType = paramJavaType;
    this._emptyArray = paramObject1;
  }

  public static ArrayType construct(JavaType paramJavaType, Object paramObject1, Object paramObject2)
  {
    return new ArrayType(paramJavaType, Array.newInstance(paramJavaType.getRawClass(), 0), null, null);
  }

  protected final JavaType _narrow(Class<?> paramClass)
  {
    if (!paramClass.isArray())
      throw new IllegalArgumentException("Incompatible narrowing operation: trying to narrow " + toString() + " to class " + paramClass.getName());
    Class localClass = paramClass.getComponentType();
    return construct(TypeFactory.defaultInstance().constructType(localClass), this._valueHandler, this._typeHandler);
  }

  protected final String buildCanonicalName()
  {
    return this._class.getName();
  }

  public final JavaType containedType(int paramInt)
  {
    if (paramInt == 0)
      return this._componentType;
    return null;
  }

  public final int containedTypeCount()
  {
    return 1;
  }

  public final String containedTypeName(int paramInt)
  {
    if (paramInt == 0)
      return "E";
    return null;
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool;
    if (paramObject == this)
      bool = true;
    Class localClass1;
    Class localClass2;
    do
    {
      do
      {
        return bool;
        bool = false;
      }
      while (paramObject == null);
      localClass1 = paramObject.getClass();
      localClass2 = getClass();
      bool = false;
    }
    while (localClass1 != localClass2);
    ArrayType localArrayType = (ArrayType)paramObject;
    return this._componentType.equals(localArrayType._componentType);
  }

  public final JavaType getContentType()
  {
    return this._componentType;
  }

  public final boolean hasGenericTypes()
  {
    return this._componentType.hasGenericTypes();
  }

  public final boolean isAbstract()
  {
    return false;
  }

  public final boolean isArrayType()
  {
    return true;
  }

  public final boolean isConcrete()
  {
    return true;
  }

  public final boolean isContainerType()
  {
    return true;
  }

  public final JavaType narrowContentsBy(Class<?> paramClass)
  {
    if (paramClass == this._componentType.getRawClass())
      return this;
    return construct(this._componentType.narrowBy(paramClass), this._valueHandler, this._typeHandler);
  }

  public final String toString()
  {
    return "[array type, component type: " + this._componentType + "]";
  }

  public final JavaType widenContentsBy(Class<?> paramClass)
  {
    if (paramClass == this._componentType.getRawClass())
      return this;
    return construct(this._componentType.widenBy(paramClass), this._valueHandler, this._typeHandler);
  }

  public final ArrayType withContentTypeHandler(Object paramObject)
  {
    if (paramObject == this._componentType.getTypeHandler())
      return this;
    return new ArrayType(this._componentType.withTypeHandler(paramObject), this._emptyArray, this._valueHandler, this._typeHandler);
  }

  public final ArrayType withTypeHandler(Object paramObject)
  {
    if (paramObject == this._typeHandler)
      return this;
    return new ArrayType(this._componentType, this._emptyArray, this._valueHandler, paramObject);
  }

  public final ArrayType withValueHandler(Object paramObject)
  {
    if (paramObject == this._valueHandler)
      return this;
    return new ArrayType(this._componentType, this._emptyArray, paramObject, this._typeHandler);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.type.ArrayType
 * JD-Core Version:    0.6.2
 */
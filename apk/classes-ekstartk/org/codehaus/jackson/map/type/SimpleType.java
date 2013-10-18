package org.codehaus.jackson.map.type;

import org.codehaus.jackson.type.JavaType;

public final class SimpleType extends TypeBase
{
  protected final String[] _typeNames;
  protected final JavaType[] _typeParameters;

  protected SimpleType(Class<?> paramClass)
  {
    this(paramClass, null, null, null, null);
  }

  protected SimpleType(Class<?> paramClass, String[] paramArrayOfString, JavaType[] paramArrayOfJavaType, Object paramObject1, Object paramObject2)
  {
    super(paramClass, 0, paramObject1, paramObject2);
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0))
    {
      this._typeNames = null;
      this._typeParameters = null;
      return;
    }
    this._typeNames = paramArrayOfString;
    this._typeParameters = paramArrayOfJavaType;
  }

  public static SimpleType constructUnsafe(Class<?> paramClass)
  {
    return new SimpleType(paramClass, null, null, null, null);
  }

  protected final JavaType _narrow(Class<?> paramClass)
  {
    return new SimpleType(paramClass, this._typeNames, this._typeParameters, this._valueHandler, this._typeHandler);
  }

  protected final String buildCanonicalName()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this._class.getName());
    if ((this._typeParameters != null) && (this._typeParameters.length > 0))
    {
      localStringBuilder.append('<');
      int i = 1;
      JavaType[] arrayOfJavaType = this._typeParameters;
      int j = arrayOfJavaType.length;
      int k = 0;
      if (k < j)
      {
        JavaType localJavaType = arrayOfJavaType[k];
        if (i != 0)
          i = 0;
        while (true)
        {
          localStringBuilder.append(localJavaType.toCanonical());
          k++;
          break;
          localStringBuilder.append(',');
        }
      }
      localStringBuilder.append('>');
    }
    return localStringBuilder.toString();
  }

  public final JavaType containedType(int paramInt)
  {
    if ((paramInt < 0) || (this._typeParameters == null) || (paramInt >= this._typeParameters.length))
      return null;
    return this._typeParameters[paramInt];
  }

  public final int containedTypeCount()
  {
    if (this._typeParameters == null)
      return 0;
    return this._typeParameters.length;
  }

  public final String containedTypeName(int paramInt)
  {
    if ((paramInt < 0) || (this._typeNames == null) || (paramInt >= this._typeNames.length))
      return null;
    return this._typeNames[paramInt];
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == this);
    while (true)
    {
      return true;
      if (paramObject == null)
        return false;
      if (paramObject.getClass() != getClass())
        return false;
      SimpleType localSimpleType = (SimpleType)paramObject;
      if (localSimpleType._class != this._class)
        return false;
      JavaType[] arrayOfJavaType1 = this._typeParameters;
      JavaType[] arrayOfJavaType2 = localSimpleType._typeParameters;
      if (arrayOfJavaType1 == null)
      {
        if ((arrayOfJavaType2 != null) && (arrayOfJavaType2.length != 0))
          return false;
      }
      else
      {
        if (arrayOfJavaType2 == null)
          return false;
        if (arrayOfJavaType1.length != arrayOfJavaType2.length)
          return false;
        int i = arrayOfJavaType1.length;
        for (int j = 0; j < i; j++)
          if (!arrayOfJavaType1[j].equals(arrayOfJavaType2[j]))
            return false;
      }
    }
  }

  public final boolean isContainerType()
  {
    return false;
  }

  public final JavaType narrowContentsBy(Class<?> paramClass)
  {
    throw new IllegalArgumentException("Internal error: SimpleType.narrowContentsBy() should never be called");
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(40);
    localStringBuilder.append("[simple type, class ").append(buildCanonicalName()).append(']');
    return localStringBuilder.toString();
  }

  public final JavaType widenContentsBy(Class<?> paramClass)
  {
    throw new IllegalArgumentException("Internal error: SimpleType.widenContentsBy() should never be called");
  }

  public final JavaType withContentTypeHandler(Object paramObject)
  {
    throw new IllegalArgumentException("Simple types have no content types; can not call withContenTypeHandler()");
  }

  public final SimpleType withTypeHandler(Object paramObject)
  {
    return new SimpleType(this._class, this._typeNames, this._typeParameters, this._valueHandler, paramObject);
  }

  public final SimpleType withValueHandler(Object paramObject)
  {
    if (paramObject == this._valueHandler)
      return this;
    return new SimpleType(this._class, this._typeNames, this._typeParameters, paramObject, this._typeHandler);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.type.SimpleType
 * JD-Core Version:    0.6.2
 */
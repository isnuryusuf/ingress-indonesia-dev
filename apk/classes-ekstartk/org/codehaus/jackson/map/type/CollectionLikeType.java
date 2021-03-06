package org.codehaus.jackson.map.type;

import java.util.Collection;
import org.codehaus.jackson.type.JavaType;

public class CollectionLikeType extends TypeBase
{
  protected final JavaType _elementType;

  protected CollectionLikeType(Class<?> paramClass, JavaType paramJavaType, Object paramObject1, Object paramObject2)
  {
    super(paramClass, paramJavaType.hashCode(), paramObject1, paramObject2);
    this._elementType = paramJavaType;
  }

  protected JavaType _narrow(Class<?> paramClass)
  {
    return new CollectionLikeType(paramClass, this._elementType, this._valueHandler, this._typeHandler);
  }

  protected String buildCanonicalName()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this._class.getName());
    if (this._elementType != null)
    {
      localStringBuilder.append('<');
      localStringBuilder.append(this._elementType.toCanonical());
      localStringBuilder.append('>');
    }
    return localStringBuilder.toString();
  }

  public JavaType containedType(int paramInt)
  {
    if (paramInt == 0)
      return this._elementType;
    return null;
  }

  public int containedTypeCount()
  {
    return 1;
  }

  public String containedTypeName(int paramInt)
  {
    if (paramInt == 0)
      return "E";
    return null;
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == this);
    CollectionLikeType localCollectionLikeType;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (paramObject.getClass() != getClass())
        return false;
      localCollectionLikeType = (CollectionLikeType)paramObject;
    }
    while ((this._class == localCollectionLikeType._class) && (this._elementType.equals(localCollectionLikeType._elementType)));
    return false;
  }

  public JavaType getContentType()
  {
    return this._elementType;
  }

  public boolean isCollectionLikeType()
  {
    return true;
  }

  public boolean isContainerType()
  {
    return true;
  }

  public boolean isTrueCollectionType()
  {
    return Collection.class.isAssignableFrom(this._class);
  }

  public JavaType narrowContentsBy(Class<?> paramClass)
  {
    if (paramClass == this._elementType.getRawClass())
      return this;
    return new CollectionLikeType(this._class, this._elementType.narrowBy(paramClass), this._valueHandler, this._typeHandler);
  }

  public String toString()
  {
    return "[collection-like type; class " + this._class.getName() + ", contains " + this._elementType + "]";
  }

  public JavaType widenContentsBy(Class<?> paramClass)
  {
    if (paramClass == this._elementType.getRawClass())
      return this;
    return new CollectionLikeType(this._class, this._elementType.widenBy(paramClass), this._valueHandler, this._typeHandler);
  }

  public CollectionLikeType withContentTypeHandler(Object paramObject)
  {
    return new CollectionLikeType(this._class, this._elementType.withTypeHandler(paramObject), this._valueHandler, this._typeHandler);
  }

  public CollectionLikeType withTypeHandler(Object paramObject)
  {
    return new CollectionLikeType(this._class, this._elementType, this._valueHandler, paramObject);
  }

  public CollectionLikeType withValueHandler(Object paramObject)
  {
    return new CollectionLikeType(this._class, this._elementType, paramObject, this._typeHandler);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.type.CollectionLikeType
 * JD-Core Version:    0.6.2
 */
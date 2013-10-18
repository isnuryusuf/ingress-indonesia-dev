package org.codehaus.jackson.map.ser.impl;

import org.codehaus.jackson.type.JavaType;

public final class SerializerCache$TypeKey
{
  protected Class<?> _class;
  protected int _hashCode;
  protected boolean _isTyped;
  protected JavaType _type;

  public SerializerCache$TypeKey(Class<?> paramClass, boolean paramBoolean)
  {
    this._class = paramClass;
    this._type = null;
    this._isTyped = paramBoolean;
    this._hashCode = hash(paramClass, paramBoolean);
  }

  public SerializerCache$TypeKey(JavaType paramJavaType, boolean paramBoolean)
  {
    this._type = paramJavaType;
    this._class = null;
    this._isTyped = paramBoolean;
    this._hashCode = hash(paramJavaType, paramBoolean);
  }

  private static final int hash(Class<?> paramClass, boolean paramBoolean)
  {
    int i = paramClass.getName().hashCode();
    if (paramBoolean)
      i++;
    return i;
  }

  private static final int hash(JavaType paramJavaType, boolean paramBoolean)
  {
    int i = -1 + paramJavaType.hashCode();
    if (paramBoolean)
      i--;
    return i;
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == this);
    TypeKey localTypeKey;
    do
    {
      return true;
      localTypeKey = (TypeKey)paramObject;
      if (localTypeKey._isTyped != this._isTyped)
        break label55;
      if (this._class == null)
        break;
    }
    while (localTypeKey._class == this._class);
    return false;
    return this._type.equals(localTypeKey._type);
    label55: return false;
  }

  public final int hashCode()
  {
    return this._hashCode;
  }

  public final void resetTyped(Class<?> paramClass)
  {
    this._type = null;
    this._class = paramClass;
    this._isTyped = true;
    this._hashCode = hash(paramClass, true);
  }

  public final void resetTyped(JavaType paramJavaType)
  {
    this._type = paramJavaType;
    this._class = null;
    this._isTyped = true;
    this._hashCode = hash(paramJavaType, true);
  }

  public final void resetUntyped(Class<?> paramClass)
  {
    this._type = null;
    this._class = paramClass;
    this._isTyped = false;
    this._hashCode = hash(paramClass, false);
  }

  public final void resetUntyped(JavaType paramJavaType)
  {
    this._type = paramJavaType;
    this._class = null;
    this._isTyped = false;
    this._hashCode = hash(paramJavaType, false);
  }

  public final String toString()
  {
    if (this._class != null)
      return "{class: " + this._class.getName() + ", typed? " + this._isTyped + "}";
    return "{type: " + this._type + ", typed? " + this._isTyped + "}";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.impl.SerializerCache.TypeKey
 * JD-Core Version:    0.6.2
 */
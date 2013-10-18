package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.deser.SettableBeanProperty;
import org.codehaus.jackson.map.deser.ValueInstantiator;
import org.codehaus.jackson.map.deser.impl.CreatorProperty;
import org.codehaus.jackson.map.introspect.AnnotatedWithParams;
import org.codehaus.jackson.type.JavaType;

public class StdValueInstantiator extends ValueInstantiator
{
  protected final boolean _cfgEmptyStringsAsObjects;
  protected CreatorProperty[] _constructorArguments;
  protected AnnotatedWithParams _defaultCreator;
  protected AnnotatedWithParams _delegateCreator;
  protected JavaType _delegateType;
  protected AnnotatedWithParams _fromBooleanCreator;
  protected AnnotatedWithParams _fromDoubleCreator;
  protected AnnotatedWithParams _fromIntCreator;
  protected AnnotatedWithParams _fromLongCreator;
  protected AnnotatedWithParams _fromStringCreator;
  protected final String _valueTypeDesc;
  protected AnnotatedWithParams _withArgsCreator;

  public StdValueInstantiator(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType)
  {
    boolean bool;
    if (paramDeserializationConfig == null)
    {
      bool = false;
      this._cfgEmptyStringsAsObjects = bool;
      if (paramJavaType != null)
        break label41;
    }
    label41: for (String str = "UNKNOWN TYPE"; ; str = paramJavaType.toString())
    {
      this._valueTypeDesc = str;
      return;
      bool = paramDeserializationConfig.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT);
      break;
    }
  }

  protected Object _createFromStringFallbacks(String paramString)
  {
    if (this._fromBooleanCreator != null)
    {
      String str = paramString.trim();
      if ("true".equals(str))
        return createFromBoolean(true);
      if ("false".equals(str))
        return createFromBoolean(false);
    }
    if ((this._cfgEmptyStringsAsObjects) && (paramString.length() == 0))
      return null;
    throw new JsonMappingException("Can not instantiate value of type " + getValueTypeDesc() + " from JSON String; no single-String constructor/factory method");
  }

  public boolean canCreateFromBoolean()
  {
    return this._fromBooleanCreator != null;
  }

  public boolean canCreateFromDouble()
  {
    return this._fromDoubleCreator != null;
  }

  public boolean canCreateFromInt()
  {
    return this._fromIntCreator != null;
  }

  public boolean canCreateFromLong()
  {
    return this._fromLongCreator != null;
  }

  public boolean canCreateFromObjectWith()
  {
    return this._withArgsCreator != null;
  }

  public boolean canCreateFromString()
  {
    return this._fromStringCreator != null;
  }

  public boolean canCreateUsingDefault()
  {
    return this._defaultCreator != null;
  }

  public void configureFromBooleanCreator(AnnotatedWithParams paramAnnotatedWithParams)
  {
    this._fromBooleanCreator = paramAnnotatedWithParams;
  }

  public void configureFromDoubleCreator(AnnotatedWithParams paramAnnotatedWithParams)
  {
    this._fromDoubleCreator = paramAnnotatedWithParams;
  }

  public void configureFromIntCreator(AnnotatedWithParams paramAnnotatedWithParams)
  {
    this._fromIntCreator = paramAnnotatedWithParams;
  }

  public void configureFromLongCreator(AnnotatedWithParams paramAnnotatedWithParams)
  {
    this._fromLongCreator = paramAnnotatedWithParams;
  }

  public void configureFromObjectSettings(AnnotatedWithParams paramAnnotatedWithParams1, AnnotatedWithParams paramAnnotatedWithParams2, JavaType paramJavaType, AnnotatedWithParams paramAnnotatedWithParams3, CreatorProperty[] paramArrayOfCreatorProperty)
  {
    this._defaultCreator = paramAnnotatedWithParams1;
    this._delegateCreator = paramAnnotatedWithParams2;
    this._delegateType = paramJavaType;
    this._withArgsCreator = paramAnnotatedWithParams3;
    this._constructorArguments = paramArrayOfCreatorProperty;
  }

  public void configureFromStringCreator(AnnotatedWithParams paramAnnotatedWithParams)
  {
    this._fromStringCreator = paramAnnotatedWithParams;
  }

  public Object createFromBoolean(boolean paramBoolean)
  {
    try
    {
      if (this._fromBooleanCreator != null)
      {
        Object localObject = this._fromBooleanCreator.call1(Boolean.valueOf(paramBoolean));
        return localObject;
      }
    }
    catch (Exception localException)
    {
      throw wrapException(localException);
    }
    throw new JsonMappingException("Can not instantiate value of type " + getValueTypeDesc() + " from JSON boolean value; no single-boolean/Boolean-arg constructor/factory method");
  }

  public Object createFromDouble(double paramDouble)
  {
    try
    {
      if (this._fromDoubleCreator != null)
      {
        Object localObject = this._fromDoubleCreator.call1(Double.valueOf(paramDouble));
        return localObject;
      }
    }
    catch (Exception localException)
    {
      throw wrapException(localException);
    }
    throw new JsonMappingException("Can not instantiate value of type " + getValueTypeDesc() + " from JSON floating-point number; no one-double/Double-arg constructor/factory method");
  }

  public Object createFromInt(int paramInt)
  {
    try
    {
      if (this._fromIntCreator != null)
        return this._fromIntCreator.call1(Integer.valueOf(paramInt));
      if (this._fromLongCreator != null)
      {
        Object localObject = this._fromLongCreator.call1(Long.valueOf(paramInt));
        return localObject;
      }
    }
    catch (Exception localException)
    {
      throw wrapException(localException);
    }
    throw new JsonMappingException("Can not instantiate value of type " + getValueTypeDesc() + " from JSON integral number; no single-int-arg constructor/factory method");
  }

  public Object createFromLong(long paramLong)
  {
    try
    {
      if (this._fromLongCreator != null)
      {
        Object localObject = this._fromLongCreator.call1(Long.valueOf(paramLong));
        return localObject;
      }
    }
    catch (Exception localException)
    {
      throw wrapException(localException);
    }
    throw new JsonMappingException("Can not instantiate value of type " + getValueTypeDesc() + " from JSON long integral number; no single-long-arg constructor/factory method");
  }

  public Object createFromObjectWith(Object[] paramArrayOfObject)
  {
    if (this._withArgsCreator == null)
      throw new IllegalStateException("No with-args constructor for " + getValueTypeDesc());
    try
    {
      Object localObject = this._withArgsCreator.call(paramArrayOfObject);
      return localObject;
    }
    catch (ExceptionInInitializerError localExceptionInInitializerError)
    {
      throw wrapException(localExceptionInInitializerError);
    }
    catch (Exception localException)
    {
      throw wrapException(localException);
    }
  }

  public Object createFromString(String paramString)
  {
    if (this._fromStringCreator != null)
      try
      {
        Object localObject = this._fromStringCreator.call1(paramString);
        return localObject;
      }
      catch (Exception localException)
      {
        throw wrapException(localException);
      }
    return _createFromStringFallbacks(paramString);
  }

  public Object createUsingDefault()
  {
    if (this._defaultCreator == null)
      throw new IllegalStateException("No default constructor for " + getValueTypeDesc());
    try
    {
      Object localObject = this._defaultCreator.call();
      return localObject;
    }
    catch (ExceptionInInitializerError localExceptionInInitializerError)
    {
      throw wrapException(localExceptionInInitializerError);
    }
    catch (Exception localException)
    {
      throw wrapException(localException);
    }
  }

  public Object createUsingDelegate(Object paramObject)
  {
    if (this._delegateCreator == null)
      throw new IllegalStateException("No delegate constructor for " + getValueTypeDesc());
    try
    {
      Object localObject = this._delegateCreator.call1(paramObject);
      return localObject;
    }
    catch (ExceptionInInitializerError localExceptionInInitializerError)
    {
      throw wrapException(localExceptionInInitializerError);
    }
    catch (Exception localException)
    {
      throw wrapException(localException);
    }
  }

  public AnnotatedWithParams getDefaultCreator()
  {
    return this._defaultCreator;
  }

  public AnnotatedWithParams getDelegateCreator()
  {
    return this._delegateCreator;
  }

  public JavaType getDelegateType()
  {
    return this._delegateType;
  }

  public SettableBeanProperty[] getFromObjectArguments()
  {
    return this._constructorArguments;
  }

  public String getValueTypeDesc()
  {
    return this._valueTypeDesc;
  }

  protected JsonMappingException wrapException(Throwable paramThrowable)
  {
    while (paramThrowable.getCause() != null)
      paramThrowable = paramThrowable.getCause();
    return new JsonMappingException("Instantiation of " + getValueTypeDesc() + " value failed: " + paramThrowable.getMessage(), paramThrowable);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdValueInstantiator
 * JD-Core Version:    0.6.2
 */
package org.codehaus.jackson.map.ser.impl;

import java.util.HashMap;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.ResolvableSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.type.JavaType;

public final class SerializerCache
{
  private ReadOnlyClassToSerializerMap _readOnlyMap = null;
  private HashMap<SerializerCache.TypeKey, JsonSerializer<Object>> _sharedMap = new HashMap(64);

  public final void addAndResolveNonTypedSerializer(Class<?> paramClass, JsonSerializer<Object> paramJsonSerializer, SerializerProvider paramSerializerProvider)
  {
    try
    {
      if (this._sharedMap.put(new SerializerCache.TypeKey(paramClass, false), paramJsonSerializer) == null)
        this._readOnlyMap = null;
      if ((paramJsonSerializer instanceof ResolvableSerializer))
        ((ResolvableSerializer)paramJsonSerializer).resolve(paramSerializerProvider);
      return;
    }
    finally
    {
    }
  }

  public final void addAndResolveNonTypedSerializer(JavaType paramJavaType, JsonSerializer<Object> paramJsonSerializer, SerializerProvider paramSerializerProvider)
  {
    try
    {
      if (this._sharedMap.put(new SerializerCache.TypeKey(paramJavaType, false), paramJsonSerializer) == null)
        this._readOnlyMap = null;
      if ((paramJsonSerializer instanceof ResolvableSerializer))
        ((ResolvableSerializer)paramJsonSerializer).resolve(paramSerializerProvider);
      return;
    }
    finally
    {
    }
  }

  public final void addTypedSerializer(Class<?> paramClass, JsonSerializer<Object> paramJsonSerializer)
  {
    try
    {
      if (this._sharedMap.put(new SerializerCache.TypeKey(paramClass, true), paramJsonSerializer) == null)
        this._readOnlyMap = null;
      return;
    }
    finally
    {
    }
  }

  public final void addTypedSerializer(JavaType paramJavaType, JsonSerializer<Object> paramJsonSerializer)
  {
    try
    {
      if (this._sharedMap.put(new SerializerCache.TypeKey(paramJavaType, true), paramJsonSerializer) == null)
        this._readOnlyMap = null;
      return;
    }
    finally
    {
    }
  }

  public final ReadOnlyClassToSerializerMap getReadOnlyLookupMap()
  {
    try
    {
      ReadOnlyClassToSerializerMap localReadOnlyClassToSerializerMap = this._readOnlyMap;
      if (localReadOnlyClassToSerializerMap == null)
      {
        localReadOnlyClassToSerializerMap = ReadOnlyClassToSerializerMap.from(this._sharedMap);
        this._readOnlyMap = localReadOnlyClassToSerializerMap;
      }
      return localReadOnlyClassToSerializerMap.instance();
    }
    finally
    {
    }
  }

  public final JsonSerializer<Object> typedValueSerializer(Class<?> paramClass)
  {
    try
    {
      JsonSerializer localJsonSerializer = (JsonSerializer)this._sharedMap.get(new SerializerCache.TypeKey(paramClass, true));
      return localJsonSerializer;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final JsonSerializer<Object> typedValueSerializer(JavaType paramJavaType)
  {
    try
    {
      JsonSerializer localJsonSerializer = (JsonSerializer)this._sharedMap.get(new SerializerCache.TypeKey(paramJavaType, true));
      return localJsonSerializer;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final JsonSerializer<Object> untypedValueSerializer(Class<?> paramClass)
  {
    try
    {
      JsonSerializer localJsonSerializer = (JsonSerializer)this._sharedMap.get(new SerializerCache.TypeKey(paramClass, false));
      return localJsonSerializer;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final JsonSerializer<Object> untypedValueSerializer(JavaType paramJavaType)
  {
    try
    {
      JsonSerializer localJsonSerializer = (JsonSerializer)this._sharedMap.get(new SerializerCache.TypeKey(paramJavaType, false));
      return localJsonSerializer;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.impl.SerializerCache
 * JD-Core Version:    0.6.2
 */
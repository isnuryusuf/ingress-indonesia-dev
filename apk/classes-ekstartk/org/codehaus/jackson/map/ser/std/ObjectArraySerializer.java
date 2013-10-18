package org.codehaus.jackson.map.ser.std;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.ResolvableSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.ser.impl.PropertySerializerMap;
import org.codehaus.jackson.map.ser.impl.PropertySerializerMap.SerializerAndMapResult;
import org.codehaus.jackson.type.JavaType;

@JacksonStdImpl
public class ObjectArraySerializer extends StdArraySerializers.ArraySerializerBase<Object[]>
  implements ResolvableSerializer
{
  protected PropertySerializerMap _dynamicSerializers;
  protected JsonSerializer<Object> _elementSerializer;
  protected final JavaType _elementType;
  protected final boolean _staticTyping;

  public ObjectArraySerializer(JavaType paramJavaType, boolean paramBoolean, TypeSerializer paramTypeSerializer, BeanProperty paramBeanProperty, JsonSerializer<Object> paramJsonSerializer)
  {
    super([Ljava.lang.Object.class, paramTypeSerializer, paramBeanProperty);
    this._elementType = paramJavaType;
    this._staticTyping = paramBoolean;
    this._dynamicSerializers = PropertySerializerMap.emptyMap();
    this._elementSerializer = paramJsonSerializer;
  }

  protected final JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap paramPropertySerializerMap, Class<?> paramClass, SerializerProvider paramSerializerProvider)
  {
    PropertySerializerMap.SerializerAndMapResult localSerializerAndMapResult = paramPropertySerializerMap.findAndAddSerializer(paramClass, paramSerializerProvider, this._property);
    if (paramPropertySerializerMap != localSerializerAndMapResult.map)
      this._dynamicSerializers = localSerializerAndMapResult.map;
    return localSerializerAndMapResult.serializer;
  }

  protected final JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap paramPropertySerializerMap, JavaType paramJavaType, SerializerProvider paramSerializerProvider)
  {
    PropertySerializerMap.SerializerAndMapResult localSerializerAndMapResult = paramPropertySerializerMap.findAndAddSerializer(paramJavaType, paramSerializerProvider, this._property);
    if (paramPropertySerializerMap != localSerializerAndMapResult.map)
      this._dynamicSerializers = localSerializerAndMapResult.map;
    return localSerializerAndMapResult.serializer;
  }

  public ContainerSerializerBase<?> _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
  {
    return new ObjectArraySerializer(this._elementType, this._staticTyping, paramTypeSerializer, this._property, this._elementSerializer);
  }

  public void resolve(SerializerProvider paramSerializerProvider)
  {
    if ((this._staticTyping) && (this._elementSerializer == null))
      this._elementSerializer = paramSerializerProvider.findValueSerializer(this._elementType, this._property);
  }

  public void serializeContents(Object[] paramArrayOfObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    int i = paramArrayOfObject.length;
    if (i == 0)
      return;
    if (this._elementSerializer != null)
    {
      serializeContentsUsing(paramArrayOfObject, paramJsonGenerator, paramSerializerProvider, this._elementSerializer);
      return;
    }
    if (this._valueTypeSerializer != null)
    {
      serializeTypedContents(paramArrayOfObject, paramJsonGenerator, paramSerializerProvider);
      return;
    }
    int j = 0;
    Object localObject1 = null;
    while (true)
    {
      try
      {
        localPropertySerializerMap = this._dynamicSerializers;
        if (j >= i)
          break;
        localObject1 = paramArrayOfObject[j];
        if (localObject1 == null)
        {
          paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
        }
        else
        {
          localClass = localObject1.getClass();
          localObject2 = localPropertySerializerMap.serializerFor(localClass);
          if (localObject2 == null)
          {
            if (this._elementType.hasGenericTypes())
              localObject2 = _findAndAddDynamic(localPropertySerializerMap, paramSerializerProvider.constructSpecializedType(this._elementType, localClass), paramSerializerProvider);
          }
          else
            ((JsonSerializer)localObject2).serialize(localObject1, paramJsonGenerator, paramSerializerProvider);
        }
      }
      catch (IOException localIOException)
      {
        PropertySerializerMap localPropertySerializerMap;
        Class localClass;
        throw localIOException;
        JsonSerializer localJsonSerializer = _findAndAddDynamic(localPropertySerializerMap, localClass, paramSerializerProvider);
        Object localObject2 = localJsonSerializer;
        continue;
        Throwable localThrowable;
        if (((localThrowable instanceof InvocationTargetException)) && (localThrowable.getCause() != null))
        {
          localThrowable = localThrowable.getCause();
          continue;
        }
        if ((localThrowable instanceof Error))
          throw ((Error)localThrowable);
        throw JsonMappingException.wrapWithPath(localThrowable, localObject1, j);
      }
      catch (Exception localException)
      {
        continue;
      }
      j++;
    }
  }

  public void serializeContentsUsing(Object[] paramArrayOfObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, JsonSerializer<Object> paramJsonSerializer)
  {
    int i = paramArrayOfObject.length;
    TypeSerializer localTypeSerializer = this._valueTypeSerializer;
    Object localObject = null;
    for (int j = 0; ; j++)
      if (j < i)
        try
        {
          localObject = paramArrayOfObject[j];
          if (localObject == null)
            paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
          else if (localTypeSerializer == null)
            paramJsonSerializer.serialize(localObject, paramJsonGenerator, paramSerializerProvider);
        }
        catch (IOException localIOException)
        {
          throw localIOException;
          paramJsonSerializer.serializeWithType(localObject, paramJsonGenerator, paramSerializerProvider, localTypeSerializer);
        }
        catch (Exception localException)
        {
          Throwable localThrowable;
          while (((localException instanceof InvocationTargetException)) && (localException.getCause() != null))
            localThrowable = localException.getCause();
          if ((localThrowable instanceof Error))
            throw ((Error)localThrowable);
          throw JsonMappingException.wrapWithPath(localThrowable, localObject, j);
        }
      else
        return;
  }

  public void serializeTypedContents(Object[] paramArrayOfObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    int i = paramArrayOfObject.length;
    TypeSerializer localTypeSerializer = this._valueTypeSerializer;
    int j = 0;
    Object localObject = null;
    while (true)
    {
      try
      {
        PropertySerializerMap localPropertySerializerMap = this._dynamicSerializers;
        if (j < i)
        {
          localObject = paramArrayOfObject[j];
          if (localObject == null)
          {
            paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
          }
          else
          {
            Class localClass = localObject.getClass();
            JsonSerializer localJsonSerializer = localPropertySerializerMap.serializerFor(localClass);
            if (localJsonSerializer == null)
              localJsonSerializer = _findAndAddDynamic(localPropertySerializerMap, localClass, paramSerializerProvider);
            localJsonSerializer.serializeWithType(localObject, paramJsonGenerator, paramSerializerProvider, localTypeSerializer);
          }
        }
      }
      catch (IOException localIOException)
      {
        throw localIOException;
        Throwable localThrowable;
        if (((localThrowable instanceof InvocationTargetException)) && (localThrowable.getCause() != null))
        {
          localThrowable = localThrowable.getCause();
          continue;
        }
        if ((localThrowable instanceof Error))
          throw ((Error)localThrowable);
        throw JsonMappingException.wrapWithPath(localThrowable, localObject, j);
        return;
      }
      catch (Exception localException)
      {
        continue;
      }
      j++;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.ObjectArraySerializer
 * JD-Core Version:    0.6.2
 */
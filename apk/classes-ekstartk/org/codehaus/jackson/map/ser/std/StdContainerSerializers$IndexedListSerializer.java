package org.codehaus.jackson.map.ser.std;

import java.util.List;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.ser.impl.PropertySerializerMap;
import org.codehaus.jackson.type.JavaType;

@JacksonStdImpl
public class StdContainerSerializers$IndexedListSerializer extends AsArraySerializerBase<List<?>>
{
  public StdContainerSerializers$IndexedListSerializer(JavaType paramJavaType, boolean paramBoolean, TypeSerializer paramTypeSerializer, BeanProperty paramBeanProperty, JsonSerializer<Object> paramJsonSerializer)
  {
    super(List.class, paramJavaType, paramBoolean, paramTypeSerializer, paramBeanProperty, paramJsonSerializer);
  }

  public ContainerSerializerBase<?> _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
  {
    return new IndexedListSerializer(this._elementType, this._staticTyping, paramTypeSerializer, this._property, this._elementSerializer);
  }

  public void serializeContents(List<?> paramList, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    if (this._elementSerializer != null)
      serializeContentsUsing(paramList, paramJsonGenerator, paramSerializerProvider, this._elementSerializer);
    int i;
    do
    {
      return;
      if (this._valueTypeSerializer != null)
      {
        serializeTypedContents(paramList, paramJsonGenerator, paramSerializerProvider);
        return;
      }
      i = paramList.size();
    }
    while (i == 0);
    for (int j = 0; ; j++)
      while (true)
      {
        Object localObject1;
        Class localClass;
        try
        {
          localObject1 = this._dynamicSerializers;
          if (j >= i)
            break;
          Object localObject2 = paramList.get(j);
          if (localObject2 == null)
          {
            paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
          }
          else
          {
            localClass = localObject2.getClass();
            Object localObject3 = ((PropertySerializerMap)localObject1).serializerFor(localClass);
            if (localObject3 == null)
            {
              if (this._elementType.hasGenericTypes())
              {
                localObject4 = _findAndAddDynamic((PropertySerializerMap)localObject1, paramSerializerProvider.constructSpecializedType(this._elementType, localClass), paramSerializerProvider);
                PropertySerializerMap localPropertySerializerMap = this._dynamicSerializers;
                Object localObject5 = localObject4;
                localObject1 = localPropertySerializerMap;
                localObject3 = localObject5;
              }
            }
            else
              ((JsonSerializer)localObject3).serialize(localObject2, paramJsonGenerator, paramSerializerProvider);
          }
        }
        catch (Exception localException)
        {
          wrapAndThrow(paramSerializerProvider, localException, paramList, j);
          return;
        }
        JsonSerializer localJsonSerializer = _findAndAddDynamic((PropertySerializerMap)localObject1, localClass, paramSerializerProvider);
        Object localObject4 = localJsonSerializer;
      }
  }

  public void serializeContentsUsing(List<?> paramList, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, JsonSerializer<Object> paramJsonSerializer)
  {
    int i = paramList.size();
    if (i == 0);
    while (true)
    {
      return;
      TypeSerializer localTypeSerializer = this._valueTypeSerializer;
      for (int j = 0; j < i; j++)
      {
        Object localObject = paramList.get(j);
        if (localObject == null);
        try
        {
          paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
          continue;
          if (localTypeSerializer == null)
            paramJsonSerializer.serialize(localObject, paramJsonGenerator, paramSerializerProvider);
        }
        catch (Exception localException)
        {
          wrapAndThrow(paramSerializerProvider, localException, paramList, j);
        }
        paramJsonSerializer.serializeWithType(localObject, paramJsonGenerator, paramSerializerProvider, localTypeSerializer);
      }
    }
  }

  public void serializeTypedContents(List<?> paramList, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    int i = paramList.size();
    if (i == 0)
      return;
    for (int j = 0; ; j++)
      while (true)
      {
        Object localObject1;
        Class localClass;
        try
        {
          TypeSerializer localTypeSerializer = this._valueTypeSerializer;
          localObject1 = this._dynamicSerializers;
          if (j >= i)
            break;
          Object localObject2 = paramList.get(j);
          if (localObject2 == null)
          {
            paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
          }
          else
          {
            localClass = localObject2.getClass();
            Object localObject3 = ((PropertySerializerMap)localObject1).serializerFor(localClass);
            if (localObject3 == null)
            {
              if (this._elementType.hasGenericTypes())
              {
                localObject4 = _findAndAddDynamic((PropertySerializerMap)localObject1, paramSerializerProvider.constructSpecializedType(this._elementType, localClass), paramSerializerProvider);
                PropertySerializerMap localPropertySerializerMap = this._dynamicSerializers;
                Object localObject5 = localObject4;
                localObject1 = localPropertySerializerMap;
                localObject3 = localObject5;
              }
            }
            else
              ((JsonSerializer)localObject3).serializeWithType(localObject2, paramJsonGenerator, paramSerializerProvider, localTypeSerializer);
          }
        }
        catch (Exception localException)
        {
          wrapAndThrow(paramSerializerProvider, localException, paramList, j);
          return;
        }
        JsonSerializer localJsonSerializer = _findAndAddDynamic((PropertySerializerMap)localObject1, localClass, paramSerializerProvider);
        Object localObject4 = localJsonSerializer;
      }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdContainerSerializers.IndexedListSerializer
 * JD-Core Version:    0.6.2
 */
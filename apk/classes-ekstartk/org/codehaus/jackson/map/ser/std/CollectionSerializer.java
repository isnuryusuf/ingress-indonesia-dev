package org.codehaus.jackson.map.ser.std;

import java.util.Collection;
import java.util.Iterator;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.ser.impl.PropertySerializerMap;
import org.codehaus.jackson.type.JavaType;

public class CollectionSerializer extends AsArraySerializerBase<Collection<?>>
{
  public CollectionSerializer(JavaType paramJavaType, boolean paramBoolean, TypeSerializer paramTypeSerializer, BeanProperty paramBeanProperty, JsonSerializer<Object> paramJsonSerializer)
  {
    super(Collection.class, paramJavaType, paramBoolean, paramTypeSerializer, paramBeanProperty, paramJsonSerializer);
  }

  public ContainerSerializerBase<?> _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
  {
    return new CollectionSerializer(this._elementType, this._staticTyping, paramTypeSerializer, this._property, this._elementSerializer);
  }

  public void serializeContents(Collection<?> paramCollection, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    if (this._elementSerializer != null)
      serializeContentsUsing(paramCollection, paramJsonGenerator, paramSerializerProvider, this._elementSerializer);
    Iterator localIterator;
    do
    {
      return;
      localIterator = paramCollection.iterator();
    }
    while (!localIterator.hasNext());
    Object localObject1 = this._dynamicSerializers;
    TypeSerializer localTypeSerializer = this._valueTypeSerializer;
    int i = 0;
    while (true)
    {
      Object localObject2;
      Class localClass;
      Object localObject3;
      try
      {
        localObject2 = localIterator.next();
        if (localObject2 == null)
        {
          paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
          i++;
          if (localIterator.hasNext())
            continue;
          return;
        }
        localClass = localObject2.getClass();
        localObject3 = ((PropertySerializerMap)localObject1).serializerFor(localClass);
        if (localObject3 == null)
        {
          if (this._elementType.hasGenericTypes())
          {
            localJsonSerializer1 = _findAndAddDynamic((PropertySerializerMap)localObject1, paramSerializerProvider.constructSpecializedType(this._elementType, localClass), paramSerializerProvider);
            PropertySerializerMap localPropertySerializerMap = this._dynamicSerializers;
            JsonSerializer localJsonSerializer2 = localJsonSerializer1;
            localObject1 = localPropertySerializerMap;
            localObject3 = localJsonSerializer2;
          }
        }
        else
        {
          if (localTypeSerializer != null)
            break label197;
          ((JsonSerializer)localObject3).serialize(localObject2, paramJsonGenerator, paramSerializerProvider);
          continue;
        }
      }
      catch (Exception localException)
      {
        wrapAndThrow(paramSerializerProvider, localException, paramCollection, i);
        return;
      }
      JsonSerializer localJsonSerializer1 = _findAndAddDynamic((PropertySerializerMap)localObject1, localClass, paramSerializerProvider);
      continue;
      label197: ((JsonSerializer)localObject3).serializeWithType(localObject2, paramJsonGenerator, paramSerializerProvider, localTypeSerializer);
    }
  }

  public void serializeContentsUsing(Collection<?> paramCollection, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, JsonSerializer<Object> paramJsonSerializer)
  {
    Iterator localIterator = paramCollection.iterator();
    TypeSerializer localTypeSerializer;
    int i;
    if (localIterator.hasNext())
    {
      localTypeSerializer = this._valueTypeSerializer;
      i = 0;
    }
    while (true)
    {
      Object localObject = localIterator.next();
      if (localObject == null);
      try
      {
        paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
        while (true)
        {
          i++;
          if (localIterator.hasNext())
            break;
          return;
          if (localTypeSerializer != null)
            break label92;
          paramJsonSerializer.serialize(localObject, paramJsonGenerator, paramSerializerProvider);
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          wrapAndThrow(paramSerializerProvider, localException, paramCollection, i);
          continue;
          label92: paramJsonSerializer.serializeWithType(localObject, paramJsonGenerator, paramSerializerProvider, localTypeSerializer);
        }
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.CollectionSerializer
 * JD-Core Version:    0.6.2
 */
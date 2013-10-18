package org.codehaus.jackson.map.ser.std;

import java.util.Iterator;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.type.JavaType;

@JacksonStdImpl
public class IterableSerializer extends AsArraySerializerBase<Iterable<?>>
{
  public IterableSerializer(JavaType paramJavaType, boolean paramBoolean, TypeSerializer paramTypeSerializer, BeanProperty paramBeanProperty)
  {
    super(Iterable.class, paramJavaType, paramBoolean, paramTypeSerializer, paramBeanProperty, null);
  }

  public ContainerSerializerBase<?> _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
  {
    return new IterableSerializer(this._elementType, this._staticTyping, paramTypeSerializer, this._property);
  }

  public void serializeContents(Iterable<?> paramIterable, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    Object localObject1 = null;
    Iterator localIterator = paramIterable.iterator();
    TypeSerializer localTypeSerializer;
    JsonSerializer localJsonSerializer1;
    if (localIterator.hasNext())
    {
      localTypeSerializer = this._valueTypeSerializer;
      localJsonSerializer1 = null;
    }
    while (true)
    {
      Object localObject2 = localIterator.next();
      if (localObject2 == null)
        paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
      while (!localIterator.hasNext())
      {
        return;
        Class localClass = localObject2.getClass();
        if (localClass == localObject1);
        for (JsonSerializer localJsonSerializer2 = localJsonSerializer1; ; localJsonSerializer2 = localJsonSerializer1)
        {
          if (localTypeSerializer != null)
            break label118;
          localJsonSerializer2.serialize(localObject2, paramJsonGenerator, paramSerializerProvider);
          break;
          localJsonSerializer1 = paramSerializerProvider.findValueSerializer(localClass, this._property);
          localObject1 = localClass;
        }
        label118: localJsonSerializer2.serializeWithType(localObject2, paramJsonGenerator, paramSerializerProvider, localTypeSerializer);
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.IterableSerializer
 * JD-Core Version:    0.6.2
 */
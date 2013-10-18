package org.codehaus.jackson.map.ser.std;

import java.util.Collection;
import java.util.Iterator;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.ResolvableSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public class StringCollectionSerializer extends StaticListSerializerBase<Collection<String>>
  implements ResolvableSerializer
{
  protected JsonSerializer<String> _serializer;

  public StringCollectionSerializer(BeanProperty paramBeanProperty)
  {
    super(Collection.class, paramBeanProperty);
  }

  private final void serializeContents(Collection<String> paramCollection, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    if (this._serializer != null)
      serializeUsingCustom(paramCollection, paramJsonGenerator, paramSerializerProvider);
    while (true)
    {
      return;
      Iterator localIterator = paramCollection.iterator();
      int i = 0;
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (str == null);
        try
        {
          paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
          break label85;
          paramJsonGenerator.writeString(str);
        }
        catch (Exception localException)
        {
          wrapAndThrow(paramSerializerProvider, localException, paramCollection, i);
        }
        continue;
        label85: i++;
      }
    }
  }

  private void serializeUsingCustom(Collection<String> paramCollection, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    JsonSerializer localJsonSerializer = this._serializer;
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (str == null)
        try
        {
          paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
        }
        catch (Exception localException)
        {
          wrapAndThrow(paramSerializerProvider, localException, paramCollection, 0);
        }
      else
        localJsonSerializer.serialize(str, paramJsonGenerator, paramSerializerProvider);
    }
  }

  public void resolve(SerializerProvider paramSerializerProvider)
  {
    JsonSerializer localJsonSerializer = paramSerializerProvider.findValueSerializer(String.class, this._property);
    if (!isDefaultSerializer(localJsonSerializer))
      this._serializer = localJsonSerializer;
  }

  public void serialize(Collection<String> paramCollection, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeStartArray();
    if (this._serializer == null)
      serializeContents(paramCollection, paramJsonGenerator, paramSerializerProvider);
    while (true)
    {
      paramJsonGenerator.writeEndArray();
      return;
      serializeUsingCustom(paramCollection, paramJsonGenerator, paramSerializerProvider);
    }
  }

  public void serializeWithType(Collection<String> paramCollection, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    paramTypeSerializer.writeTypePrefixForArray(paramCollection, paramJsonGenerator);
    if (this._serializer == null)
      serializeContents(paramCollection, paramJsonGenerator, paramSerializerProvider);
    while (true)
    {
      paramTypeSerializer.writeTypeSuffixForArray(paramCollection, paramJsonGenerator);
      return;
      serializeUsingCustom(paramCollection, paramJsonGenerator, paramSerializerProvider);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StringCollectionSerializer
 * JD-Core Version:    0.6.2
 */
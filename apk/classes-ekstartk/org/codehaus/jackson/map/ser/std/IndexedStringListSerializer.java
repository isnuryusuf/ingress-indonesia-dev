package org.codehaus.jackson.map.ser.std;

import java.util.List;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.ResolvableSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public final class IndexedStringListSerializer extends StaticListSerializerBase<List<String>>
  implements ResolvableSerializer
{
  protected JsonSerializer<String> _serializer;

  public IndexedStringListSerializer(BeanProperty paramBeanProperty)
  {
    super(List.class, paramBeanProperty);
  }

  private final void serializeContents(List<String> paramList, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    for (int i = 0; ; i++)
    {
      try
      {
        int j = paramList.size();
        if (i < j)
        {
          String str = (String)paramList.get(i);
          if (str == null)
            paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
          else
            paramJsonGenerator.writeString(str);
        }
      }
      catch (Exception localException)
      {
        wrapAndThrow(paramSerializerProvider, localException, paramList, i);
      }
      return;
    }
  }

  private final void serializeUsingCustom(List<String> paramList, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    for (int i = 0; ; i++)
    {
      try
      {
        int j = paramList.size();
        JsonSerializer localJsonSerializer = this._serializer;
        if (i < j)
        {
          String str = (String)paramList.get(i);
          if (str == null)
            paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
          else
            localJsonSerializer.serialize(str, paramJsonGenerator, paramSerializerProvider);
        }
      }
      catch (Exception localException)
      {
        wrapAndThrow(paramSerializerProvider, localException, paramList, i);
      }
      return;
    }
  }

  public final void resolve(SerializerProvider paramSerializerProvider)
  {
    JsonSerializer localJsonSerializer = paramSerializerProvider.findValueSerializer(String.class, this._property);
    if (!isDefaultSerializer(localJsonSerializer))
      this._serializer = localJsonSerializer;
  }

  public final void serialize(List<String> paramList, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeStartArray();
    if (this._serializer == null)
      serializeContents(paramList, paramJsonGenerator, paramSerializerProvider);
    while (true)
    {
      paramJsonGenerator.writeEndArray();
      return;
      serializeUsingCustom(paramList, paramJsonGenerator, paramSerializerProvider);
    }
  }

  public final void serializeWithType(List<String> paramList, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    paramTypeSerializer.writeTypePrefixForArray(paramList, paramJsonGenerator);
    if (this._serializer == null)
      serializeContents(paramList, paramJsonGenerator, paramSerializerProvider);
    while (true)
    {
      paramTypeSerializer.writeTypeSuffixForArray(paramList, paramJsonGenerator);
      return;
      serializeUsingCustom(paramList, paramJsonGenerator, paramSerializerProvider);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.IndexedStringListSerializer
 * JD-Core Version:    0.6.2
 */
package org.codehaus.jackson.map.ser.std;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.JsonSerializer;
import org.codehaus.jackson.map.ResolvableSerializer;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public final class StdArraySerializers$StringArraySerializer extends StdArraySerializers.ArraySerializerBase<String[]>
  implements ResolvableSerializer
{
  protected JsonSerializer<Object> _elementSerializer;

  public StdArraySerializers$StringArraySerializer(BeanProperty paramBeanProperty)
  {
    super([Ljava.lang.String.class, null, paramBeanProperty);
  }

  private void serializeContentsSlow(String[] paramArrayOfString, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, JsonSerializer<Object> paramJsonSerializer)
  {
    int i = 0;
    int j = paramArrayOfString.length;
    if (i < j)
    {
      if (paramArrayOfString[i] == null)
        paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
      while (true)
      {
        i++;
        break;
        paramJsonSerializer.serialize(paramArrayOfString[i], paramJsonGenerator, paramSerializerProvider);
      }
    }
  }

  public final ContainerSerializerBase<?> _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
  {
    return this;
  }

  public final void resolve(SerializerProvider paramSerializerProvider)
  {
    JsonSerializer localJsonSerializer = paramSerializerProvider.findValueSerializer(String.class, this._property);
    if ((localJsonSerializer != null) && (localJsonSerializer.getClass().getAnnotation(JacksonStdImpl.class) == null))
      this._elementSerializer = localJsonSerializer;
  }

  public final void serializeContents(String[] paramArrayOfString, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    int i = paramArrayOfString.length;
    if (i == 0)
      return;
    if (this._elementSerializer != null)
    {
      serializeContentsSlow(paramArrayOfString, paramJsonGenerator, paramSerializerProvider, this._elementSerializer);
      return;
    }
    int j = 0;
    label32: if (j < i)
    {
      if (paramArrayOfString[j] != null)
        break label56;
      paramJsonGenerator.writeNull();
    }
    while (true)
    {
      j++;
      break label32;
      break;
      label56: paramJsonGenerator.writeString(paramArrayOfString[j]);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdArraySerializers.StringArraySerializer
 * JD-Core Version:    0.6.2
 */
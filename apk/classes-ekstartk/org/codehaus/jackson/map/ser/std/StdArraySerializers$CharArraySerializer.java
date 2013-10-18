package org.codehaus.jackson.map.ser.std;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializationConfig.Feature;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public final class StdArraySerializers$CharArraySerializer extends SerializerBase<char[]>
{
  public StdArraySerializers$CharArraySerializer()
  {
    super([C.class);
  }

  private final void _writeArrayContents(JsonGenerator paramJsonGenerator, char[] paramArrayOfChar)
  {
    int i = 0;
    int j = paramArrayOfChar.length;
    while (i < j)
    {
      paramJsonGenerator.writeString(paramArrayOfChar, i, 1);
      i++;
    }
  }

  public final void serialize(char[] paramArrayOfChar, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    if (paramSerializerProvider.isEnabled(SerializationConfig.Feature.WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS))
    {
      paramJsonGenerator.writeStartArray();
      _writeArrayContents(paramJsonGenerator, paramArrayOfChar);
      paramJsonGenerator.writeEndArray();
      return;
    }
    paramJsonGenerator.writeString(paramArrayOfChar, 0, paramArrayOfChar.length);
  }

  public final void serializeWithType(char[] paramArrayOfChar, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    if (paramSerializerProvider.isEnabled(SerializationConfig.Feature.WRITE_CHAR_ARRAYS_AS_JSON_ARRAYS))
    {
      paramTypeSerializer.writeTypePrefixForArray(paramArrayOfChar, paramJsonGenerator);
      _writeArrayContents(paramJsonGenerator, paramArrayOfChar);
      paramTypeSerializer.writeTypeSuffixForArray(paramArrayOfChar, paramJsonGenerator);
      return;
    }
    paramTypeSerializer.writeTypePrefixForScalar(paramArrayOfChar, paramJsonGenerator);
    paramJsonGenerator.writeString(paramArrayOfChar, 0, paramArrayOfChar.length);
    paramTypeSerializer.writeTypeSuffixForScalar(paramArrayOfChar, paramJsonGenerator);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdArraySerializers.CharArraySerializer
 * JD-Core Version:    0.6.2
 */
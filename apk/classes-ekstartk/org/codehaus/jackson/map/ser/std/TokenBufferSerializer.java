package org.codehaus.jackson.map.ser.std;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.TypeSerializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.util.TokenBuffer;

@JacksonStdImpl
public class TokenBufferSerializer extends SerializerBase<TokenBuffer>
{
  public TokenBufferSerializer()
  {
    super(TokenBuffer.class);
  }

  public void serialize(TokenBuffer paramTokenBuffer, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramTokenBuffer.serialize(paramJsonGenerator);
  }

  public final void serializeWithType(TokenBuffer paramTokenBuffer, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    paramTypeSerializer.writeTypePrefixForScalar(paramTokenBuffer, paramJsonGenerator);
    serialize(paramTokenBuffer, paramJsonGenerator, paramSerializerProvider);
    paramTypeSerializer.writeTypeSuffixForScalar(paramTokenBuffer, paramJsonGenerator);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.TokenBufferSerializer
 * JD-Core Version:    0.6.2
 */
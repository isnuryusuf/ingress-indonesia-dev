package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.util.TokenBuffer;

@JacksonStdImpl
public class TokenBufferDeserializer extends StdScalarDeserializer<TokenBuffer>
{
  public TokenBufferDeserializer()
  {
    super(TokenBuffer.class);
  }

  public TokenBuffer deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    TokenBuffer localTokenBuffer = new TokenBuffer(paramJsonParser.getCodec());
    localTokenBuffer.copyCurrentStructure(paramJsonParser);
    return localTokenBuffer;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.TokenBufferDeserializer
 * JD-Core Version:    0.6.2
 */
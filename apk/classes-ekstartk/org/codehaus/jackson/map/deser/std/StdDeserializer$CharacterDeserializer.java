package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public final class StdDeserializer$CharacterDeserializer extends StdDeserializer.PrimitiveOrWrapperDeserializer<Character>
{
  public StdDeserializer$CharacterDeserializer(Class<Character> paramClass, Character paramCharacter)
  {
    super(paramClass, paramCharacter);
  }

  public final Character deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if (localJsonToken == JsonToken.VALUE_NUMBER_INT)
    {
      int i = paramJsonParser.getIntValue();
      if ((i >= 0) && (i <= 65535))
        return Character.valueOf((char)i);
    }
    else if (localJsonToken == JsonToken.VALUE_STRING)
    {
      String str = paramJsonParser.getText();
      if (str.length() == 1)
        return Character.valueOf(str.charAt(0));
      if (str.length() == 0)
        return (Character)getEmptyValue();
    }
    throw paramDeserializationContext.mappingException(this._valueClass, localJsonToken);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdDeserializer.CharacterDeserializer
 * JD-Core Version:    0.6.2
 */
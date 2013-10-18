package com.nianticproject.ingress.common.o;

import com.nianticproject.ingress.common.w.aa;
import com.nianticproject.ingress.gameentity.GameEntityBuilder;
import com.nianticproject.ingress.gameentity.JsonConstants.SerializationTag;
import com.nianticproject.ingress.gameentity.PersistentGameEntity;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.aj;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;

final class a extends JsonDeserializer<f>
{
  private static final aa a = new aa(a.class);

  private static f a(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    try
    {
      aj.a("GameEntityDeserializer.deserialize");
      if (!paramJsonParser.isExpectedStartArrayToken())
        throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.START_ARRAY, "Unexpected text: " + paramJsonParser.getText());
    }
    finally
    {
      aj.b();
    }
    String str1 = paramJsonParser.nextTextValue();
    if (str1 == null)
      throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.VALUE_STRING, "Expected GUID, unexpected text: " + paramJsonParser.getText());
    long l = paramJsonParser.nextLongValue(-1L);
    if (l == -1L)
      throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.VALUE_NUMBER_INT, "Expected positive lastModifiedMs, unexpected text: " + paramJsonParser.getText());
    if (paramJsonParser.nextToken() != JsonToken.START_OBJECT)
      throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.START_OBJECT, "Expected components object, unexpected text: " + paramJsonParser.getText());
    GameEntityBuilder localGameEntityBuilder = new GameEntityBuilder(str1, l);
    JsonToken localJsonToken = paramJsonParser.nextToken();
    if (localJsonToken == JsonToken.FIELD_NAME)
    {
      String str2 = paramJsonParser.getCurrentName();
      paramJsonParser.nextToken();
      JsonConstants.SerializationTag localSerializationTag = JsonConstants.SerializationTag.forTag(str2);
      if (localSerializationTag == null)
      {
        paramJsonParser.skipChildren();
        a.b("Skipping unknown component tag " + str2);
      }
      while (true)
      {
        localJsonToken = paramJsonParser.nextToken();
        break;
        Class localClass = localSerializationTag.getComponentClass();
        com.nianticproject.ingress.gameentity.a locala;
        try
        {
          locala = (com.nianticproject.ingress.gameentity.a)paramJsonParser.readValueAs(localClass);
          if (locala == null)
            throw paramDeserializationContext.instantiationException(localClass, "Deserialized as null");
        }
        catch (RuntimeException localRuntimeException)
        {
          throw paramDeserializationContext.instantiationException(localClass, localRuntimeException);
        }
        localGameEntityBuilder.a(locala);
      }
    }
    if (paramJsonParser.nextToken() != JsonToken.END_ARRAY)
      throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.END_ARRAY, "Expected components object, unexpected text: " + paramJsonParser.getText());
    PersistentGameEntity localPersistentGameEntity = localGameEntityBuilder.a();
    aj.b();
    return localPersistentGameEntity;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.o.a
 * JD-Core Version:    0.6.2
 */
package org.codehaus.jackson.map.jsontype.impl;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.annotate.JsonTypeInfo.As;
import org.codehaus.jackson.map.BeanProperty;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.jsontype.TypeIdResolver;
import org.codehaus.jackson.type.JavaType;

public class AsArrayTypeDeserializer extends TypeDeserializerBase
{
  public AsArrayTypeDeserializer(JavaType paramJavaType, TypeIdResolver paramTypeIdResolver, BeanProperty paramBeanProperty, Class<?> paramClass)
  {
    super(paramJavaType, paramTypeIdResolver, paramBeanProperty, paramClass);
  }

  private final Object _deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    Object localObject = _findDeserializer(paramDeserializationContext, _locateTypeId(paramJsonParser, paramDeserializationContext)).deserialize(paramJsonParser, paramDeserializationContext);
    if (paramJsonParser.nextToken() != JsonToken.END_ARRAY)
      throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.END_ARRAY, "expected closing END_ARRAY after type information and deserialized value");
    return localObject;
  }

  protected final String _locateTypeId(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (!paramJsonParser.isExpectedStartArrayToken())
      throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.START_ARRAY, "need JSON Array to contain As.WRAPPER_ARRAY type information for class " + baseTypeName());
    if (paramJsonParser.nextToken() != JsonToken.VALUE_STRING)
      throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.VALUE_STRING, "need JSON String that contains type id (for subtype of " + baseTypeName() + ")");
    String str = paramJsonParser.getText();
    paramJsonParser.nextToken();
    return str;
  }

  public Object deserializeTypedFromAny(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    return _deserialize(paramJsonParser, paramDeserializationContext);
  }

  public Object deserializeTypedFromArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    return _deserialize(paramJsonParser, paramDeserializationContext);
  }

  public Object deserializeTypedFromObject(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    return _deserialize(paramJsonParser, paramDeserializationContext);
  }

  public Object deserializeTypedFromScalar(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    return _deserialize(paramJsonParser, paramDeserializationContext);
  }

  public JsonTypeInfo.As getTypeInclusion()
  {
    return JsonTypeInfo.As.WRAPPER_ARRAY;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.jsontype.impl.AsArrayTypeDeserializer
 * JD-Core Version:    0.6.2
 */
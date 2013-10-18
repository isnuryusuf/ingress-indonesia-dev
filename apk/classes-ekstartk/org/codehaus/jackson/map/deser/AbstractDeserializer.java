package org.codehaus.jackson.map.deser;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.type.JavaType;

public class AbstractDeserializer extends JsonDeserializer<Object>
{
  protected final JavaType _baseType;

  public AbstractDeserializer(JavaType paramJavaType)
  {
    this._baseType = paramJavaType;
  }

  public Object deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    throw paramDeserializationContext.instantiationException(this._baseType.getRawClass(), "abstract types can only be instantiated with additional type information");
  }

  public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    switch (AbstractDeserializer.1.$SwitchMap$org$codehaus$jackson$JsonToken[paramJsonParser.getCurrentToken().ordinal()])
    {
    default:
      return paramTypeDeserializer.deserializeTypedFromObject(paramJsonParser, paramDeserializationContext);
    case 1:
      return paramJsonParser.getText();
    case 2:
      if (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.USE_BIG_INTEGER_FOR_INTS))
        return paramJsonParser.getBigIntegerValue();
      return Integer.valueOf(paramJsonParser.getIntValue());
    case 3:
      if (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.USE_BIG_DECIMAL_FOR_FLOATS))
        return paramJsonParser.getDecimalValue();
      return Double.valueOf(paramJsonParser.getDoubleValue());
    case 4:
      return Boolean.TRUE;
    case 5:
      return Boolean.FALSE;
    case 6:
      return paramJsonParser.getEmbeddedObject();
    case 7:
      return null;
    case 8:
    }
    return paramTypeDeserializer.deserializeTypedFromAny(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.AbstractDeserializer
 * JD-Core Version:    0.6.2
 */
package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.annotate.JsonCachable;
import org.codehaus.jackson.map.introspect.AnnotatedMethod;
import org.codehaus.jackson.map.util.ClassUtil;
import org.codehaus.jackson.map.util.EnumResolver;

@JsonCachable
public class EnumDeserializer extends StdScalarDeserializer<Enum<?>>
{
  protected final EnumResolver<?> _resolver;

  public EnumDeserializer(EnumResolver<?> paramEnumResolver)
  {
    super(Enum.class);
    this._resolver = paramEnumResolver;
  }

  public static JsonDeserializer<?> deserializerForCreator(DeserializationConfig paramDeserializationConfig, Class<?> paramClass, AnnotatedMethod paramAnnotatedMethod)
  {
    if (paramAnnotatedMethod.getParameterType(0) != String.class)
      throw new IllegalArgumentException("Parameter #0 type for factory method (" + paramAnnotatedMethod + ") not suitable, must be java.lang.String");
    if (paramDeserializationConfig.isEnabled(DeserializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS))
      ClassUtil.checkAndFixAccess(paramAnnotatedMethod.getMember());
    return new EnumDeserializer.FactoryBasedDeserializer(paramClass, paramAnnotatedMethod);
  }

  public Enum<?> deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    Enum localEnum;
    if (localJsonToken == JsonToken.VALUE_STRING)
    {
      String str = paramJsonParser.getText();
      localEnum = this._resolver.findEnum(str);
      if (localEnum == null)
        throw paramDeserializationContext.weirdStringException(this._resolver.getEnumClass(), "value not one of declared Enum instance names");
    }
    else if (localJsonToken == JsonToken.VALUE_NUMBER_INT)
    {
      if (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.FAIL_ON_NUMBERS_FOR_ENUMS))
        throw paramDeserializationContext.mappingException("Not allowed to deserialize Enum value out of JSON number (disable DeserializationConfig.Feature.FAIL_ON_NUMBERS_FOR_ENUMS to allow)");
      int i = paramJsonParser.getIntValue();
      localEnum = this._resolver.getEnum(i);
      if (localEnum == null)
        throw paramDeserializationContext.weirdNumberException(this._resolver.getEnumClass(), "index value outside legal index range [0.." + this._resolver.lastValidIndex() + "]");
    }
    else
    {
      throw paramDeserializationContext.mappingException(this._resolver.getEnumClass());
    }
    return localEnum;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.EnumDeserializer
 * JD-Core Version:    0.6.2
 */
package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public class ClassDeserializer extends StdScalarDeserializer<Class<?>>
{
  public ClassDeserializer()
  {
    super(Class.class);
  }

  public Class<?> deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if (localJsonToken == JsonToken.VALUE_STRING)
    {
      String str = paramJsonParser.getText();
      if (str.indexOf('.') < 0)
      {
        if ("int".equals(str))
          return Integer.TYPE;
        if ("long".equals(str))
          return Long.TYPE;
        if ("float".equals(str))
          return Float.TYPE;
        if ("double".equals(str))
          return Double.TYPE;
        if ("boolean".equals(str))
          return Boolean.TYPE;
        if ("byte".equals(str))
          return Byte.TYPE;
        if ("char".equals(str))
          return Character.TYPE;
        if ("short".equals(str))
          return Short.TYPE;
        if ("void".equals(str))
          return Void.TYPE;
      }
      try
      {
        Class localClass = Class.forName(paramJsonParser.getText());
        return localClass;
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        throw paramDeserializationContext.instantiationException(this._valueClass, localClassNotFoundException);
      }
    }
    throw paramDeserializationContext.mappingException(this._valueClass, localJsonToken);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.ClassDeserializer
 * JD-Core Version:    0.6.2
 */
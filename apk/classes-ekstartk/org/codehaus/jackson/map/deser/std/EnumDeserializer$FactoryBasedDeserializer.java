package org.codehaus.jackson.map.deser.std;

import java.lang.reflect.Method;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.introspect.AnnotatedMethod;
import org.codehaus.jackson.map.util.ClassUtil;

public class EnumDeserializer$FactoryBasedDeserializer extends StdScalarDeserializer<Object>
{
  protected final Class<?> _enumClass;
  protected final Method _factory;

  public EnumDeserializer$FactoryBasedDeserializer(Class<?> paramClass, AnnotatedMethod paramAnnotatedMethod)
  {
    super(Enum.class);
    this._enumClass = paramClass;
    this._factory = paramAnnotatedMethod.getAnnotated();
  }

  public Object deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (paramJsonParser.getCurrentToken() != JsonToken.VALUE_STRING)
      throw paramDeserializationContext.mappingException(this._enumClass);
    String str = paramJsonParser.getText();
    try
    {
      Object localObject = this._factory.invoke(this._enumClass, new Object[] { str });
      return localObject;
    }
    catch (Exception localException)
    {
      ClassUtil.unwrapAndThrowAsIAE(localException);
    }
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.EnumDeserializer.FactoryBasedDeserializer
 * JD-Core Version:    0.6.2
 */
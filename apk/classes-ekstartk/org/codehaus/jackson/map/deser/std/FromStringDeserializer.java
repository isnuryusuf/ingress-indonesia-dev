package org.codehaus.jackson.map.deser.std;

import java.util.ArrayList;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;

public abstract class FromStringDeserializer<T> extends StdScalarDeserializer<T>
{
  protected FromStringDeserializer(Class<?> paramClass)
  {
    super(paramClass);
  }

  public static Iterable<FromStringDeserializer<?>> all()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new FromStringDeserializer.UUIDDeserializer());
    localArrayList.add(new FromStringDeserializer.URLDeserializer());
    localArrayList.add(new FromStringDeserializer.URIDeserializer());
    localArrayList.add(new FromStringDeserializer.CurrencyDeserializer());
    localArrayList.add(new FromStringDeserializer.PatternDeserializer());
    localArrayList.add(new FromStringDeserializer.LocaleDeserializer());
    localArrayList.add(new FromStringDeserializer.InetAddressDeserializer());
    localArrayList.add(new FromStringDeserializer.TimeZoneDeserializer());
    return localArrayList;
  }

  protected abstract T _deserialize(String paramString, DeserializationContext paramDeserializationContext);

  protected T _deserializeEmbedded(Object paramObject, DeserializationContext paramDeserializationContext)
  {
    throw paramDeserializationContext.mappingException("Don't know how to convert embedded Object of type " + paramObject.getClass().getName() + " into " + this._valueClass.getName());
  }

  public final T deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    String str;
    Object localObject2;
    if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING)
    {
      str = paramJsonParser.getText().trim();
      int i = str.length();
      localObject2 = null;
      if (i != 0);
    }
    while (true)
    {
      return localObject2;
      try
      {
        Object localObject3 = _deserialize(str, paramDeserializationContext);
        localObject2 = localObject3;
        if (localObject2 != null)
          continue;
        label55: throw paramDeserializationContext.weirdStringException(this._valueClass, "not a valid textual representation");
        if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_EMBEDDED_OBJECT)
        {
          Object localObject1 = paramJsonParser.getEmbeddedObject();
          localObject2 = null;
          if (localObject1 == null)
            continue;
          if (this._valueClass.isAssignableFrom(localObject1.getClass()))
            return localObject1;
          return _deserializeEmbedded(localObject1, paramDeserializationContext);
        }
        throw paramDeserializationContext.mappingException(this._valueClass);
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        break label55;
      }
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.FromStringDeserializer
 * JD-Core Version:    0.6.2
 */
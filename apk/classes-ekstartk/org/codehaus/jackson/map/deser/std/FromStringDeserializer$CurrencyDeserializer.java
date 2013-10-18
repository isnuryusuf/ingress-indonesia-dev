package org.codehaus.jackson.map.deser.std;

import java.util.Currency;
import org.codehaus.jackson.map.DeserializationContext;

public class FromStringDeserializer$CurrencyDeserializer extends FromStringDeserializer<Currency>
{
  public FromStringDeserializer$CurrencyDeserializer()
  {
    super(Currency.class);
  }

  protected Currency _deserialize(String paramString, DeserializationContext paramDeserializationContext)
  {
    return Currency.getInstance(paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.FromStringDeserializer.CurrencyDeserializer
 * JD-Core Version:    0.6.2
 */
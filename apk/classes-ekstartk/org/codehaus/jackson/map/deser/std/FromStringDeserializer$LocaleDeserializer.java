package org.codehaus.jackson.map.deser.std;

import java.util.Locale;
import org.codehaus.jackson.map.DeserializationContext;

public class FromStringDeserializer$LocaleDeserializer extends FromStringDeserializer<Locale>
{
  public FromStringDeserializer$LocaleDeserializer()
  {
    super(Locale.class);
  }

  protected Locale _deserialize(String paramString, DeserializationContext paramDeserializationContext)
  {
    int i = paramString.indexOf('_');
    if (i < 0)
      return new Locale(paramString);
    String str1 = paramString.substring(0, i);
    String str2 = paramString.substring(i + 1);
    int j = str2.indexOf('_');
    if (j < 0)
      return new Locale(str1, str2);
    return new Locale(str1, str2.substring(0, j), str2.substring(j + 1));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.FromStringDeserializer.LocaleDeserializer
 * JD-Core Version:    0.6.2
 */
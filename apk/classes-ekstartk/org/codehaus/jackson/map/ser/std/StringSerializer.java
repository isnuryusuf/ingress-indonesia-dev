package org.codehaus.jackson.map.ser.std;

import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public final class StringSerializer extends NonTypedScalarSerializerBase<String>
{
  public StringSerializer()
  {
    super(String.class);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StringSerializer
 * JD-Core Version:    0.6.2
 */
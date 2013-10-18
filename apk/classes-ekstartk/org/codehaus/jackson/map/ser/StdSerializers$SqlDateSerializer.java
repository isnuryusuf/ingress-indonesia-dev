package org.codehaus.jackson.map.ser;

import java.sql.Date;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.ser.std.ScalarSerializerBase;

@JacksonStdImpl
public final class StdSerializers$SqlDateSerializer extends ScalarSerializerBase<Date>
{
  public StdSerializers$SqlDateSerializer()
  {
    super(Date.class);
  }

  public final void serialize(Date paramDate, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeString(paramDate.toString());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.StdSerializers.SqlDateSerializer
 * JD-Core Version:    0.6.2
 */
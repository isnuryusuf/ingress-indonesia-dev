package org.codehaus.jackson.map.ser;

import java.sql.Time;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.ser.std.ScalarSerializerBase;

@JacksonStdImpl
public final class StdSerializers$SqlTimeSerializer extends ScalarSerializerBase<Time>
{
  public StdSerializers$SqlTimeSerializer()
  {
    super(Time.class);
  }

  public final void serialize(Time paramTime, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeString(paramTime.toString());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.StdSerializers.SqlTimeSerializer
 * JD-Core Version:    0.6.2
 */
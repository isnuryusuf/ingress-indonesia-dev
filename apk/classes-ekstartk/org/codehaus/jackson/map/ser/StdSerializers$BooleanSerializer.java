package org.codehaus.jackson.map.ser;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.ser.std.NonTypedScalarSerializerBase;

@JacksonStdImpl
public final class StdSerializers$BooleanSerializer extends NonTypedScalarSerializerBase<Boolean>
{
  final boolean _forPrimitive;

  public StdSerializers$BooleanSerializer(boolean paramBoolean)
  {
    super(Boolean.class);
    this._forPrimitive = paramBoolean;
  }

  public final void serialize(Boolean paramBoolean, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeBoolean(paramBoolean.booleanValue());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.StdSerializers.BooleanSerializer
 * JD-Core Version:    0.6.2
 */
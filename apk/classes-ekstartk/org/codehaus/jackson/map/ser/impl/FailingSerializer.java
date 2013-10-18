package org.codehaus.jackson.map.ser.impl;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;
import org.codehaus.jackson.map.ser.std.SerializerBase;

public final class FailingSerializer extends SerializerBase<Object>
{
  final String _msg;

  public FailingSerializer(String paramString)
  {
    super(Object.class);
    this._msg = paramString;
  }

  public final void serialize(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    throw new JsonGenerationException(this._msg);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.impl.FailingSerializer
 * JD-Core Version:    0.6.2
 */
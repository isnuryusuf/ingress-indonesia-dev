package org.codehaus.jackson.map.deser.std;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.util.UUID;
import org.codehaus.jackson.map.DeserializationContext;

public class FromStringDeserializer$UUIDDeserializer extends FromStringDeserializer<UUID>
{
  public FromStringDeserializer$UUIDDeserializer()
  {
    super(UUID.class);
  }

  protected UUID _deserialize(String paramString, DeserializationContext paramDeserializationContext)
  {
    return UUID.fromString(paramString);
  }

  protected UUID _deserializeEmbedded(Object paramObject, DeserializationContext paramDeserializationContext)
  {
    if ((paramObject instanceof byte[]))
    {
      byte[] arrayOfByte = (byte[])paramObject;
      if (arrayOfByte.length != 16)
        paramDeserializationContext.mappingException("Can only construct UUIDs from 16 byte arrays; got " + arrayOfByte.length + " bytes");
      DataInputStream localDataInputStream = new DataInputStream(new ByteArrayInputStream(arrayOfByte));
      return new UUID(localDataInputStream.readLong(), localDataInputStream.readLong());
    }
    super._deserializeEmbedded(paramObject, paramDeserializationContext);
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.FromStringDeserializer.UUIDDeserializer
 * JD-Core Version:    0.6.2
 */
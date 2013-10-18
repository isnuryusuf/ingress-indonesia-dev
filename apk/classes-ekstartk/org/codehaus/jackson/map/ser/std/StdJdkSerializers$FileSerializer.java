package org.codehaus.jackson.map.ser.std;

import java.io.File;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.map.SerializerProvider;

public final class StdJdkSerializers$FileSerializer extends ScalarSerializerBase<File>
{
  public StdJdkSerializers$FileSerializer()
  {
    super(File.class);
  }

  public final void serialize(File paramFile, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeString(paramFile.getAbsolutePath());
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.std.StdJdkSerializers.FileSerializer
 * JD-Core Version:    0.6.2
 */
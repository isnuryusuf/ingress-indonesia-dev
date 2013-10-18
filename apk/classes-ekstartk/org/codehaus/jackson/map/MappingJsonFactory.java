package org.codehaus.jackson.map;

import org.codehaus.jackson.JsonFactory;

public class MappingJsonFactory extends JsonFactory
{
  public MappingJsonFactory()
  {
    this(null);
  }

  public MappingJsonFactory(ObjectMapper paramObjectMapper)
  {
    super(paramObjectMapper);
    if (paramObjectMapper == null)
      setCodec(new ObjectMapper(this));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.MappingJsonFactory
 * JD-Core Version:    0.6.2
 */
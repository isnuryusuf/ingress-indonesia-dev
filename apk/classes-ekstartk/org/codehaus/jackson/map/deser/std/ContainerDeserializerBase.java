package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.map.JsonDeserializer;

public abstract class ContainerDeserializerBase<T> extends StdDeserializer<T>
{
  protected ContainerDeserializerBase(Class<?> paramClass)
  {
    super(paramClass);
  }

  public abstract JsonDeserializer<Object> getContentDeserializer();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.ContainerDeserializerBase
 * JD-Core Version:    0.6.2
 */
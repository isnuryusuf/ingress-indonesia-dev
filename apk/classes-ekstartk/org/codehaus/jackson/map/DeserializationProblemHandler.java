package org.codehaus.jackson.map;

public abstract class DeserializationProblemHandler
{
  public boolean handleUnknownProperty(DeserializationContext paramDeserializationContext, JsonDeserializer<?> paramJsonDeserializer, Object paramObject, String paramString)
  {
    return false;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.DeserializationProblemHandler
 * JD-Core Version:    0.6.2
 */
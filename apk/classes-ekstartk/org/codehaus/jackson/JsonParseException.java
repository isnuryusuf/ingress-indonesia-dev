package org.codehaus.jackson;

public class JsonParseException extends JsonProcessingException
{
  public JsonParseException(String paramString, JsonLocation paramJsonLocation)
  {
    super(paramString, paramJsonLocation);
  }

  public JsonParseException(String paramString, JsonLocation paramJsonLocation, Throwable paramThrowable)
  {
    super(paramString, paramJsonLocation, paramThrowable);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.JsonParseException
 * JD-Core Version:    0.6.2
 */
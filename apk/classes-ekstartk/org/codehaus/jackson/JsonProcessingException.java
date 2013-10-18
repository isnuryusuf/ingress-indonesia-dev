package org.codehaus.jackson;

import java.io.IOException;

public class JsonProcessingException extends IOException
{
  protected JsonLocation mLocation;

  protected JsonProcessingException(String paramString)
  {
    super(paramString);
  }

  protected JsonProcessingException(String paramString, Throwable paramThrowable)
  {
    this(paramString, null, paramThrowable);
  }

  protected JsonProcessingException(String paramString, JsonLocation paramJsonLocation)
  {
    this(paramString, paramJsonLocation, null);
  }

  protected JsonProcessingException(String paramString, JsonLocation paramJsonLocation, Throwable paramThrowable)
  {
    super(paramString);
    if (paramThrowable != null)
      initCause(paramThrowable);
    this.mLocation = paramJsonLocation;
  }

  public JsonLocation getLocation()
  {
    return this.mLocation;
  }

  public String getMessage()
  {
    String str = super.getMessage();
    if (str == null)
      str = "N/A";
    JsonLocation localJsonLocation = getLocation();
    if (localJsonLocation != null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(str);
      localStringBuilder.append('\n');
      localStringBuilder.append(" at ");
      localStringBuilder.append(localJsonLocation.toString());
      str = localStringBuilder.toString();
    }
    return str;
  }

  public String toString()
  {
    return getClass().getName() + ": " + getMessage();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.JsonProcessingException
 * JD-Core Version:    0.6.2
 */
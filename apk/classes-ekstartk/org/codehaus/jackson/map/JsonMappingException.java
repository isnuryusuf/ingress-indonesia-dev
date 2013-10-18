package org.codehaus.jackson.map;

import java.util.Iterator;
import java.util.LinkedList;
import org.codehaus.jackson.JsonLocation;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;

public class JsonMappingException extends JsonProcessingException
{
  protected LinkedList<JsonMappingException.Reference> _path;

  public JsonMappingException(String paramString)
  {
    super(paramString);
  }

  public JsonMappingException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }

  public JsonMappingException(String paramString, JsonLocation paramJsonLocation)
  {
    super(paramString, paramJsonLocation);
  }

  public JsonMappingException(String paramString, JsonLocation paramJsonLocation, Throwable paramThrowable)
  {
    super(paramString, paramJsonLocation, paramThrowable);
  }

  public static JsonMappingException from(JsonParser paramJsonParser, String paramString)
  {
    return new JsonMappingException(paramString, paramJsonParser.getTokenLocation());
  }

  public static JsonMappingException from(JsonParser paramJsonParser, String paramString, Throwable paramThrowable)
  {
    return new JsonMappingException(paramString, paramJsonParser.getTokenLocation(), paramThrowable);
  }

  public static JsonMappingException wrapWithPath(Throwable paramThrowable, Object paramObject, int paramInt)
  {
    return wrapWithPath(paramThrowable, new JsonMappingException.Reference(paramObject, paramInt));
  }

  public static JsonMappingException wrapWithPath(Throwable paramThrowable, Object paramObject, String paramString)
  {
    return wrapWithPath(paramThrowable, new JsonMappingException.Reference(paramObject, paramString));
  }

  public static JsonMappingException wrapWithPath(Throwable paramThrowable, JsonMappingException.Reference paramReference)
  {
    if ((paramThrowable instanceof JsonMappingException));
    String str;
    for (JsonMappingException localJsonMappingException = (JsonMappingException)paramThrowable; ; localJsonMappingException = new JsonMappingException(str, null, paramThrowable))
    {
      localJsonMappingException.prependPath(paramReference);
      return localJsonMappingException;
      str = paramThrowable.getMessage();
      if ((str == null) || (str.length() == 0))
        str = "(was " + paramThrowable.getClass().getName() + ")";
    }
  }

  protected void _appendPathDesc(StringBuilder paramStringBuilder)
  {
    Iterator localIterator = this._path.iterator();
    while (localIterator.hasNext())
    {
      paramStringBuilder.append(((JsonMappingException.Reference)localIterator.next()).toString());
      if (localIterator.hasNext())
        paramStringBuilder.append("->");
    }
  }

  public String getMessage()
  {
    String str = super.getMessage();
    if (this._path == null)
      return str;
    if (str == null);
    for (StringBuilder localStringBuilder = new StringBuilder(); ; localStringBuilder = new StringBuilder(str))
    {
      localStringBuilder.append(" (through reference chain: ");
      _appendPathDesc(localStringBuilder);
      localStringBuilder.append(')');
      return localStringBuilder.toString();
    }
  }

  public void prependPath(Object paramObject, String paramString)
  {
    prependPath(new JsonMappingException.Reference(paramObject, paramString));
  }

  public void prependPath(JsonMappingException.Reference paramReference)
  {
    if (this._path == null)
      this._path = new LinkedList();
    if (this._path.size() < 1000)
      this._path.addFirst(paramReference);
  }

  public String toString()
  {
    return getClass().getName() + ": " + getMessage();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.JsonMappingException
 * JD-Core Version:    0.6.2
 */
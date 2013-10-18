package org.codehaus.jackson.map;

import java.io.Serializable;

public class JsonMappingException$Reference
  implements Serializable
{
  protected String _fieldName;
  protected Object _from;
  protected int _index = -1;

  protected JsonMappingException$Reference()
  {
  }

  public JsonMappingException$Reference(Object paramObject, int paramInt)
  {
    this._from = paramObject;
    this._index = paramInt;
  }

  public JsonMappingException$Reference(Object paramObject, String paramString)
  {
    this._from = paramObject;
    if (paramString == null)
      throw new NullPointerException("Can not pass null fieldName");
    this._fieldName = paramString;
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Class localClass;
    if ((this._from instanceof Class))
    {
      localClass = (Class)this._from;
      Package localPackage = localClass.getPackage();
      if (localPackage != null)
      {
        localStringBuilder.append(localPackage.getName());
        localStringBuilder.append('.');
      }
      localStringBuilder.append(localClass.getSimpleName());
      localStringBuilder.append('[');
      if (this._fieldName == null)
        break label120;
      localStringBuilder.append('"');
      localStringBuilder.append(this._fieldName);
      localStringBuilder.append('"');
    }
    while (true)
    {
      localStringBuilder.append(']');
      return localStringBuilder.toString();
      localClass = this._from.getClass();
      break;
      label120: if (this._index >= 0)
        localStringBuilder.append(this._index);
      else
        localStringBuilder.append('?');
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.JsonMappingException.Reference
 * JD-Core Version:    0.6.2
 */
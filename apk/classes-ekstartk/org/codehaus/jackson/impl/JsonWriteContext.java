package org.codehaus.jackson.impl;

import org.codehaus.jackson.JsonStreamContext;

public class JsonWriteContext extends JsonStreamContext
{
  protected JsonWriteContext _child = null;
  protected String _currentName;
  protected final JsonWriteContext _parent;

  protected JsonWriteContext(int paramInt, JsonWriteContext paramJsonWriteContext)
  {
    this._type = paramInt;
    this._parent = paramJsonWriteContext;
    this._index = -1;
  }

  public static JsonWriteContext createRootContext()
  {
    return new JsonWriteContext(0, null);
  }

  private final JsonWriteContext reset(int paramInt)
  {
    this._type = paramInt;
    this._index = -1;
    this._currentName = null;
    return this;
  }

  protected final void appendDesc(StringBuilder paramStringBuilder)
  {
    if (this._type == 2)
    {
      paramStringBuilder.append('{');
      if (this._currentName != null)
      {
        paramStringBuilder.append('"');
        paramStringBuilder.append(this._currentName);
        paramStringBuilder.append('"');
      }
      while (true)
      {
        paramStringBuilder.append('}');
        return;
        paramStringBuilder.append('?');
      }
    }
    if (this._type == 1)
    {
      paramStringBuilder.append('[');
      paramStringBuilder.append(getCurrentIndex());
      paramStringBuilder.append(']');
      return;
    }
    paramStringBuilder.append("/");
  }

  public final JsonWriteContext createChildArrayContext()
  {
    JsonWriteContext localJsonWriteContext1 = this._child;
    if (localJsonWriteContext1 == null)
    {
      JsonWriteContext localJsonWriteContext2 = new JsonWriteContext(1, this);
      this._child = localJsonWriteContext2;
      return localJsonWriteContext2;
    }
    return localJsonWriteContext1.reset(1);
  }

  public final JsonWriteContext createChildObjectContext()
  {
    JsonWriteContext localJsonWriteContext1 = this._child;
    if (localJsonWriteContext1 == null)
    {
      JsonWriteContext localJsonWriteContext2 = new JsonWriteContext(2, this);
      this._child = localJsonWriteContext2;
      return localJsonWriteContext2;
    }
    return localJsonWriteContext1.reset(2);
  }

  public final JsonWriteContext getParent()
  {
    return this._parent;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    appendDesc(localStringBuilder);
    return localStringBuilder.toString();
  }

  public final int writeFieldName(String paramString)
  {
    if ((this._type != 2) || (this._currentName != null))
      return 4;
    this._currentName = paramString;
    if (this._index < 0)
      return 0;
    return 1;
  }

  public final int writeValue()
  {
    if (this._type == 2)
    {
      if (this._currentName == null)
        return 5;
      this._currentName = null;
      this._index = (1 + this._index);
      return 2;
    }
    if (this._type == 1)
    {
      int i = this._index;
      this._index = (1 + this._index);
      if (i < 0)
        return 0;
      return 1;
    }
    this._index = (1 + this._index);
    if (this._index == 0)
      return 0;
    return 3;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.impl.JsonWriteContext
 * JD-Core Version:    0.6.2
 */
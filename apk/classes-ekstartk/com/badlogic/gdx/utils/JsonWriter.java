package com.badlogic.gdx.utils;

import java.io.Writer;

public class JsonWriter extends Writer
{
  private JsonWriter.JsonObject current;
  private boolean named;
  private JsonWriter.OutputType outputType = JsonWriter.OutputType.json;
  private final Array<JsonWriter.JsonObject> stack = new Array();
  Writer writer;

  public JsonWriter(Writer paramWriter)
  {
    this.writer = paramWriter;
  }

  public JsonWriter array()
  {
    if (this.current != null)
    {
      if (!this.current.array)
        break label74;
      if (this.current.needsComma)
        break label62;
      this.current.needsComma = true;
    }
    while (true)
    {
      Array localArray = this.stack;
      JsonWriter.JsonObject localJsonObject = new JsonWriter.JsonObject(this, true);
      this.current = localJsonObject;
      localArray.add(localJsonObject);
      return this;
      label62: this.writer.write(44);
      continue;
      label74: if ((!this.named) && (!this.current.array))
        throw new IllegalStateException("Name must be set.");
      this.named = false;
    }
  }

  public JsonWriter array(String paramString)
  {
    return name(paramString).array();
  }

  public void close()
  {
    while (this.stack.size > 0)
      pop();
    this.writer.close();
  }

  public void flush()
  {
    this.writer.flush();
  }

  public JsonWriter name(String paramString)
  {
    if ((this.current == null) || (this.current.array))
      throw new IllegalStateException("Current item must be an object.");
    if (!this.current.needsComma)
      this.current.needsComma = true;
    while (true)
    {
      this.writer.write(this.outputType.quoteName(paramString));
      this.writer.write(58);
      this.named = true;
      return this;
      this.writer.write(44);
    }
  }

  public JsonWriter object()
  {
    if (this.current != null)
    {
      if (!this.current.array)
        break label74;
      if (this.current.needsComma)
        break label62;
      this.current.needsComma = true;
    }
    while (true)
    {
      Array localArray = this.stack;
      JsonWriter.JsonObject localJsonObject = new JsonWriter.JsonObject(this, false);
      this.current = localJsonObject;
      localArray.add(localJsonObject);
      return this;
      label62: this.writer.write(44);
      continue;
      label74: if ((!this.named) && (!this.current.array))
        throw new IllegalStateException("Name must be set.");
      this.named = false;
    }
  }

  public JsonWriter object(String paramString)
  {
    return name(paramString).object();
  }

  public JsonWriter pop()
  {
    if (this.named)
      throw new IllegalStateException("Expected an object, array, or value since a name was set.");
    ((JsonWriter.JsonObject)this.stack.pop()).close();
    if (this.stack.size == 0);
    for (JsonWriter.JsonObject localJsonObject = null; ; localJsonObject = (JsonWriter.JsonObject)this.stack.peek())
    {
      this.current = localJsonObject;
      return this;
    }
  }

  public JsonWriter set(String paramString, Object paramObject)
  {
    return name(paramString).value(paramObject);
  }

  public void setOutputType(JsonWriter.OutputType paramOutputType)
  {
    this.outputType = paramOutputType;
  }

  public JsonWriter value(Object paramObject)
  {
    if (this.current != null)
    {
      if (!this.current.array)
        break label78;
      if (this.current.needsComma)
        break label66;
      this.current.needsComma = true;
    }
    while ((paramObject == null) || ((paramObject instanceof Number)) || ((paramObject instanceof Boolean)))
    {
      this.writer.write(String.valueOf(paramObject));
      return this;
      label66: this.writer.write(44);
      continue;
      label78: if (!this.named)
        throw new IllegalStateException("Name must be set.");
      this.named = false;
    }
    this.writer.write(this.outputType.quoteValue(paramObject.toString()));
    return this;
  }

  public void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    this.writer.write(paramArrayOfChar, paramInt1, paramInt2);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.JsonWriter
 * JD-Core Version:    0.6.2
 */
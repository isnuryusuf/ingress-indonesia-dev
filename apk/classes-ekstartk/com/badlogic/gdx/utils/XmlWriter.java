package com.badlogic.gdx.utils;

import java.io.Writer;

public class XmlWriter extends Writer
{
  private String currentElement;
  public int indent;
  private boolean indentNextClose;
  private final Array<String> stack = new Array();
  private final Writer writer;

  public XmlWriter(Writer paramWriter)
  {
    this.writer = paramWriter;
  }

  private void indent()
  {
    int i = this.indent;
    if (this.currentElement != null)
      i++;
    for (int j = 0; j < i; j++)
      this.writer.write(9);
  }

  private boolean startElementContent()
  {
    if (this.currentElement == null)
      return false;
    this.indent = (1 + this.indent);
    this.stack.add(this.currentElement);
    this.currentElement = null;
    this.writer.write(">");
    return true;
  }

  public XmlWriter attribute(String paramString, Object paramObject)
  {
    if (this.currentElement == null)
      throw new IllegalStateException();
    this.writer.write(32);
    this.writer.write(paramString);
    this.writer.write("=\"");
    Writer localWriter = this.writer;
    if (paramObject == null);
    for (String str = "null"; ; str = paramObject.toString())
    {
      localWriter.write(str);
      this.writer.write(34);
      return this;
    }
  }

  public void close()
  {
    while (this.stack.size != 0)
      pop();
    this.writer.close();
  }

  public XmlWriter element(String paramString)
  {
    if (startElementContent())
      this.writer.write(10);
    indent();
    this.writer.write(60);
    this.writer.write(paramString);
    this.currentElement = paramString;
    return this;
  }

  public XmlWriter element(String paramString, Object paramObject)
  {
    return element(paramString).text(paramObject).pop();
  }

  public void flush()
  {
    this.writer.flush();
  }

  public XmlWriter pop()
  {
    if (this.currentElement != null)
    {
      this.writer.write("/>\n");
      this.currentElement = null;
    }
    while (true)
    {
      this.indentNextClose = true;
      return this;
      this.indent = Math.max(-1 + this.indent, 0);
      if (this.indentNextClose)
        indent();
      this.writer.write("</");
      this.writer.write((String)this.stack.pop());
      this.writer.write(">\n");
    }
  }

  public XmlWriter text(Object paramObject)
  {
    startElementContent();
    String str;
    if (paramObject == null)
    {
      str = "null";
      if (str.length() <= 64)
        break label84;
    }
    label84: for (boolean bool = true; ; bool = false)
    {
      this.indentNextClose = bool;
      if (this.indentNextClose)
      {
        this.writer.write(10);
        indent();
      }
      this.writer.write(str);
      if (this.indentNextClose)
        this.writer.write(10);
      return this;
      str = paramObject.toString();
      break;
    }
  }

  public void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    startElementContent();
    this.writer.write(paramArrayOfChar, paramInt1, paramInt2);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.badlogic.gdx.utils.XmlWriter
 * JD-Core Version:    0.6.2
 */
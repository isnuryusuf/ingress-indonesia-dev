package org.codehaus.jackson.io;

import java.io.Writer;

public abstract class OutputDecorator
{
  public abstract Writer decorate(IOContext paramIOContext, Writer paramWriter);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.io.OutputDecorator
 * JD-Core Version:    0.6.2
 */
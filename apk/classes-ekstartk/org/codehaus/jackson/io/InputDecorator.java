package org.codehaus.jackson.io;

import java.io.InputStream;
import java.io.Reader;

public abstract class InputDecorator
{
  public abstract InputStream decorate(IOContext paramIOContext, InputStream paramInputStream);

  public abstract Reader decorate(IOContext paramIOContext, Reader paramReader);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.io.InputDecorator
 * JD-Core Version:    0.6.2
 */
package org.codehaus.jackson.util;

import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.impl.Indenter;

public class DefaultPrettyPrinter$FixedSpaceIndenter
  implements Indenter
{
  public boolean isInline()
  {
    return true;
  }

  public void writeIndentation(JsonGenerator paramJsonGenerator, int paramInt)
  {
    paramJsonGenerator.writeRaw(' ');
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.util.DefaultPrettyPrinter.FixedSpaceIndenter
 * JD-Core Version:    0.6.2
 */
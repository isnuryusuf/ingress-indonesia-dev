package org.codehaus.jackson.util;

import java.util.Arrays;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.impl.Indenter;

public class DefaultPrettyPrinter$Lf2SpacesIndenter
  implements Indenter
{
  static final char[] SPACES;
  static final String SYSTEM_LINE_SEPARATOR;

  static
  {
    try
    {
      String str2 = System.getProperty("line.separator");
      str1 = str2;
      if (str1 == null)
        str1 = "\n";
      SYSTEM_LINE_SEPARATOR = str1;
      char[] arrayOfChar = new char[64];
      SPACES = arrayOfChar;
      Arrays.fill(arrayOfChar, ' ');
      return;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        String str1 = null;
    }
  }

  public boolean isInline()
  {
    return false;
  }

  public void writeIndentation(JsonGenerator paramJsonGenerator, int paramInt)
  {
    paramJsonGenerator.writeRaw(SYSTEM_LINE_SEPARATOR);
    int i = paramInt + paramInt;
    while (i > 64)
    {
      paramJsonGenerator.writeRaw(SPACES, 0, 64);
      i -= SPACES.length;
    }
    paramJsonGenerator.writeRaw(SPACES, 0, i);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.util.DefaultPrettyPrinter.Lf2SpacesIndenter
 * JD-Core Version:    0.6.2
 */
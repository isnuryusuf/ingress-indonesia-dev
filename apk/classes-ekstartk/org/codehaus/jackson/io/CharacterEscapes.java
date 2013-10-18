package org.codehaus.jackson.io;

import org.codehaus.jackson.SerializableString;

public abstract class CharacterEscapes
{
  public abstract int[] getEscapeCodesForAscii();

  public abstract SerializableString getEscapeSequence(int paramInt);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.io.CharacterEscapes
 * JD-Core Version:    0.6.2
 */
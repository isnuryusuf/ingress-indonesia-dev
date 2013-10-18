package org.codehaus.jackson.io;

import org.codehaus.jackson.SerializableString;

public class SerializedString
  implements SerializableString
{
  protected char[] _quotedChars;
  protected final String _value;

  public SerializedString(String paramString)
  {
    this._value = paramString;
  }

  public final char[] asQuotedChars()
  {
    char[] arrayOfChar = this._quotedChars;
    if (arrayOfChar == null)
    {
      arrayOfChar = JsonStringEncoder.getInstance().quoteAsString(this._value);
      this._quotedChars = arrayOfChar;
    }
    return arrayOfChar;
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == this)
      return true;
    if ((paramObject == null) || (paramObject.getClass() != getClass()))
      return false;
    SerializedString localSerializedString = (SerializedString)paramObject;
    return this._value.equals(localSerializedString._value);
  }

  public final String getValue()
  {
    return this._value;
  }

  public final int hashCode()
  {
    return this._value.hashCode();
  }

  public final String toString()
  {
    return this._value;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.io.SerializedString
 * JD-Core Version:    0.6.2
 */
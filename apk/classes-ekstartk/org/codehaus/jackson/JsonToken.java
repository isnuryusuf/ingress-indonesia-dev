package org.codehaus.jackson;

public enum JsonToken
{
  final String _serialized;
  final byte[] _serializedBytes;
  final char[] _serializedChars;

  static
  {
    END_OBJECT = new JsonToken("END_OBJECT", 2, "}");
    START_ARRAY = new JsonToken("START_ARRAY", 3, "[");
    END_ARRAY = new JsonToken("END_ARRAY", 4, "]");
    FIELD_NAME = new JsonToken("FIELD_NAME", 5, null);
    VALUE_EMBEDDED_OBJECT = new JsonToken("VALUE_EMBEDDED_OBJECT", 6, null);
    VALUE_STRING = new JsonToken("VALUE_STRING", 7, null);
    VALUE_NUMBER_INT = new JsonToken("VALUE_NUMBER_INT", 8, null);
    VALUE_NUMBER_FLOAT = new JsonToken("VALUE_NUMBER_FLOAT", 9, null);
    VALUE_TRUE = new JsonToken("VALUE_TRUE", 10, "true");
    VALUE_FALSE = new JsonToken("VALUE_FALSE", 11, "false");
    VALUE_NULL = new JsonToken("VALUE_NULL", 12, "null");
    JsonToken[] arrayOfJsonToken = new JsonToken[13];
    arrayOfJsonToken[0] = NOT_AVAILABLE;
    arrayOfJsonToken[1] = START_OBJECT;
    arrayOfJsonToken[2] = END_OBJECT;
    arrayOfJsonToken[3] = START_ARRAY;
    arrayOfJsonToken[4] = END_ARRAY;
    arrayOfJsonToken[5] = FIELD_NAME;
    arrayOfJsonToken[6] = VALUE_EMBEDDED_OBJECT;
    arrayOfJsonToken[7] = VALUE_STRING;
    arrayOfJsonToken[8] = VALUE_NUMBER_INT;
    arrayOfJsonToken[9] = VALUE_NUMBER_FLOAT;
    arrayOfJsonToken[10] = VALUE_TRUE;
    arrayOfJsonToken[11] = VALUE_FALSE;
    arrayOfJsonToken[12] = VALUE_NULL;
  }

  private JsonToken(String paramString)
  {
    if (paramString == null)
    {
      this._serialized = null;
      this._serializedChars = null;
      this._serializedBytes = null;
    }
    while (true)
    {
      return;
      this._serialized = paramString;
      this._serializedChars = paramString.toCharArray();
      int j = this._serializedChars.length;
      this._serializedBytes = new byte[j];
      for (int k = 0; k < j; k++)
        this._serializedBytes[k] = ((byte)this._serializedChars[k]);
    }
  }

  public final char[] asCharArray()
  {
    return this._serializedChars;
  }

  public final String asString()
  {
    return this._serialized;
  }

  public final boolean isNumeric()
  {
    return (this == VALUE_NUMBER_INT) || (this == VALUE_NUMBER_FLOAT);
  }

  public final boolean isScalarValue()
  {
    return ordinal() >= VALUE_EMBEDDED_OBJECT.ordinal();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.JsonToken
 * JD-Core Version:    0.6.2
 */
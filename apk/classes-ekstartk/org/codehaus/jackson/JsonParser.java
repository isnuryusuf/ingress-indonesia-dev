package org.codehaus.jackson;

import java.io.Closeable;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.codehaus.jackson.type.TypeReference;

public abstract class JsonParser
  implements Closeable
{
  protected JsonToken _currToken;
  protected int _features;
  protected JsonToken _lastClearedToken;

  protected JsonParser()
  {
  }

  protected JsonParser(int paramInt)
  {
    this._features = paramInt;
  }

  protected JsonParseException _constructError(String paramString)
  {
    return new JsonParseException(paramString, getCurrentLocation());
  }

  public void clearCurrentToken()
  {
    if (this._currToken != null)
    {
      this._lastClearedToken = this._currToken;
      this._currToken = null;
    }
  }

  public abstract void close();

  public abstract BigInteger getBigIntegerValue();

  public abstract byte[] getBinaryValue(Base64Variant paramBase64Variant);

  public byte getByteValue()
  {
    int i = getIntValue();
    if ((i < -128) || (i > 127))
      throw _constructError("Numeric value (" + getText() + ") out of range of Java byte");
    return (byte)i;
  }

  public abstract ObjectCodec getCodec();

  public abstract JsonLocation getCurrentLocation();

  public abstract String getCurrentName();

  public JsonToken getCurrentToken()
  {
    return this._currToken;
  }

  public abstract BigDecimal getDecimalValue();

  public abstract double getDoubleValue();

  public Object getEmbeddedObject()
  {
    return null;
  }

  public abstract float getFloatValue();

  public abstract int getIntValue();

  public abstract long getLongValue();

  public abstract JsonParser.NumberType getNumberType();

  public abstract Number getNumberValue();

  public short getShortValue()
  {
    int i = getIntValue();
    if ((i < -32768) || (i > 32767))
      throw _constructError("Numeric value (" + getText() + ") out of range of Java short");
    return (short)i;
  }

  public abstract String getText();

  public abstract char[] getTextCharacters();

  public abstract int getTextLength();

  public abstract int getTextOffset();

  public abstract JsonLocation getTokenLocation();

  public boolean hasTextCharacters()
  {
    return false;
  }

  public boolean isEnabled(JsonParser.Feature paramFeature)
  {
    return (this._features & paramFeature.getMask()) != 0;
  }

  public boolean isExpectedStartArrayToken()
  {
    return getCurrentToken() == JsonToken.START_ARRAY;
  }

  public long nextLongValue(long paramLong)
  {
    if (nextToken() == JsonToken.VALUE_NUMBER_INT)
      paramLong = getLongValue();
    return paramLong;
  }

  public String nextTextValue()
  {
    if (nextToken() == JsonToken.VALUE_STRING)
      return getText();
    return null;
  }

  public abstract JsonToken nextToken();

  public JsonToken nextValue()
  {
    JsonToken localJsonToken = nextToken();
    if (localJsonToken == JsonToken.FIELD_NAME)
      localJsonToken = nextToken();
    return localJsonToken;
  }

  public <T> T readValueAs(Class<T> paramClass)
  {
    ObjectCodec localObjectCodec = getCodec();
    if (localObjectCodec == null)
      throw new IllegalStateException("No ObjectCodec defined for the parser, can not deserialize JSON into Java objects");
    return localObjectCodec.readValue(this, paramClass);
  }

  public <T> T readValueAs(TypeReference<?> paramTypeReference)
  {
    ObjectCodec localObjectCodec = getCodec();
    if (localObjectCodec == null)
      throw new IllegalStateException("No ObjectCodec defined for the parser, can not deserialize JSON into Java objects");
    return localObjectCodec.readValue(this, paramTypeReference);
  }

  public JsonNode readValueAsTree()
  {
    ObjectCodec localObjectCodec = getCodec();
    if (localObjectCodec == null)
      throw new IllegalStateException("No ObjectCodec defined for the parser, can not deserialize JSON into JsonNode tree");
    return localObjectCodec.readTree(this);
  }

  public abstract JsonParser skipChildren();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.JsonParser
 * JD-Core Version:    0.6.2
 */
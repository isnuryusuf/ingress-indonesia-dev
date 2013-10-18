package org.codehaus.jackson.util;

import java.math.BigDecimal;
import java.math.BigInteger;
import org.codehaus.jackson.Base64Variant;
import org.codehaus.jackson.JsonLocation;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonParser.Feature;
import org.codehaus.jackson.JsonParser.NumberType;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.ObjectCodec;

public class JsonParserDelegate extends JsonParser
{
  protected JsonParser delegate;

  public JsonParserDelegate(JsonParser paramJsonParser)
  {
    this.delegate = paramJsonParser;
  }

  public void clearCurrentToken()
  {
    this.delegate.clearCurrentToken();
  }

  public void close()
  {
    this.delegate.close();
  }

  public BigInteger getBigIntegerValue()
  {
    return this.delegate.getBigIntegerValue();
  }

  public byte[] getBinaryValue(Base64Variant paramBase64Variant)
  {
    return this.delegate.getBinaryValue(paramBase64Variant);
  }

  public byte getByteValue()
  {
    return this.delegate.getByteValue();
  }

  public ObjectCodec getCodec()
  {
    return this.delegate.getCodec();
  }

  public JsonLocation getCurrentLocation()
  {
    return this.delegate.getCurrentLocation();
  }

  public String getCurrentName()
  {
    return this.delegate.getCurrentName();
  }

  public JsonToken getCurrentToken()
  {
    return this.delegate.getCurrentToken();
  }

  public BigDecimal getDecimalValue()
  {
    return this.delegate.getDecimalValue();
  }

  public double getDoubleValue()
  {
    return this.delegate.getDoubleValue();
  }

  public float getFloatValue()
  {
    return this.delegate.getFloatValue();
  }

  public int getIntValue()
  {
    return this.delegate.getIntValue();
  }

  public long getLongValue()
  {
    return this.delegate.getLongValue();
  }

  public JsonParser.NumberType getNumberType()
  {
    return this.delegate.getNumberType();
  }

  public Number getNumberValue()
  {
    return this.delegate.getNumberValue();
  }

  public short getShortValue()
  {
    return this.delegate.getShortValue();
  }

  public String getText()
  {
    return this.delegate.getText();
  }

  public char[] getTextCharacters()
  {
    return this.delegate.getTextCharacters();
  }

  public int getTextLength()
  {
    return this.delegate.getTextLength();
  }

  public int getTextOffset()
  {
    return this.delegate.getTextOffset();
  }

  public JsonLocation getTokenLocation()
  {
    return this.delegate.getTokenLocation();
  }

  public boolean isEnabled(JsonParser.Feature paramFeature)
  {
    return this.delegate.isEnabled(paramFeature);
  }

  public JsonToken nextToken()
  {
    return this.delegate.nextToken();
  }

  public JsonParser skipChildren()
  {
    this.delegate.skipChildren();
    return this;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.util.JsonParserDelegate
 * JD-Core Version:    0.6.2
 */
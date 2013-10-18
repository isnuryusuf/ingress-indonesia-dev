package org.codehaus.jackson.util;

import java.math.BigDecimal;
import java.math.BigInteger;
import org.codehaus.jackson.Base64Variant;
import org.codehaus.jackson.JsonLocation;
import org.codehaus.jackson.JsonParser.NumberType;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.ObjectCodec;
import org.codehaus.jackson.impl.JsonParserMinimalBase;
import org.codehaus.jackson.impl.JsonReadContext;

public final class TokenBuffer$Parser extends JsonParserMinimalBase
{
  protected transient ByteArrayBuilder _byteBuilder;
  protected boolean _closed;
  protected ObjectCodec _codec;
  protected JsonLocation _location = null;
  protected JsonReadContext _parsingContext;
  protected TokenBuffer.Segment _segment;
  protected int _segmentPtr;

  public TokenBuffer$Parser(TokenBuffer.Segment paramSegment, ObjectCodec paramObjectCodec)
  {
    super(0);
    this._segment = paramSegment;
    this._segmentPtr = -1;
    this._codec = paramObjectCodec;
    this._parsingContext = JsonReadContext.createRootContext(-1, -1);
  }

  protected final void _checkIsNumber()
  {
    if ((this._currToken == null) || (!this._currToken.isNumeric()))
      throw _constructError("Current token (" + this._currToken + ") not numeric, can not use numeric value accessors");
  }

  protected final Object _currentObject()
  {
    return this._segment.get(this._segmentPtr);
  }

  protected final void _handleEOF()
  {
    _throwInternal();
  }

  public final void close()
  {
    if (!this._closed)
      this._closed = true;
  }

  public final BigInteger getBigIntegerValue()
  {
    Number localNumber = getNumberValue();
    if ((localNumber instanceof BigInteger))
      return (BigInteger)localNumber;
    switch (TokenBuffer.1.$SwitchMap$org$codehaus$jackson$JsonParser$NumberType[getNumberType().ordinal()])
    {
    default:
      return BigInteger.valueOf(localNumber.longValue());
    case 3:
    }
    return ((BigDecimal)localNumber).toBigInteger();
  }

  public final byte[] getBinaryValue(Base64Variant paramBase64Variant)
  {
    if (this._currToken == JsonToken.VALUE_EMBEDDED_OBJECT)
    {
      Object localObject = _currentObject();
      if ((localObject instanceof byte[]))
        return (byte[])localObject;
    }
    if (this._currToken != JsonToken.VALUE_STRING)
      throw _constructError("Current token (" + this._currToken + ") not VALUE_STRING (or VALUE_EMBEDDED_OBJECT with byte[]), can not access as binary");
    String str = getText();
    if (str == null)
      return null;
    ByteArrayBuilder localByteArrayBuilder = this._byteBuilder;
    if (localByteArrayBuilder == null)
    {
      localByteArrayBuilder = new ByteArrayBuilder(100);
      this._byteBuilder = localByteArrayBuilder;
    }
    _decodeBase64(str, localByteArrayBuilder, paramBase64Variant);
    return localByteArrayBuilder.toByteArray();
  }

  public final ObjectCodec getCodec()
  {
    return this._codec;
  }

  public final JsonLocation getCurrentLocation()
  {
    if (this._location == null)
      return JsonLocation.NA;
    return this._location;
  }

  public final String getCurrentName()
  {
    return this._parsingContext.getCurrentName();
  }

  public final BigDecimal getDecimalValue()
  {
    Number localNumber = getNumberValue();
    if ((localNumber instanceof BigDecimal))
      return (BigDecimal)localNumber;
    switch (TokenBuffer.1.$SwitchMap$org$codehaus$jackson$JsonParser$NumberType[getNumberType().ordinal()])
    {
    case 3:
    case 4:
    default:
      return BigDecimal.valueOf(localNumber.doubleValue());
    case 1:
    case 5:
      return BigDecimal.valueOf(localNumber.longValue());
    case 2:
    }
    return new BigDecimal((BigInteger)localNumber);
  }

  public final double getDoubleValue()
  {
    return getNumberValue().doubleValue();
  }

  public final Object getEmbeddedObject()
  {
    if (this._currToken == JsonToken.VALUE_EMBEDDED_OBJECT)
      return _currentObject();
    return null;
  }

  public final float getFloatValue()
  {
    return getNumberValue().floatValue();
  }

  public final int getIntValue()
  {
    if (this._currToken == JsonToken.VALUE_NUMBER_INT)
      return ((Number)_currentObject()).intValue();
    return getNumberValue().intValue();
  }

  public final long getLongValue()
  {
    return getNumberValue().longValue();
  }

  public final JsonParser.NumberType getNumberType()
  {
    Number localNumber = getNumberValue();
    if ((localNumber instanceof Integer))
      return JsonParser.NumberType.INT;
    if ((localNumber instanceof Long))
      return JsonParser.NumberType.LONG;
    if ((localNumber instanceof Double))
      return JsonParser.NumberType.DOUBLE;
    if ((localNumber instanceof BigDecimal))
      return JsonParser.NumberType.BIG_DECIMAL;
    if ((localNumber instanceof Float))
      return JsonParser.NumberType.FLOAT;
    if ((localNumber instanceof BigInteger))
      return JsonParser.NumberType.BIG_INTEGER;
    return null;
  }

  public final Number getNumberValue()
  {
    _checkIsNumber();
    return (Number)_currentObject();
  }

  public final String getText()
  {
    if ((this._currToken == JsonToken.VALUE_STRING) || (this._currToken == JsonToken.FIELD_NAME))
    {
      Object localObject1 = _currentObject();
      if ((localObject1 instanceof String))
        return (String)localObject1;
      if (localObject1 == null)
        return null;
      return localObject1.toString();
    }
    if (this._currToken == null)
      return null;
    switch (TokenBuffer.1.$SwitchMap$org$codehaus$jackson$JsonToken[this._currToken.ordinal()])
    {
    default:
      return this._currToken.asString();
    case 7:
    case 8:
    }
    Object localObject2 = _currentObject();
    if (localObject2 == null)
      return null;
    return localObject2.toString();
  }

  public final char[] getTextCharacters()
  {
    String str = getText();
    if (str == null)
      return null;
    return str.toCharArray();
  }

  public final int getTextLength()
  {
    String str = getText();
    if (str == null)
      return 0;
    return str.length();
  }

  public final int getTextOffset()
  {
    return 0;
  }

  public final JsonLocation getTokenLocation()
  {
    return getCurrentLocation();
  }

  public final boolean hasTextCharacters()
  {
    return false;
  }

  public final JsonToken nextToken()
  {
    if ((this._closed) || (this._segment == null));
    do
    {
      return null;
      int i = 1 + this._segmentPtr;
      this._segmentPtr = i;
      if (i < 16)
        break;
      this._segmentPtr = 0;
      this._segment = this._segment.next();
    }
    while (this._segment == null);
    this._currToken = this._segment.type(this._segmentPtr);
    Object localObject;
    String str;
    if (this._currToken == JsonToken.FIELD_NAME)
    {
      localObject = _currentObject();
      if ((localObject instanceof String))
      {
        str = (String)localObject;
        this._parsingContext.setCurrentName(str);
      }
    }
    while (true)
    {
      return this._currToken;
      str = localObject.toString();
      break;
      if (this._currToken == JsonToken.START_OBJECT)
      {
        this._parsingContext = this._parsingContext.createChildObjectContext(-1, -1);
      }
      else if (this._currToken == JsonToken.START_ARRAY)
      {
        this._parsingContext = this._parsingContext.createChildArrayContext(-1, -1);
      }
      else if ((this._currToken == JsonToken.END_OBJECT) || (this._currToken == JsonToken.END_ARRAY))
      {
        this._parsingContext = this._parsingContext.getParent();
        if (this._parsingContext == null)
          this._parsingContext = JsonReadContext.createRootContext(-1, -1);
      }
    }
  }

  public final void setLocation(JsonLocation paramJsonLocation)
  {
    this._location = paramJsonLocation;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.util.TokenBuffer.Parser
 * JD-Core Version:    0.6.2
 */
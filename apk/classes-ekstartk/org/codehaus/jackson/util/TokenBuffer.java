package org.codehaus.jackson.util;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.codehaus.jackson.Base64Variant;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonParser.Feature;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.ObjectCodec;
import org.codehaus.jackson.SerializableString;
import org.codehaus.jackson.impl.JsonWriteContext;
import org.codehaus.jackson.io.SerializedString;

public class TokenBuffer extends JsonGenerator
{
  protected static final int DEFAULT_PARSER_FEATURES = JsonParser.Feature.collectDefaults();
  protected int _appendOffset;
  protected boolean _closed;
  protected TokenBuffer.Segment _first;
  protected int _generatorFeatures;
  protected TokenBuffer.Segment _last;
  protected ObjectCodec _objectCodec;
  protected JsonWriteContext _writeContext;

  public TokenBuffer(ObjectCodec paramObjectCodec)
  {
    this._objectCodec = paramObjectCodec;
    this._generatorFeatures = DEFAULT_PARSER_FEATURES;
    this._writeContext = JsonWriteContext.createRootContext();
    TokenBuffer.Segment localSegment = new TokenBuffer.Segment();
    this._last = localSegment;
    this._first = localSegment;
    this._appendOffset = 0;
  }

  protected final void _append(JsonToken paramJsonToken)
  {
    TokenBuffer.Segment localSegment = this._last.append(this._appendOffset, paramJsonToken);
    if (localSegment == null)
    {
      this._appendOffset = (1 + this._appendOffset);
      return;
    }
    this._last = localSegment;
    this._appendOffset = 1;
  }

  protected final void _append(JsonToken paramJsonToken, Object paramObject)
  {
    TokenBuffer.Segment localSegment = this._last.append(this._appendOffset, paramJsonToken, paramObject);
    if (localSegment == null)
    {
      this._appendOffset = (1 + this._appendOffset);
      return;
    }
    this._last = localSegment;
    this._appendOffset = 1;
  }

  protected void _reportUnsupportedOperation()
  {
    throw new UnsupportedOperationException("Called operation not supported for TokenBuffer");
  }

  public JsonParser asParser()
  {
    return asParser(this._objectCodec);
  }

  public JsonParser asParser(JsonParser paramJsonParser)
  {
    TokenBuffer.Parser localParser = new TokenBuffer.Parser(this._first, paramJsonParser.getCodec());
    localParser.setLocation(paramJsonParser.getTokenLocation());
    return localParser;
  }

  public JsonParser asParser(ObjectCodec paramObjectCodec)
  {
    return new TokenBuffer.Parser(this._first, paramObjectCodec);
  }

  public void close()
  {
    this._closed = true;
  }

  public void copyCurrentEvent(JsonParser paramJsonParser)
  {
    switch (TokenBuffer.1.$SwitchMap$org$codehaus$jackson$JsonToken[paramJsonParser.getCurrentToken().ordinal()])
    {
    default:
      throw new RuntimeException("Internal error: should never end up through this code path");
    case 1:
      writeStartObject();
      return;
    case 2:
      writeEndObject();
      return;
    case 3:
      writeStartArray();
      return;
    case 4:
      writeEndArray();
      return;
    case 5:
      writeFieldName(paramJsonParser.getCurrentName());
      return;
    case 6:
      if (paramJsonParser.hasTextCharacters())
      {
        writeString(paramJsonParser.getTextCharacters(), paramJsonParser.getTextOffset(), paramJsonParser.getTextLength());
        return;
      }
      writeString(paramJsonParser.getText());
      return;
    case 7:
      switch (TokenBuffer.1.$SwitchMap$org$codehaus$jackson$JsonParser$NumberType[paramJsonParser.getNumberType().ordinal()])
      {
      default:
        writeNumber(paramJsonParser.getLongValue());
        return;
      case 1:
        writeNumber(paramJsonParser.getIntValue());
        return;
      case 2:
      }
      writeNumber(paramJsonParser.getBigIntegerValue());
      return;
    case 8:
      switch (TokenBuffer.1.$SwitchMap$org$codehaus$jackson$JsonParser$NumberType[paramJsonParser.getNumberType().ordinal()])
      {
      default:
        writeNumber(paramJsonParser.getDoubleValue());
        return;
      case 3:
        writeNumber(paramJsonParser.getDecimalValue());
        return;
      case 4:
      }
      writeNumber(paramJsonParser.getFloatValue());
      return;
    case 9:
      writeBoolean(true);
      return;
    case 10:
      writeBoolean(false);
      return;
    case 11:
      writeNull();
      return;
    case 12:
    }
    writeObject(paramJsonParser.getEmbeddedObject());
  }

  public void copyCurrentStructure(JsonParser paramJsonParser)
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if (localJsonToken == JsonToken.FIELD_NAME)
    {
      writeFieldName(paramJsonParser.getCurrentName());
      localJsonToken = paramJsonParser.nextToken();
    }
    switch (TokenBuffer.1.$SwitchMap$org$codehaus$jackson$JsonToken[localJsonToken.ordinal()])
    {
    case 2:
    default:
      copyCurrentEvent(paramJsonParser);
      return;
    case 3:
      writeStartArray();
      while (paramJsonParser.nextToken() != JsonToken.END_ARRAY)
        copyCurrentStructure(paramJsonParser);
      writeEndArray();
      return;
    case 1:
    }
    writeStartObject();
    while (paramJsonParser.nextToken() != JsonToken.END_OBJECT)
      copyCurrentStructure(paramJsonParser);
    writeEndObject();
  }

  public void flush()
  {
  }

  public void serialize(JsonGenerator paramJsonGenerator)
  {
    TokenBuffer.Segment localSegment1 = this._first;
    int i = -1;
    Object localObject1 = localSegment1;
    int j = i + 1;
    int k;
    Object localObject2;
    if (j >= 16)
    {
      TokenBuffer.Segment localSegment2 = ((TokenBuffer.Segment)localObject1).next();
      if (localSegment2 != null)
      {
        k = 0;
        localObject2 = localSegment2;
      }
    }
    while (true)
    {
      JsonToken localJsonToken = ((TokenBuffer.Segment)localObject2).type(k);
      if (localJsonToken != null)
        switch (TokenBuffer.1.$SwitchMap$org$codehaus$jackson$JsonToken[localJsonToken.ordinal()])
        {
        default:
          throw new RuntimeException("Internal error: should never end up through this code path");
        case 1:
          paramJsonGenerator.writeStartObject();
          i = k;
          localObject1 = localObject2;
          break;
        case 2:
          paramJsonGenerator.writeEndObject();
          i = k;
          localObject1 = localObject2;
          break;
        case 3:
          paramJsonGenerator.writeStartArray();
          i = k;
          localObject1 = localObject2;
          break;
        case 4:
          paramJsonGenerator.writeEndArray();
          i = k;
          localObject1 = localObject2;
          break;
        case 5:
          Object localObject5 = ((TokenBuffer.Segment)localObject2).get(k);
          if ((localObject5 instanceof SerializableString))
          {
            paramJsonGenerator.writeFieldName((SerializableString)localObject5);
            i = k;
            localObject1 = localObject2;
            break;
          }
          paramJsonGenerator.writeFieldName((String)localObject5);
          i = k;
          localObject1 = localObject2;
          break;
        case 6:
          Object localObject4 = ((TokenBuffer.Segment)localObject2).get(k);
          if ((localObject4 instanceof SerializableString))
          {
            paramJsonGenerator.writeString((SerializableString)localObject4);
            i = k;
            localObject1 = localObject2;
            break;
          }
          paramJsonGenerator.writeString((String)localObject4);
          i = k;
          localObject1 = localObject2;
          break;
        case 7:
          Number localNumber = (Number)((TokenBuffer.Segment)localObject2).get(k);
          if ((localNumber instanceof BigInteger))
          {
            paramJsonGenerator.writeNumber((BigInteger)localNumber);
            i = k;
            localObject1 = localObject2;
            break;
          }
          if ((localNumber instanceof Long))
          {
            paramJsonGenerator.writeNumber(localNumber.longValue());
            i = k;
            localObject1 = localObject2;
            break;
          }
          paramJsonGenerator.writeNumber(localNumber.intValue());
          i = k;
          localObject1 = localObject2;
          break;
        case 8:
          Object localObject3 = ((TokenBuffer.Segment)localObject2).get(k);
          if ((localObject3 instanceof BigDecimal))
          {
            paramJsonGenerator.writeNumber((BigDecimal)localObject3);
            i = k;
            localObject1 = localObject2;
            break;
          }
          if ((localObject3 instanceof Float))
          {
            paramJsonGenerator.writeNumber(((Float)localObject3).floatValue());
            i = k;
            localObject1 = localObject2;
            break;
          }
          if ((localObject3 instanceof Double))
          {
            paramJsonGenerator.writeNumber(((Double)localObject3).doubleValue());
            i = k;
            localObject1 = localObject2;
            break;
          }
          if (localObject3 == null)
          {
            paramJsonGenerator.writeNull();
            i = k;
            localObject1 = localObject2;
            break;
          }
          if ((localObject3 instanceof String))
          {
            paramJsonGenerator.writeNumber((String)localObject3);
            i = k;
            localObject1 = localObject2;
            break;
          }
          throw new JsonGenerationException("Unrecognized value type for VALUE_NUMBER_FLOAT: " + localObject3.getClass().getName() + ", can not serialize");
        case 9:
          paramJsonGenerator.writeBoolean(true);
          i = k;
          localObject1 = localObject2;
          break;
        case 10:
          paramJsonGenerator.writeBoolean(false);
          i = k;
          localObject1 = localObject2;
          break;
        case 11:
          paramJsonGenerator.writeNull();
          i = k;
          localObject1 = localObject2;
          break;
        case 12:
          paramJsonGenerator.writeObject(((TokenBuffer.Segment)localObject2).get(k));
          i = k;
          localObject1 = localObject2;
          break;
        }
      return;
      localObject2 = localObject1;
      k = j;
    }
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[TokenBuffer: ");
    JsonParser localJsonParser = asParser();
    int i = 0;
    try
    {
      while (true)
      {
        JsonToken localJsonToken = localJsonParser.nextToken();
        if (localJsonToken == null)
          break;
        if (i < 100)
        {
          if (i > 0)
            localStringBuilder.append(", ");
          localStringBuilder.append(localJsonToken.toString());
        }
        i++;
      }
    }
    catch (IOException localIOException)
    {
      throw new IllegalStateException(localIOException);
    }
    if (i >= 100)
      localStringBuilder.append(" ... (truncated ").append(i - 100).append(" entries)");
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }

  public JsonGenerator useDefaultPrettyPrinter()
  {
    return this;
  }

  public void writeBinary(Base64Variant paramBase64Variant, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, 0, paramInt2);
    writeObject(arrayOfByte);
  }

  public void writeBoolean(boolean paramBoolean)
  {
    if (paramBoolean);
    for (JsonToken localJsonToken = JsonToken.VALUE_TRUE; ; localJsonToken = JsonToken.VALUE_FALSE)
    {
      _append(localJsonToken);
      return;
    }
  }

  public final void writeEndArray()
  {
    _append(JsonToken.END_ARRAY);
    JsonWriteContext localJsonWriteContext = this._writeContext.getParent();
    if (localJsonWriteContext != null)
      this._writeContext = localJsonWriteContext;
  }

  public final void writeEndObject()
  {
    _append(JsonToken.END_OBJECT);
    JsonWriteContext localJsonWriteContext = this._writeContext.getParent();
    if (localJsonWriteContext != null)
      this._writeContext = localJsonWriteContext;
  }

  public final void writeFieldName(String paramString)
  {
    _append(JsonToken.FIELD_NAME, paramString);
    this._writeContext.writeFieldName(paramString);
  }

  public void writeFieldName(SerializableString paramSerializableString)
  {
    _append(JsonToken.FIELD_NAME, paramSerializableString);
    this._writeContext.writeFieldName(paramSerializableString.getValue());
  }

  public void writeFieldName(SerializedString paramSerializedString)
  {
    _append(JsonToken.FIELD_NAME, paramSerializedString);
    this._writeContext.writeFieldName(paramSerializedString.getValue());
  }

  public void writeNull()
  {
    _append(JsonToken.VALUE_NULL);
  }

  public void writeNumber(double paramDouble)
  {
    _append(JsonToken.VALUE_NUMBER_FLOAT, Double.valueOf(paramDouble));
  }

  public void writeNumber(float paramFloat)
  {
    _append(JsonToken.VALUE_NUMBER_FLOAT, Float.valueOf(paramFloat));
  }

  public void writeNumber(int paramInt)
  {
    _append(JsonToken.VALUE_NUMBER_INT, Integer.valueOf(paramInt));
  }

  public void writeNumber(long paramLong)
  {
    _append(JsonToken.VALUE_NUMBER_INT, Long.valueOf(paramLong));
  }

  public void writeNumber(String paramString)
  {
    _append(JsonToken.VALUE_NUMBER_FLOAT, paramString);
  }

  public void writeNumber(BigDecimal paramBigDecimal)
  {
    if (paramBigDecimal == null)
    {
      writeNull();
      return;
    }
    _append(JsonToken.VALUE_NUMBER_FLOAT, paramBigDecimal);
  }

  public void writeNumber(BigInteger paramBigInteger)
  {
    if (paramBigInteger == null)
    {
      writeNull();
      return;
    }
    _append(JsonToken.VALUE_NUMBER_INT, paramBigInteger);
  }

  public void writeObject(Object paramObject)
  {
    _append(JsonToken.VALUE_EMBEDDED_OBJECT, paramObject);
  }

  public void writeRaw(char paramChar)
  {
    _reportUnsupportedOperation();
  }

  public void writeRaw(String paramString)
  {
    _reportUnsupportedOperation();
  }

  public void writeRaw(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    _reportUnsupportedOperation();
  }

  public void writeRawValue(String paramString)
  {
    _reportUnsupportedOperation();
  }

  public final void writeStartArray()
  {
    _append(JsonToken.START_ARRAY);
    this._writeContext = this._writeContext.createChildArrayContext();
  }

  public final void writeStartObject()
  {
    _append(JsonToken.START_OBJECT);
    this._writeContext = this._writeContext.createChildObjectContext();
  }

  public void writeString(String paramString)
  {
    if (paramString == null)
    {
      writeNull();
      return;
    }
    _append(JsonToken.VALUE_STRING, paramString);
  }

  public void writeString(SerializableString paramSerializableString)
  {
    if (paramSerializableString == null)
    {
      writeNull();
      return;
    }
    _append(JsonToken.VALUE_STRING, paramSerializableString);
  }

  public void writeString(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    writeString(new String(paramArrayOfChar, paramInt1, paramInt2));
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.util.TokenBuffer
 * JD-Core Version:    0.6.2
 */
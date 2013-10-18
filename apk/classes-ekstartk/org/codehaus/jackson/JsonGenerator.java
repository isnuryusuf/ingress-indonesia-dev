package org.codehaus.jackson;

import java.io.Closeable;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.codehaus.jackson.io.CharacterEscapes;
import org.codehaus.jackson.io.SerializedString;

public abstract class JsonGenerator
  implements Closeable
{
  protected PrettyPrinter _cfgPrettyPrinter;

  public abstract void close();

  public abstract void flush();

  public JsonGenerator setCharacterEscapes(CharacterEscapes paramCharacterEscapes)
  {
    return this;
  }

  public JsonGenerator setHighestNonEscapedChar(int paramInt)
  {
    return this;
  }

  public JsonGenerator setPrettyPrinter(PrettyPrinter paramPrettyPrinter)
  {
    this._cfgPrettyPrinter = paramPrettyPrinter;
    return this;
  }

  public abstract JsonGenerator useDefaultPrettyPrinter();

  public final void writeArrayFieldStart(String paramString)
  {
    writeFieldName(paramString);
    writeStartArray();
  }

  public abstract void writeBinary(Base64Variant paramBase64Variant, byte[] paramArrayOfByte, int paramInt1, int paramInt2);

  public void writeBinary(byte[] paramArrayOfByte)
  {
    writeBinary(Base64Variants.getDefaultVariant(), paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public abstract void writeBoolean(boolean paramBoolean);

  public abstract void writeEndArray();

  public abstract void writeEndObject();

  public abstract void writeFieldName(String paramString);

  public void writeFieldName(SerializableString paramSerializableString)
  {
    writeFieldName(paramSerializableString.getValue());
  }

  public void writeFieldName(SerializedString paramSerializedString)
  {
    writeFieldName(paramSerializedString.getValue());
  }

  public abstract void writeNull();

  public abstract void writeNumber(double paramDouble);

  public abstract void writeNumber(float paramFloat);

  public abstract void writeNumber(int paramInt);

  public abstract void writeNumber(long paramLong);

  public abstract void writeNumber(String paramString);

  public abstract void writeNumber(BigDecimal paramBigDecimal);

  public abstract void writeNumber(BigInteger paramBigInteger);

  public abstract void writeObject(Object paramObject);

  public final void writeObjectField(String paramString, Object paramObject)
  {
    writeFieldName(paramString);
    writeObject(paramObject);
  }

  public final void writeObjectFieldStart(String paramString)
  {
    writeFieldName(paramString);
    writeStartObject();
  }

  public abstract void writeRaw(char paramChar);

  public abstract void writeRaw(String paramString);

  public abstract void writeRaw(char[] paramArrayOfChar, int paramInt1, int paramInt2);

  public abstract void writeRawValue(String paramString);

  public abstract void writeStartArray();

  public abstract void writeStartObject();

  public abstract void writeString(String paramString);

  public void writeString(SerializableString paramSerializableString)
  {
    writeString(paramSerializableString.getValue());
  }

  public abstract void writeString(char[] paramArrayOfChar, int paramInt1, int paramInt2);

  public void writeStringField(String paramString1, String paramString2)
  {
    writeFieldName(paramString1);
    writeString(paramString2);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.JsonGenerator
 * JD-Core Version:    0.6.2
 */
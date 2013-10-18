package org.codehaus.jackson.impl;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonGenerator.Feature;
import org.codehaus.jackson.ObjectCodec;
import org.codehaus.jackson.PrettyPrinter;
import org.codehaus.jackson.util.DefaultPrettyPrinter;

public abstract class JsonGeneratorBase extends JsonGenerator
{
  protected boolean _cfgNumbersAsStrings;
  protected boolean _closed;
  protected int _features;
  protected ObjectCodec _objectCodec;
  protected JsonWriteContext _writeContext;

  protected JsonGeneratorBase(int paramInt, ObjectCodec paramObjectCodec)
  {
    this._features = paramInt;
    this._writeContext = JsonWriteContext.createRootContext();
    this._objectCodec = paramObjectCodec;
    this._cfgNumbersAsStrings = isEnabled(JsonGenerator.Feature.WRITE_NUMBERS_AS_STRINGS);
  }

  protected void _cantHappen()
  {
    throw new RuntimeException("Internal error: should never end up through this code path");
  }

  protected void _reportError(String paramString)
  {
    throw new JsonGenerationException(paramString);
  }

  protected abstract void _verifyValueWrite(String paramString);

  @Deprecated
  protected void _writeEndArray()
  {
  }

  @Deprecated
  protected void _writeEndObject()
  {
  }

  protected void _writeSimpleObject(Object paramObject)
  {
    if (paramObject == null)
    {
      writeNull();
      return;
    }
    if ((paramObject instanceof String))
    {
      writeString((String)paramObject);
      return;
    }
    if ((paramObject instanceof Number))
    {
      Number localNumber = (Number)paramObject;
      if ((localNumber instanceof Integer))
      {
        writeNumber(localNumber.intValue());
        return;
      }
      if ((localNumber instanceof Long))
      {
        writeNumber(localNumber.longValue());
        return;
      }
      if ((localNumber instanceof Double))
      {
        writeNumber(localNumber.doubleValue());
        return;
      }
      if ((localNumber instanceof Float))
      {
        writeNumber(localNumber.floatValue());
        return;
      }
      if ((localNumber instanceof Short))
      {
        writeNumber(localNumber.shortValue());
        return;
      }
      if ((localNumber instanceof Byte))
      {
        writeNumber(localNumber.byteValue());
        return;
      }
      if ((localNumber instanceof BigInteger))
      {
        writeNumber((BigInteger)localNumber);
        return;
      }
      if ((localNumber instanceof BigDecimal))
      {
        writeNumber((BigDecimal)localNumber);
        return;
      }
      if ((localNumber instanceof AtomicInteger))
      {
        writeNumber(((AtomicInteger)localNumber).get());
        return;
      }
      if ((localNumber instanceof AtomicLong))
        writeNumber(((AtomicLong)localNumber).get());
    }
    else
    {
      if ((paramObject instanceof byte[]))
      {
        writeBinary((byte[])paramObject);
        return;
      }
      if ((paramObject instanceof Boolean))
      {
        writeBoolean(((Boolean)paramObject).booleanValue());
        return;
      }
      if ((paramObject instanceof AtomicBoolean))
      {
        writeBoolean(((AtomicBoolean)paramObject).get());
        return;
      }
    }
    throw new IllegalStateException("No ObjectCodec defined for the generator, can only serialize simple wrapper types (type passed " + paramObject.getClass().getName() + ")");
  }

  @Deprecated
  protected void _writeStartArray()
  {
  }

  @Deprecated
  protected void _writeStartObject()
  {
  }

  public void close()
  {
    this._closed = true;
  }

  public final JsonWriteContext getOutputContext()
  {
    return this._writeContext;
  }

  public final boolean isEnabled(JsonGenerator.Feature paramFeature)
  {
    return (this._features & paramFeature.getMask()) != 0;
  }

  public JsonGenerator useDefaultPrettyPrinter()
  {
    return setPrettyPrinter(new DefaultPrettyPrinter());
  }

  public void writeEndArray()
  {
    if (!this._writeContext.inArray())
      _reportError("Current context not an ARRAY but " + this._writeContext.getTypeDesc());
    if (this._cfgPrettyPrinter != null)
      this._cfgPrettyPrinter.writeEndArray(this, this._writeContext.getEntryCount());
    while (true)
    {
      this._writeContext = this._writeContext.getParent();
      return;
      _writeEndArray();
    }
  }

  public void writeEndObject()
  {
    if (!this._writeContext.inObject())
      _reportError("Current context not an object but " + this._writeContext.getTypeDesc());
    this._writeContext = this._writeContext.getParent();
    if (this._cfgPrettyPrinter != null)
    {
      this._cfgPrettyPrinter.writeEndObject(this, this._writeContext.getEntryCount());
      return;
    }
    _writeEndObject();
  }

  public void writeObject(Object paramObject)
  {
    if (paramObject == null)
    {
      writeNull();
      return;
    }
    if (this._objectCodec != null)
    {
      this._objectCodec.writeValue(this, paramObject);
      return;
    }
    _writeSimpleObject(paramObject);
  }

  public void writeRawValue(String paramString)
  {
    _verifyValueWrite("write raw value");
    writeRaw(paramString);
  }

  public void writeStartArray()
  {
    _verifyValueWrite("start an array");
    this._writeContext = this._writeContext.createChildArrayContext();
    if (this._cfgPrettyPrinter != null)
    {
      this._cfgPrettyPrinter.writeStartArray(this);
      return;
    }
    _writeStartArray();
  }

  public void writeStartObject()
  {
    _verifyValueWrite("start an object");
    this._writeContext = this._writeContext.createChildObjectContext();
    if (this._cfgPrettyPrinter != null)
    {
      this._cfgPrettyPrinter.writeStartObject(this);
      return;
    }
    _writeStartObject();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.impl.JsonGeneratorBase
 * JD-Core Version:    0.6.2
 */
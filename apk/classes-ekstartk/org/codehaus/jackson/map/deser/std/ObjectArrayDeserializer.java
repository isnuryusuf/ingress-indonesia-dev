package org.codehaus.jackson.map.deser.std;

import java.lang.reflect.Array;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.type.ArrayType;
import org.codehaus.jackson.map.util.ObjectBuffer;
import org.codehaus.jackson.type.JavaType;

@JacksonStdImpl
public class ObjectArrayDeserializer extends ContainerDeserializerBase<Object[]>
{
  protected final JavaType _arrayType;
  protected final Class<?> _elementClass;
  protected final JsonDeserializer<Object> _elementDeserializer;
  protected final TypeDeserializer _elementTypeDeserializer;
  protected final boolean _untyped;

  public ObjectArrayDeserializer(ArrayType paramArrayType, JsonDeserializer<Object> paramJsonDeserializer, TypeDeserializer paramTypeDeserializer)
  {
    super([Ljava.lang.Object.class);
    this._arrayType = paramArrayType;
    this._elementClass = paramArrayType.getContentType().getRawClass();
    if (this._elementClass == Object.class);
    for (boolean bool = true; ; bool = false)
    {
      this._untyped = bool;
      this._elementDeserializer = paramJsonDeserializer;
      this._elementTypeDeserializer = paramTypeDeserializer;
      return;
    }
  }

  private final Object[] handleNonArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if ((paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING) && (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) && (paramJsonParser.getText().length() == 0))
      return null;
    if (!paramDeserializationContext.isEnabled(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY))
    {
      if ((paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING) && (this._elementClass == Byte.class))
        return deserializeFromBase64(paramJsonParser, paramDeserializationContext);
      throw paramDeserializationContext.mappingException(this._arrayType.getRawClass());
    }
    Object localObject;
    if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_NULL)
    {
      localObject = null;
      if (!this._untyped)
        break label150;
    }
    label150: for (Object[] arrayOfObject = new Object[1]; ; arrayOfObject = (Object[])Array.newInstance(this._elementClass, 1))
    {
      arrayOfObject[0] = localObject;
      return arrayOfObject;
      if (this._elementTypeDeserializer == null)
      {
        localObject = this._elementDeserializer.deserialize(paramJsonParser, paramDeserializationContext);
        break;
      }
      localObject = this._elementDeserializer.deserializeWithType(paramJsonParser, paramDeserializationContext, this._elementTypeDeserializer);
      break;
    }
  }

  public Object[] deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (!paramJsonParser.isExpectedStartArrayToken())
      return handleNonArray(paramJsonParser, paramDeserializationContext);
    ObjectBuffer localObjectBuffer = paramDeserializationContext.leaseObjectBuffer();
    Object[] arrayOfObject1 = localObjectBuffer.resetAndStart();
    TypeDeserializer localTypeDeserializer = this._elementTypeDeserializer;
    Object[] arrayOfObject2 = arrayOfObject1;
    int i = 0;
    JsonToken localJsonToken = paramJsonParser.nextToken();
    Object localObject;
    if (localJsonToken != JsonToken.END_ARRAY)
      if (localJsonToken == JsonToken.VALUE_NULL)
      {
        localObject = null;
        label63: if (i < arrayOfObject2.length)
          break label175;
        arrayOfObject2 = localObjectBuffer.appendCompletedChunk(arrayOfObject2);
      }
    label175: for (int j = 0; ; j = i)
    {
      i = j + 1;
      arrayOfObject2[j] = localObject;
      break;
      if (localTypeDeserializer == null)
      {
        localObject = this._elementDeserializer.deserialize(paramJsonParser, paramDeserializationContext);
        break label63;
      }
      localObject = this._elementDeserializer.deserializeWithType(paramJsonParser, paramDeserializationContext, localTypeDeserializer);
      break label63;
      if (this._untyped);
      for (Object[] arrayOfObject3 = localObjectBuffer.completeAndClearBuffer(arrayOfObject2, i); ; arrayOfObject3 = localObjectBuffer.completeAndClearBuffer(arrayOfObject2, i, this._elementClass))
      {
        paramDeserializationContext.returnObjectBuffer(localObjectBuffer);
        return arrayOfObject3;
      }
    }
  }

  protected Byte[] deserializeFromBase64(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    byte[] arrayOfByte = paramJsonParser.getBinaryValue(paramDeserializationContext.getBase64Variant());
    Byte[] arrayOfByte1 = new Byte[arrayOfByte.length];
    int i = 0;
    int j = arrayOfByte.length;
    while (i < j)
    {
      arrayOfByte1[i] = Byte.valueOf(arrayOfByte[i]);
      i++;
    }
    return arrayOfByte1;
  }

  public Object[] deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    return (Object[])paramTypeDeserializer.deserializeTypedFromArray(paramJsonParser, paramDeserializationContext);
  }

  public JsonDeserializer<Object> getContentDeserializer()
  {
    return this._elementDeserializer;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.ObjectArrayDeserializer
 * JD-Core Version:    0.6.2
 */
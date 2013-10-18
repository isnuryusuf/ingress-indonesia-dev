package org.codehaus.jackson.map.deser.std;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.TypeDeserializer;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;
import org.codehaus.jackson.map.util.ObjectBuffer;

@JacksonStdImpl
public class UntypedObjectDeserializer extends StdDeserializer<Object>
{
  private static final Object[] NO_OBJECTS = new Object[0];

  public UntypedObjectDeserializer()
  {
    super(Object.class);
  }

  public Object deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    switch (UntypedObjectDeserializer.1.$SwitchMap$org$codehaus$jackson$JsonToken[paramJsonParser.getCurrentToken().ordinal()])
    {
    case 2:
    case 4:
    default:
      throw paramDeserializationContext.mappingException(Object.class);
    case 1:
      return mapObject(paramJsonParser, paramDeserializationContext);
    case 3:
      return mapArray(paramJsonParser, paramDeserializationContext);
    case 5:
      return mapObject(paramJsonParser, paramDeserializationContext);
    case 6:
      return paramJsonParser.getEmbeddedObject();
    case 7:
      return paramJsonParser.getText();
    case 8:
      if (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.USE_BIG_INTEGER_FOR_INTS))
        return paramJsonParser.getBigIntegerValue();
      return paramJsonParser.getNumberValue();
    case 9:
      if (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.USE_BIG_DECIMAL_FOR_FLOATS))
        return paramJsonParser.getDecimalValue();
      return Double.valueOf(paramJsonParser.getDoubleValue());
    case 10:
      return Boolean.TRUE;
    case 11:
      return Boolean.FALSE;
    case 12:
    }
    return null;
  }

  public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    switch (UntypedObjectDeserializer.1.$SwitchMap$org$codehaus$jackson$JsonToken[localJsonToken.ordinal()])
    {
    case 2:
    case 4:
    default:
      throw paramDeserializationContext.mappingException(Object.class);
    case 1:
    case 3:
    case 5:
      return paramTypeDeserializer.deserializeTypedFromAny(paramJsonParser, paramDeserializationContext);
    case 7:
      return paramJsonParser.getText();
    case 8:
      if (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.USE_BIG_INTEGER_FOR_INTS))
        return paramJsonParser.getBigIntegerValue();
      return Integer.valueOf(paramJsonParser.getIntValue());
    case 9:
      if (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.USE_BIG_DECIMAL_FOR_FLOATS))
        return paramJsonParser.getDecimalValue();
      return Double.valueOf(paramJsonParser.getDoubleValue());
    case 10:
      return Boolean.TRUE;
    case 11:
      return Boolean.FALSE;
    case 6:
      return paramJsonParser.getEmbeddedObject();
    case 12:
    }
    return null;
  }

  protected Object mapArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.USE_JAVA_ARRAY_FOR_JSON_ARRAY))
      return mapArrayToArray(paramJsonParser, paramDeserializationContext);
    if (paramJsonParser.nextToken() == JsonToken.END_ARRAY)
      return new ArrayList(4);
    ObjectBuffer localObjectBuffer = paramDeserializationContext.leaseObjectBuffer();
    Object[] arrayOfObject1 = localObjectBuffer.resetAndStart();
    int i = 0;
    Object[] arrayOfObject2 = arrayOfObject1;
    int j = 0;
    Object localObject = deserialize(paramJsonParser, paramDeserializationContext);
    j++;
    if (i >= arrayOfObject2.length)
      arrayOfObject2 = localObjectBuffer.appendCompletedChunk(arrayOfObject2);
    for (int k = 0; ; k = i)
    {
      i = k + 1;
      arrayOfObject2[k] = localObject;
      if (paramJsonParser.nextToken() != JsonToken.END_ARRAY)
        break;
      ArrayList localArrayList = new ArrayList(1 + (j + (j >> 3)));
      localObjectBuffer.completeAndClearBuffer(arrayOfObject2, i, localArrayList);
      return localArrayList;
    }
  }

  protected Object[] mapArrayToArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (paramJsonParser.nextToken() == JsonToken.END_ARRAY)
      return NO_OBJECTS;
    ObjectBuffer localObjectBuffer = paramDeserializationContext.leaseObjectBuffer();
    Object[] arrayOfObject = localObjectBuffer.resetAndStart();
    int i = 0;
    Object localObject = deserialize(paramJsonParser, paramDeserializationContext);
    if (i >= arrayOfObject.length)
      arrayOfObject = localObjectBuffer.appendCompletedChunk(arrayOfObject);
    for (int j = 0; ; j = i)
    {
      i = j + 1;
      arrayOfObject[j] = localObject;
      if (paramJsonParser.nextToken() != JsonToken.END_ARRAY)
        break;
      return localObjectBuffer.completeAndClearBuffer(arrayOfObject, i);
    }
  }

  protected Object mapObject(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if (localJsonToken == JsonToken.START_OBJECT)
      localJsonToken = paramJsonParser.nextToken();
    if (localJsonToken != JsonToken.FIELD_NAME)
      return new LinkedHashMap(4);
    String str1 = paramJsonParser.getText();
    paramJsonParser.nextToken();
    Object localObject1 = deserialize(paramJsonParser, paramDeserializationContext);
    if (paramJsonParser.nextToken() != JsonToken.FIELD_NAME)
    {
      LinkedHashMap localLinkedHashMap1 = new LinkedHashMap(4);
      localLinkedHashMap1.put(str1, localObject1);
      return localLinkedHashMap1;
    }
    String str2 = paramJsonParser.getText();
    paramJsonParser.nextToken();
    Object localObject2 = deserialize(paramJsonParser, paramDeserializationContext);
    if (paramJsonParser.nextToken() != JsonToken.FIELD_NAME)
    {
      LinkedHashMap localLinkedHashMap2 = new LinkedHashMap(4);
      localLinkedHashMap2.put(str1, localObject1);
      localLinkedHashMap2.put(str2, localObject2);
      return localLinkedHashMap2;
    }
    LinkedHashMap localLinkedHashMap3 = new LinkedHashMap();
    localLinkedHashMap3.put(str1, localObject1);
    localLinkedHashMap3.put(str2, localObject2);
    do
    {
      String str3 = paramJsonParser.getText();
      paramJsonParser.nextToken();
      localLinkedHashMap3.put(str3, deserialize(paramJsonParser, paramDeserializationContext));
    }
    while (paramJsonParser.nextToken() != JsonToken.END_OBJECT);
    return localLinkedHashMap3;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.std.UntypedObjectDeserializer
 * JD-Core Version:    0.6.2
 */
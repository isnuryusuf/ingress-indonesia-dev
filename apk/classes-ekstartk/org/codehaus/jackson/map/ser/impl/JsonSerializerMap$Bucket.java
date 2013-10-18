package org.codehaus.jackson.map.ser.impl;

import org.codehaus.jackson.map.JsonSerializer;

final class JsonSerializerMap$Bucket
{
  public final SerializerCache.TypeKey key;
  public final Bucket next;
  public final JsonSerializer<Object> value;

  public JsonSerializerMap$Bucket(Bucket paramBucket, SerializerCache.TypeKey paramTypeKey, JsonSerializer<Object> paramJsonSerializer)
  {
    this.next = paramBucket;
    this.key = paramTypeKey;
    this.value = paramJsonSerializer;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.impl.JsonSerializerMap.Bucket
 * JD-Core Version:    0.6.2
 */
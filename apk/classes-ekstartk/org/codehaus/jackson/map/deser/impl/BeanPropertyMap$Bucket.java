package org.codehaus.jackson.map.deser.impl;

import org.codehaus.jackson.map.deser.SettableBeanProperty;

final class BeanPropertyMap$Bucket
{
  public final String key;
  public final Bucket next;
  public final SettableBeanProperty value;

  public BeanPropertyMap$Bucket(Bucket paramBucket, String paramString, SettableBeanProperty paramSettableBeanProperty)
  {
    this.next = paramBucket;
    this.key = paramString;
    this.value = paramSettableBeanProperty;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.BeanPropertyMap.Bucket
 * JD-Core Version:    0.6.2
 */
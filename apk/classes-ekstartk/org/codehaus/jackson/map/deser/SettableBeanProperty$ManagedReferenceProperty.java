package org.codehaus.jackson.map.deser;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.util.Annotations;

public final class SettableBeanProperty$ManagedReferenceProperty extends SettableBeanProperty
{
  protected final SettableBeanProperty _backProperty;
  protected final boolean _isContainer;
  protected final SettableBeanProperty _managedProperty;
  protected final String _referenceName;

  public SettableBeanProperty$ManagedReferenceProperty(String paramString, SettableBeanProperty paramSettableBeanProperty1, SettableBeanProperty paramSettableBeanProperty2, Annotations paramAnnotations, boolean paramBoolean)
  {
    super(paramSettableBeanProperty1.getName(), paramSettableBeanProperty1.getType(), paramSettableBeanProperty1._valueTypeDeserializer, paramAnnotations);
    this._referenceName = paramString;
    this._managedProperty = paramSettableBeanProperty1;
    this._backProperty = paramSettableBeanProperty2;
    this._isContainer = paramBoolean;
  }

  protected SettableBeanProperty$ManagedReferenceProperty(ManagedReferenceProperty paramManagedReferenceProperty, JsonDeserializer<Object> paramJsonDeserializer)
  {
    super(paramManagedReferenceProperty, paramJsonDeserializer);
    this._referenceName = paramManagedReferenceProperty._referenceName;
    this._isContainer = paramManagedReferenceProperty._isContainer;
    this._managedProperty = paramManagedReferenceProperty._managedProperty;
    this._backProperty = paramManagedReferenceProperty._backProperty;
  }

  public final void deserializeAndSet(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
  {
    set(paramObject, this._managedProperty.deserialize(paramJsonParser, paramDeserializationContext));
  }

  public final AnnotatedMember getMember()
  {
    return this._managedProperty.getMember();
  }

  public final void set(Object paramObject1, Object paramObject2)
  {
    this._managedProperty.set(paramObject1, paramObject2);
    if (paramObject2 != null)
    {
      if (this._isContainer)
      {
        if ((paramObject2 instanceof Object[]))
          for (Object localObject3 : (Object[])paramObject2)
            if (localObject3 != null)
              this._backProperty.set(localObject3, paramObject1);
        if ((paramObject2 instanceof Collection))
        {
          Iterator localIterator2 = ((Collection)paramObject2).iterator();
          while (localIterator2.hasNext())
          {
            Object localObject2 = localIterator2.next();
            if (localObject2 != null)
              this._backProperty.set(localObject2, paramObject1);
          }
        }
        if ((paramObject2 instanceof Map))
        {
          Iterator localIterator1 = ((Map)paramObject2).values().iterator();
          while (localIterator1.hasNext())
          {
            Object localObject1 = localIterator1.next();
            if (localObject1 != null)
              this._backProperty.set(localObject1, paramObject1);
          }
        }
        throw new IllegalStateException("Unsupported container type (" + paramObject2.getClass().getName() + ") when resolving reference '" + this._referenceName + "'");
      }
      this._backProperty.set(paramObject2, paramObject1);
    }
  }

  public final ManagedReferenceProperty withValueDeserializer(JsonDeserializer<Object> paramJsonDeserializer)
  {
    return new ManagedReferenceProperty(this, paramJsonDeserializer);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.SettableBeanProperty.ManagedReferenceProperty
 * JD-Core Version:    0.6.2
 */
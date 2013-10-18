package org.codehaus.jackson.map;

import org.codehaus.jackson.map.introspect.AnnotatedField;
import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.introspect.AnnotatedMethod;

public abstract class BeanPropertyDefinition
{
  public boolean couldDeserialize()
  {
    return getMutator() != null;
  }

  public abstract AnnotatedMember getAccessor();

  public abstract AnnotatedField getField();

  public abstract AnnotatedMethod getGetter();

  public abstract AnnotatedMember getMutator();

  public abstract String getName();

  public abstract AnnotatedMethod getSetter();

  public abstract boolean hasConstructorParameter();

  public abstract boolean hasField();

  public abstract boolean hasGetter();

  public abstract boolean hasSetter();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.BeanPropertyDefinition
 * JD-Core Version:    0.6.2
 */
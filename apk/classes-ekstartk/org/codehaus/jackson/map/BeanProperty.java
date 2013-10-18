package org.codehaus.jackson.map;

import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.type.JavaType;

public abstract interface BeanProperty
{
  public abstract AnnotatedMember getMember();

  public abstract JavaType getType();
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.BeanProperty
 * JD-Core Version:    0.6.2
 */
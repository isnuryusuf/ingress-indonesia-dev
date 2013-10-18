package org.codehaus.jackson.map.introspect;

import org.codehaus.jackson.annotate.JsonAutoDetect;
import org.codehaus.jackson.annotate.JsonAutoDetect.Visibility;

public abstract interface VisibilityChecker<T extends VisibilityChecker<T>>
{
  public abstract boolean isCreatorVisible(AnnotatedMember paramAnnotatedMember);

  public abstract boolean isFieldVisible(AnnotatedField paramAnnotatedField);

  public abstract boolean isGetterVisible(AnnotatedMethod paramAnnotatedMethod);

  public abstract boolean isIsGetterVisible(AnnotatedMethod paramAnnotatedMethod);

  public abstract boolean isSetterVisible(AnnotatedMethod paramAnnotatedMethod);

  public abstract T with(JsonAutoDetect paramJsonAutoDetect);

  public abstract T withCreatorVisibility(JsonAutoDetect.Visibility paramVisibility);

  public abstract T withFieldVisibility(JsonAutoDetect.Visibility paramVisibility);

  public abstract T withGetterVisibility(JsonAutoDetect.Visibility paramVisibility);

  public abstract T withIsGetterVisibility(JsonAutoDetect.Visibility paramVisibility);

  public abstract T withSetterVisibility(JsonAutoDetect.Visibility paramVisibility);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.introspect.VisibilityChecker
 * JD-Core Version:    0.6.2
 */
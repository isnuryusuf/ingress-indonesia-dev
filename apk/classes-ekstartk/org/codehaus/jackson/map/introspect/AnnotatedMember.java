package org.codehaus.jackson.map.introspect;

import java.lang.reflect.Member;
import org.codehaus.jackson.map.util.ClassUtil;

public abstract class AnnotatedMember extends Annotated
{
  protected final AnnotationMap _annotations;

  protected AnnotatedMember(AnnotationMap paramAnnotationMap)
  {
    this._annotations = paramAnnotationMap;
  }

  public final void fixAccess()
  {
    ClassUtil.checkAndFixAccess(getMember());
  }

  protected AnnotationMap getAllAnnotations()
  {
    return this._annotations;
  }

  public abstract Class<?> getDeclaringClass();

  public abstract Member getMember();

  public abstract void setValue(Object paramObject1, Object paramObject2);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.introspect.AnnotatedMember
 * JD-Core Version:    0.6.2
 */
package org.codehaus.jackson.map.introspect;

import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import org.codehaus.jackson.map.util.Annotations;

public final class AnnotationMap
  implements Annotations
{
  protected HashMap<Class<? extends Annotation>, Annotation> _annotations;

  public AnnotationMap()
  {
  }

  private AnnotationMap(HashMap<Class<? extends Annotation>, Annotation> paramHashMap)
  {
    this._annotations = paramHashMap;
  }

  public static AnnotationMap merge(AnnotationMap paramAnnotationMap1, AnnotationMap paramAnnotationMap2)
  {
    if ((paramAnnotationMap1 == null) || (paramAnnotationMap1._annotations == null) || (paramAnnotationMap1._annotations.isEmpty()))
      paramAnnotationMap1 = paramAnnotationMap2;
    while ((paramAnnotationMap2 == null) || (paramAnnotationMap2._annotations == null) || (paramAnnotationMap2._annotations.isEmpty()))
      return paramAnnotationMap1;
    HashMap localHashMap = new HashMap();
    Iterator localIterator1 = paramAnnotationMap2._annotations.values().iterator();
    while (localIterator1.hasNext())
    {
      Annotation localAnnotation2 = (Annotation)localIterator1.next();
      localHashMap.put(localAnnotation2.annotationType(), localAnnotation2);
    }
    Iterator localIterator2 = paramAnnotationMap1._annotations.values().iterator();
    while (localIterator2.hasNext())
    {
      Annotation localAnnotation1 = (Annotation)localIterator2.next();
      localHashMap.put(localAnnotation1.annotationType(), localAnnotation1);
    }
    return new AnnotationMap(localHashMap);
  }

  protected final void _add(Annotation paramAnnotation)
  {
    if (this._annotations == null)
      this._annotations = new HashMap();
    this._annotations.put(paramAnnotation.annotationType(), paramAnnotation);
  }

  public final void add(Annotation paramAnnotation)
  {
    _add(paramAnnotation);
  }

  public final void addIfNotPresent(Annotation paramAnnotation)
  {
    if ((this._annotations == null) || (!this._annotations.containsKey(paramAnnotation.annotationType())))
      _add(paramAnnotation);
  }

  public final <A extends Annotation> A get(Class<A> paramClass)
  {
    if (this._annotations == null)
      return null;
    return (Annotation)this._annotations.get(paramClass);
  }

  public final int size()
  {
    if (this._annotations == null)
      return 0;
    return this._annotations.size();
  }

  public final String toString()
  {
    if (this._annotations == null)
      return "[null]";
    return this._annotations.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.introspect.AnnotationMap
 * JD-Core Version:    0.6.2
 */
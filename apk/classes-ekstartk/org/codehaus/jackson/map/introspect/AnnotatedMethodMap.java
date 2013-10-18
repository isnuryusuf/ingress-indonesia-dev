package org.codehaus.jackson.map.introspect;

import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

public final class AnnotatedMethodMap
  implements Iterable<AnnotatedMethod>
{
  protected LinkedHashMap<MemberKey, AnnotatedMethod> _methods;

  public final void add(AnnotatedMethod paramAnnotatedMethod)
  {
    if (this._methods == null)
      this._methods = new LinkedHashMap();
    this._methods.put(new MemberKey(paramAnnotatedMethod.getAnnotated()), paramAnnotatedMethod);
  }

  public final AnnotatedMethod find(String paramString, Class<?>[] paramArrayOfClass)
  {
    if (this._methods == null)
      return null;
    return (AnnotatedMethod)this._methods.get(new MemberKey(paramString, paramArrayOfClass));
  }

  public final AnnotatedMethod find(Method paramMethod)
  {
    if (this._methods == null)
      return null;
    return (AnnotatedMethod)this._methods.get(new MemberKey(paramMethod));
  }

  public final boolean isEmpty()
  {
    return (this._methods == null) || (this._methods.size() == 0);
  }

  public final Iterator<AnnotatedMethod> iterator()
  {
    if (this._methods != null)
      return this._methods.values().iterator();
    return Collections.emptyList().iterator();
  }

  public final AnnotatedMethod remove(Method paramMethod)
  {
    if (this._methods != null)
      return (AnnotatedMethod)this._methods.remove(new MemberKey(paramMethod));
    return null;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.introspect.AnnotatedMethodMap
 * JD-Core Version:    0.6.2
 */
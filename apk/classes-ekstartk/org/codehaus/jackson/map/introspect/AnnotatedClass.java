package org.codehaus.jackson.map.introspect;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.codehaus.jackson.map.AnnotationIntrospector;
import org.codehaus.jackson.map.ClassIntrospector.MixInResolver;
import org.codehaus.jackson.map.util.Annotations;
import org.codehaus.jackson.map.util.ClassUtil;

public final class AnnotatedClass extends Annotated
{
  private static final AnnotationMap[] NO_ANNOTATION_MAPS = new AnnotationMap[0];
  protected final AnnotationIntrospector _annotationIntrospector;
  protected final Class<?> _class;
  protected AnnotationMap _classAnnotations;
  protected List<AnnotatedConstructor> _constructors;
  protected List<AnnotatedMethod> _creatorMethods;
  protected AnnotatedConstructor _defaultConstructor;
  protected List<AnnotatedField> _fields;
  protected AnnotatedMethodMap _memberMethods;
  protected final ClassIntrospector.MixInResolver _mixInResolver;
  protected final Class<?> _primaryMixIn;
  protected final List<Class<?>> _superTypes;

  private AnnotatedClass(Class<?> paramClass, List<Class<?>> paramList, AnnotationIntrospector paramAnnotationIntrospector, ClassIntrospector.MixInResolver paramMixInResolver, AnnotationMap paramAnnotationMap)
  {
    this._class = paramClass;
    this._superTypes = paramList;
    this._annotationIntrospector = paramAnnotationIntrospector;
    this._mixInResolver = paramMixInResolver;
    if (this._mixInResolver == null);
    for (Class localClass = null; ; localClass = this._mixInResolver.findMixInClassFor(this._class))
    {
      this._primaryMixIn = localClass;
      this._classAnnotations = paramAnnotationMap;
      return;
    }
  }

  private AnnotationMap _emptyAnnotationMap()
  {
    return new AnnotationMap();
  }

  private AnnotationMap[] _emptyAnnotationMaps(int paramInt)
  {
    AnnotationMap[] arrayOfAnnotationMap;
    if (paramInt == 0)
      arrayOfAnnotationMap = NO_ANNOTATION_MAPS;
    while (true)
    {
      return arrayOfAnnotationMap;
      arrayOfAnnotationMap = new AnnotationMap[paramInt];
      for (int i = 0; i < paramInt; i++)
        arrayOfAnnotationMap[i] = _emptyAnnotationMap();
    }
  }

  private boolean _isIncludableField(Field paramField)
  {
    if (paramField.isSynthetic());
    int i;
    do
    {
      return false;
      i = paramField.getModifiers();
    }
    while ((Modifier.isStatic(i)) || (Modifier.isTransient(i)));
    return true;
  }

  public static AnnotatedClass construct(Class<?> paramClass, AnnotationIntrospector paramAnnotationIntrospector, ClassIntrospector.MixInResolver paramMixInResolver)
  {
    AnnotatedClass localAnnotatedClass = new AnnotatedClass(paramClass, ClassUtil.findSuperTypes(paramClass, null), paramAnnotationIntrospector, paramMixInResolver, null);
    localAnnotatedClass.resolveClassAnnotations();
    return localAnnotatedClass;
  }

  public static AnnotatedClass constructWithoutSuperTypes(Class<?> paramClass, AnnotationIntrospector paramAnnotationIntrospector, ClassIntrospector.MixInResolver paramMixInResolver)
  {
    AnnotatedClass localAnnotatedClass = new AnnotatedClass(paramClass, Collections.emptyList(), paramAnnotationIntrospector, paramMixInResolver, null);
    localAnnotatedClass.resolveClassAnnotations();
    return localAnnotatedClass;
  }

  protected final void _addClassMixIns(AnnotationMap paramAnnotationMap, Class<?> paramClass)
  {
    if (this._mixInResolver != null)
      _addClassMixIns(paramAnnotationMap, paramClass, this._mixInResolver.findMixInClassFor(paramClass));
  }

  protected final void _addClassMixIns(AnnotationMap paramAnnotationMap, Class<?> paramClass1, Class<?> paramClass2)
  {
    if (paramClass2 == null)
      return;
    for (Annotation localAnnotation2 : paramClass2.getDeclaredAnnotations())
      if (this._annotationIntrospector.isHandled(localAnnotation2))
        paramAnnotationMap.addIfNotPresent(localAnnotation2);
    Iterator localIterator = ClassUtil.findSuperTypes(paramClass2, paramClass1).iterator();
    while (localIterator.hasNext())
      for (Annotation localAnnotation1 : ((Class)localIterator.next()).getDeclaredAnnotations())
        if (this._annotationIntrospector.isHandled(localAnnotation1))
          paramAnnotationMap.addIfNotPresent(localAnnotation1);
  }

  protected final void _addConstructorMixIns(Class<?> paramClass)
  {
    int i;
    int k;
    Object localObject1;
    label24: Constructor localConstructor;
    if (this._constructors == null)
    {
      i = 0;
      Constructor[] arrayOfConstructor = paramClass.getDeclaredConstructors();
      int j = arrayOfConstructor.length;
      k = 0;
      localObject1 = null;
      if (k >= j)
        break label209;
      localConstructor = arrayOfConstructor[k];
      if (localConstructor.getParameterTypes().length != 0)
        break label83;
      if (this._defaultConstructor != null)
        _addMixOvers(localConstructor, this._defaultConstructor, false);
    }
    while (true)
    {
      k++;
      break label24;
      i = this._constructors.size();
      break;
      label83: if (localObject1 == null)
      {
        localObject2 = new MemberKey[i];
        for (int n = 0; n < i; n++)
          localObject2[n] = new MemberKey(((AnnotatedConstructor)this._constructors.get(n)).getAnnotated());
      }
      Object localObject2 = localObject1;
      MemberKey localMemberKey = new MemberKey(localConstructor);
      int m = 0;
      while (true)
        if (m < i)
        {
          if (localMemberKey.equals(localObject2[m]))
          {
            _addMixOvers(localConstructor, (AnnotatedConstructor)this._constructors.get(m), true);
            localObject1 = localObject2;
            break;
          }
          m++;
          continue;
          label209: return;
        }
      localObject1 = localObject2;
    }
  }

  protected final void _addFactoryMixIns(Class<?> paramClass)
  {
    Object localObject1 = null;
    int i = this._creatorMethods.size();
    Method[] arrayOfMethod = paramClass.getDeclaredMethods();
    int j = arrayOfMethod.length;
    int k = 0;
    Object localObject2;
    int m;
    if (k < j)
    {
      Method localMethod = arrayOfMethod[k];
      if ((!Modifier.isStatic(localMethod.getModifiers())) || (localMethod.getParameterTypes().length == 0))
        break label187;
      if (localObject1 == null)
      {
        localObject2 = new MemberKey[i];
        for (int n = 0; n < i; n++)
          localObject2[n] = new MemberKey(((AnnotatedMethod)this._creatorMethods.get(n)).getAnnotated());
      }
      localObject2 = localObject1;
      MemberKey localMemberKey = new MemberKey(localMethod);
      m = 0;
      label131: if (m < i)
      {
        if (!localMemberKey.equals(localObject2[m]))
          break label180;
        _addMixOvers(localMethod, (AnnotatedMethod)this._creatorMethods.get(m), true);
      }
    }
    while (true)
    {
      k++;
      localObject1 = localObject2;
      break;
      label180: m++;
      break label131;
      return;
      label187: localObject2 = localObject1;
    }
  }

  protected final void _addFieldMixIns(Class<?> paramClass, Map<String, AnnotatedField> paramMap)
  {
    for (Field localField : paramClass.getDeclaredFields())
      if (_isIncludableField(localField))
      {
        AnnotatedField localAnnotatedField = (AnnotatedField)paramMap.get(localField.getName());
        if (localAnnotatedField != null)
          for (Annotation localAnnotation : localField.getDeclaredAnnotations())
            if (this._annotationIntrospector.isHandled(localAnnotation))
              localAnnotatedField.addOrOverride(localAnnotation);
      }
  }

  protected final void _addFields(Map<String, AnnotatedField> paramMap, Class<?> paramClass)
  {
    Class localClass1 = paramClass.getSuperclass();
    if (localClass1 != null)
    {
      _addFields(paramMap, localClass1);
      for (Field localField : paramClass.getDeclaredFields())
        if (_isIncludableField(localField))
          paramMap.put(localField.getName(), _constructField(localField));
      if (this._mixInResolver != null)
      {
        Class localClass2 = this._mixInResolver.findMixInClassFor(paramClass);
        if (localClass2 != null)
          _addFieldMixIns(localClass2, paramMap);
      }
    }
  }

  protected final void _addMemberMethods(Class<?> paramClass1, MethodFilter paramMethodFilter, AnnotatedMethodMap paramAnnotatedMethodMap1, Class<?> paramClass2, AnnotatedMethodMap paramAnnotatedMethodMap2)
  {
    if (paramClass2 != null)
      _addMethodMixIns(paramMethodFilter, paramAnnotatedMethodMap1, paramClass2, paramAnnotatedMethodMap2);
    if (paramClass1 == null)
      return;
    Method[] arrayOfMethod = paramClass1.getDeclaredMethods();
    int i = arrayOfMethod.length;
    int j = 0;
    label34: Method localMethod;
    AnnotatedMethod localAnnotatedMethod1;
    if (j < i)
    {
      localMethod = arrayOfMethod[j];
      if (_isIncludableMethod(localMethod, paramMethodFilter))
      {
        localAnnotatedMethod1 = paramAnnotatedMethodMap1.find(localMethod);
        if (localAnnotatedMethod1 != null)
          break label117;
        AnnotatedMethod localAnnotatedMethod2 = _constructMethod(localMethod);
        paramAnnotatedMethodMap1.add(localAnnotatedMethod2);
        AnnotatedMethod localAnnotatedMethod3 = paramAnnotatedMethodMap2.remove(localMethod);
        if (localAnnotatedMethod3 != null)
          _addMixOvers(localAnnotatedMethod3.getAnnotated(), localAnnotatedMethod2, false);
      }
    }
    while (true)
    {
      j++;
      break label34;
      break;
      label117: _addMixUnders(localMethod, localAnnotatedMethod1);
      if ((localAnnotatedMethod1.getDeclaringClass().isInterface()) && (!localMethod.getDeclaringClass().isInterface()))
        paramAnnotatedMethodMap1.add(localAnnotatedMethod1.withMethod(localMethod));
    }
  }

  protected final void _addMethodMixIns(MethodFilter paramMethodFilter, AnnotatedMethodMap paramAnnotatedMethodMap1, Class<?> paramClass, AnnotatedMethodMap paramAnnotatedMethodMap2)
  {
    Method[] arrayOfMethod = paramClass.getDeclaredMethods();
    int i = arrayOfMethod.length;
    int j = 0;
    if (j < i)
    {
      Method localMethod = arrayOfMethod[j];
      if (_isIncludableMethod(localMethod, paramMethodFilter))
      {
        AnnotatedMethod localAnnotatedMethod = paramAnnotatedMethodMap1.find(localMethod);
        if (localAnnotatedMethod == null)
          break label65;
        _addMixUnders(localMethod, localAnnotatedMethod);
      }
      while (true)
      {
        j++;
        break;
        label65: paramAnnotatedMethodMap2.add(_constructMethod(localMethod));
      }
    }
  }

  protected final void _addMixOvers(Constructor<?> paramConstructor, AnnotatedConstructor paramAnnotatedConstructor, boolean paramBoolean)
  {
    for (Annotation localAnnotation : paramConstructor.getDeclaredAnnotations())
      if (this._annotationIntrospector.isHandled(localAnnotation))
        paramAnnotatedConstructor.addOrOverride(localAnnotation);
    if (paramBoolean)
      for (Annotation[] arrayOfAnnotation2 : paramConstructor.getParameterAnnotations())
      {
        int n = arrayOfAnnotation2.length;
        for (int i1 = 0; i1 < n; i1++)
          paramAnnotatedConstructor.addOrOverrideParam(???, arrayOfAnnotation2[i1]);
      }
  }

  protected final void _addMixOvers(Method paramMethod, AnnotatedMethod paramAnnotatedMethod, boolean paramBoolean)
  {
    for (Annotation localAnnotation : paramMethod.getDeclaredAnnotations())
      if (this._annotationIntrospector.isHandled(localAnnotation))
        paramAnnotatedMethod.addOrOverride(localAnnotation);
    if (paramBoolean)
      for (Annotation[] arrayOfAnnotation2 : paramMethod.getParameterAnnotations())
      {
        int n = arrayOfAnnotation2.length;
        for (int i1 = 0; i1 < n; i1++)
          paramAnnotatedMethod.addOrOverrideParam(???, arrayOfAnnotation2[i1]);
      }
  }

  protected final void _addMixUnders(Method paramMethod, AnnotatedMethod paramAnnotatedMethod)
  {
    for (Annotation localAnnotation : paramMethod.getDeclaredAnnotations())
      if (this._annotationIntrospector.isHandled(localAnnotation))
        paramAnnotatedMethod.addIfNotPresent(localAnnotation);
  }

  protected final AnnotationMap _collectRelevantAnnotations(Annotation[] paramArrayOfAnnotation)
  {
    AnnotationMap localAnnotationMap = new AnnotationMap();
    if (paramArrayOfAnnotation != null)
    {
      int i = paramArrayOfAnnotation.length;
      for (int j = 0; j < i; j++)
      {
        Annotation localAnnotation = paramArrayOfAnnotation[j];
        if (this._annotationIntrospector.isHandled(localAnnotation))
          localAnnotationMap.add(localAnnotation);
      }
    }
    return localAnnotationMap;
  }

  protected final AnnotationMap[] _collectRelevantAnnotations(Annotation[][] paramArrayOfAnnotation)
  {
    int i = paramArrayOfAnnotation.length;
    AnnotationMap[] arrayOfAnnotationMap = new AnnotationMap[i];
    for (int j = 0; j < i; j++)
      arrayOfAnnotationMap[j] = _collectRelevantAnnotations(paramArrayOfAnnotation[j]);
    return arrayOfAnnotationMap;
  }

  protected final AnnotatedConstructor _constructConstructor(Constructor<?> paramConstructor, boolean paramBoolean)
  {
    if (this._annotationIntrospector == null)
      return new AnnotatedConstructor(paramConstructor, _emptyAnnotationMap(), _emptyAnnotationMaps(paramConstructor.getParameterTypes().length));
    AnnotationMap localAnnotationMap = _collectRelevantAnnotations(paramConstructor.getDeclaredAnnotations());
    if (paramBoolean);
    for (AnnotationMap[] arrayOfAnnotationMap = null; ; arrayOfAnnotationMap = _collectRelevantAnnotations(paramConstructor.getParameterAnnotations()))
      return new AnnotatedConstructor(paramConstructor, localAnnotationMap, arrayOfAnnotationMap);
  }

  protected final AnnotatedMethod _constructCreatorMethod(Method paramMethod)
  {
    if (this._annotationIntrospector == null)
      return new AnnotatedMethod(paramMethod, _emptyAnnotationMap(), _emptyAnnotationMaps(paramMethod.getParameterTypes().length));
    return new AnnotatedMethod(paramMethod, _collectRelevantAnnotations(paramMethod.getDeclaredAnnotations()), _collectRelevantAnnotations(paramMethod.getParameterAnnotations()));
  }

  protected final AnnotatedField _constructField(Field paramField)
  {
    if (this._annotationIntrospector == null)
      return new AnnotatedField(paramField, _emptyAnnotationMap());
    return new AnnotatedField(paramField, _collectRelevantAnnotations(paramField.getDeclaredAnnotations()));
  }

  protected final AnnotatedMethod _constructMethod(Method paramMethod)
  {
    if (this._annotationIntrospector == null)
      return new AnnotatedMethod(paramMethod, _emptyAnnotationMap(), null);
    return new AnnotatedMethod(paramMethod, _collectRelevantAnnotations(paramMethod.getDeclaredAnnotations()), null);
  }

  protected final boolean _isIncludableMethod(Method paramMethod, MethodFilter paramMethodFilter)
  {
    if ((paramMethodFilter != null) && (!paramMethodFilter.includeMethod(paramMethod)));
    while ((paramMethod.isSynthetic()) || (paramMethod.isBridge()))
      return false;
    return true;
  }

  public final Iterable<AnnotatedField> fields()
  {
    if (this._fields == null)
      return Collections.emptyList();
    return this._fields;
  }

  public final AnnotatedMethod findMethod(String paramString, Class<?>[] paramArrayOfClass)
  {
    return this._memberMethods.find(paramString, paramArrayOfClass);
  }

  public final Class<?> getAnnotated()
  {
    return this._class;
  }

  public final <A extends Annotation> A getAnnotation(Class<A> paramClass)
  {
    if (this._classAnnotations == null)
      return null;
    return this._classAnnotations.get(paramClass);
  }

  public final Annotations getAnnotations()
  {
    return this._classAnnotations;
  }

  public final List<AnnotatedConstructor> getConstructors()
  {
    if (this._constructors == null)
      return Collections.emptyList();
    return this._constructors;
  }

  public final AnnotatedConstructor getDefaultConstructor()
  {
    return this._defaultConstructor;
  }

  public final Type getGenericType()
  {
    return this._class;
  }

  public final String getName()
  {
    return this._class.getName();
  }

  public final Class<?> getRawType()
  {
    return this._class;
  }

  public final List<AnnotatedMethod> getStaticMethods()
  {
    if (this._creatorMethods == null)
      return Collections.emptyList();
    return this._creatorMethods;
  }

  public final boolean hasAnnotations()
  {
    return this._classAnnotations.size() > 0;
  }

  public final Iterable<AnnotatedMethod> memberMethods()
  {
    return this._memberMethods;
  }

  public final void resolveClassAnnotations()
  {
    this._classAnnotations = new AnnotationMap();
    if (this._annotationIntrospector == null)
      return;
    if (this._primaryMixIn != null)
      _addClassMixIns(this._classAnnotations, this._class, this._primaryMixIn);
    for (Annotation localAnnotation2 : this._class.getDeclaredAnnotations())
      if (this._annotationIntrospector.isHandled(localAnnotation2))
        this._classAnnotations.addIfNotPresent(localAnnotation2);
    Iterator localIterator = this._superTypes.iterator();
    while (localIterator.hasNext())
    {
      Class localClass = (Class)localIterator.next();
      _addClassMixIns(this._classAnnotations, localClass);
      for (Annotation localAnnotation1 : localClass.getDeclaredAnnotations())
        if (this._annotationIntrospector.isHandled(localAnnotation1))
          this._classAnnotations.addIfNotPresent(localAnnotation1);
    }
    _addClassMixIns(this._classAnnotations, Object.class);
  }

  public final void resolveCreators(boolean paramBoolean)
  {
    this._constructors = null;
    Constructor[] arrayOfConstructor = this._class.getDeclaredConstructors();
    int i = arrayOfConstructor.length;
    int j = 0;
    if (j < i)
    {
      Constructor localConstructor = arrayOfConstructor[j];
      if (localConstructor.getParameterTypes().length == 0)
        this._defaultConstructor = _constructConstructor(localConstructor, true);
      while (true)
      {
        j++;
        break;
        if (paramBoolean)
        {
          if (this._constructors == null)
            this._constructors = new ArrayList(Math.max(10, arrayOfConstructor.length));
          this._constructors.add(_constructConstructor(localConstructor, false));
        }
      }
    }
    if ((this._primaryMixIn != null) && ((this._defaultConstructor != null) || (this._constructors != null)))
      _addConstructorMixIns(this._primaryMixIn);
    int i2;
    if (this._annotationIntrospector != null)
    {
      if ((this._defaultConstructor != null) && (this._annotationIntrospector.isIgnorableConstructor(this._defaultConstructor)))
        this._defaultConstructor = null;
      if (this._constructors != null)
        i2 = this._constructors.size();
    }
    while (true)
    {
      int i3 = i2 - 1;
      if (i3 >= 0)
      {
        if (this._annotationIntrospector.isIgnorableConstructor((AnnotatedConstructor)this._constructors.get(i3)))
        {
          this._constructors.remove(i3);
          i2 = i3;
        }
      }
      else
      {
        this._creatorMethods = null;
        int n;
        if (paramBoolean)
        {
          for (Method localMethod : this._class.getDeclaredMethods())
            if ((Modifier.isStatic(localMethod.getModifiers())) && (localMethod.getParameterTypes().length > 0))
            {
              if (this._creatorMethods == null)
                this._creatorMethods = new ArrayList(8);
              this._creatorMethods.add(_constructCreatorMethod(localMethod));
            }
          if ((this._primaryMixIn != null) && (this._creatorMethods != null))
            _addFactoryMixIns(this._primaryMixIn);
          if ((this._annotationIntrospector != null) && (this._creatorMethods != null))
            n = this._creatorMethods.size();
        }
        while (true)
        {
          int i1 = n - 1;
          if (i1 >= 0)
          {
            if (this._annotationIntrospector.isIgnorableMethod((AnnotatedMethod)this._creatorMethods.get(i1)))
            {
              this._creatorMethods.remove(i1);
              n = i1;
            }
          }
          else
          {
            return;
            n = i1;
          }
        }
        i2 = i3;
      }
    }
  }

  public final void resolveFields()
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    _addFields(localLinkedHashMap, this._class);
    if (localLinkedHashMap.isEmpty())
    {
      this._fields = Collections.emptyList();
      return;
    }
    this._fields = new ArrayList(localLinkedHashMap.size());
    this._fields.addAll(localLinkedHashMap.values());
  }

  public final void resolveMemberMethods(MethodFilter paramMethodFilter)
  {
    this._memberMethods = new AnnotatedMethodMap();
    AnnotatedMethodMap localAnnotatedMethodMap = new AnnotatedMethodMap();
    _addMemberMethods(this._class, paramMethodFilter, this._memberMethods, this._primaryMixIn, localAnnotatedMethodMap);
    Iterator localIterator1 = this._superTypes.iterator();
    if (localIterator1.hasNext())
    {
      Class localClass2 = (Class)localIterator1.next();
      if (this._mixInResolver == null);
      for (Class localClass3 = null; ; localClass3 = this._mixInResolver.findMixInClassFor(localClass2))
      {
        _addMemberMethods(localClass2, paramMethodFilter, this._memberMethods, localClass3, localAnnotatedMethodMap);
        break;
      }
    }
    if (this._mixInResolver != null)
    {
      Class localClass1 = this._mixInResolver.findMixInClassFor(Object.class);
      if (localClass1 != null)
        _addMethodMixIns(paramMethodFilter, this._memberMethods, localClass1, localAnnotatedMethodMap);
    }
    if ((this._annotationIntrospector != null) && (!localAnnotatedMethodMap.isEmpty()))
    {
      Iterator localIterator2 = localAnnotatedMethodMap.iterator();
      while (localIterator2.hasNext())
      {
        AnnotatedMethod localAnnotatedMethod1 = (AnnotatedMethod)localIterator2.next();
        try
        {
          Method localMethod = Object.class.getDeclaredMethod(localAnnotatedMethod1.getName(), localAnnotatedMethod1.getParameterClasses());
          if (localMethod != null)
          {
            AnnotatedMethod localAnnotatedMethod2 = _constructMethod(localMethod);
            _addMixOvers(localAnnotatedMethod1.getAnnotated(), localAnnotatedMethod2, false);
            this._memberMethods.add(localAnnotatedMethod2);
          }
        }
        catch (Exception localException)
        {
        }
      }
    }
  }

  public final String toString()
  {
    return "[AnnotedClass " + this._class.getName() + "]";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.introspect.AnnotatedClass
 * JD-Core Version:    0.6.2
 */
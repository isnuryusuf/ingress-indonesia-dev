package org.codehaus.jackson.map.introspect;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import org.codehaus.jackson.map.AnnotationIntrospector;
import org.codehaus.jackson.map.BeanPropertyDefinition;
import org.codehaus.jackson.map.MapperConfig;
import org.codehaus.jackson.map.PropertyNamingStrategy;
import org.codehaus.jackson.map.util.BeanUtil;
import org.codehaus.jackson.type.JavaType;

public class POJOPropertiesCollector
{
  protected final AnnotationIntrospector _annotationIntrospector;
  protected LinkedList<AnnotatedMethod> _anyGetters = null;
  protected LinkedList<AnnotatedMethod> _anySetters = null;
  protected final AnnotatedClass _classDef;
  protected final MapperConfig<?> _config;
  protected LinkedList<POJOPropertyBuilder> _creatorProperties = null;
  protected final boolean _forSerialization;
  protected HashSet<String> _ignoredPropertyNames;
  protected LinkedHashMap<Object, AnnotatedMember> _injectables;
  protected LinkedList<AnnotatedMethod> _jsonValueGetters = null;
  protected final LinkedHashMap<String, POJOPropertyBuilder> _properties = new LinkedHashMap();
  protected final JavaType _type;
  protected final VisibilityChecker<?> _visibilityChecker;

  protected POJOPropertiesCollector(MapperConfig<?> paramMapperConfig, boolean paramBoolean, JavaType paramJavaType, AnnotatedClass paramAnnotatedClass)
  {
    this._config = paramMapperConfig;
    this._forSerialization = paramBoolean;
    this._type = paramJavaType;
    this._classDef = paramAnnotatedClass;
    boolean bool = paramMapperConfig.isAnnotationProcessingEnabled();
    AnnotationIntrospector localAnnotationIntrospector = null;
    if (bool)
      localAnnotationIntrospector = this._config.getAnnotationIntrospector();
    this._annotationIntrospector = localAnnotationIntrospector;
    if (this._annotationIntrospector == null)
    {
      this._visibilityChecker = this._config.getDefaultVisibilityChecker();
      return;
    }
    this._visibilityChecker = this._annotationIntrospector.findAutoDetectVisibility(paramAnnotatedClass, this._config.getDefaultVisibilityChecker());
  }

  private void _addIgnored(String paramString)
  {
    if (!this._forSerialization)
    {
      if (this._ignoredPropertyNames == null)
        this._ignoredPropertyNames = new HashSet();
      this._ignoredPropertyNames.add(paramString);
    }
  }

  protected void _addCreators()
  {
    AnnotationIntrospector localAnnotationIntrospector = this._annotationIntrospector;
    if (localAnnotationIntrospector == null)
      return;
    Iterator localIterator1 = this._classDef.getConstructors().iterator();
    while (localIterator1.hasNext())
    {
      AnnotatedConstructor localAnnotatedConstructor = (AnnotatedConstructor)localIterator1.next();
      if (this._creatorProperties == null)
        this._creatorProperties = new LinkedList();
      int k = localAnnotatedConstructor.getParameterCount();
      for (int m = 0; m < k; m++)
      {
        AnnotatedParameter localAnnotatedParameter2 = localAnnotatedConstructor.getParameter(m);
        String str2 = localAnnotationIntrospector.findPropertyNameForParam(localAnnotatedParameter2);
        if (str2 != null)
        {
          POJOPropertyBuilder localPOJOPropertyBuilder2 = _property(str2);
          localPOJOPropertyBuilder2.addCtor(localAnnotatedParameter2, str2, true, false);
          this._creatorProperties.add(localPOJOPropertyBuilder2);
        }
      }
    }
    Iterator localIterator2 = this._classDef.getStaticMethods().iterator();
    while (localIterator2.hasNext())
    {
      AnnotatedMethod localAnnotatedMethod = (AnnotatedMethod)localIterator2.next();
      if (this._creatorProperties == null)
        this._creatorProperties = new LinkedList();
      int i = localAnnotatedMethod.getParameterCount();
      for (int j = 0; j < i; j++)
      {
        AnnotatedParameter localAnnotatedParameter1 = localAnnotatedMethod.getParameter(j);
        String str1 = localAnnotationIntrospector.findPropertyNameForParam(localAnnotatedParameter1);
        if (str1 != null)
        {
          POJOPropertyBuilder localPOJOPropertyBuilder1 = _property(str1);
          localPOJOPropertyBuilder1.addCtor(localAnnotatedParameter1, str1, true, false);
          this._creatorProperties.add(localPOJOPropertyBuilder1);
        }
      }
    }
  }

  protected void _addFields()
  {
    AnnotationIntrospector localAnnotationIntrospector = this._annotationIntrospector;
    Iterator localIterator = this._classDef.fields().iterator();
    AnnotatedField localAnnotatedField;
    String str;
    Object localObject1;
    if (localIterator.hasNext())
    {
      localAnnotatedField = (AnnotatedField)localIterator.next();
      str = localAnnotatedField.getName();
      if (localAnnotationIntrospector == null)
      {
        localObject1 = null;
        label50: if (!"".equals(localObject1))
          break label170;
      }
    }
    label163: label170: for (Object localObject2 = str; ; localObject2 = localObject1)
    {
      boolean bool1;
      if (localObject2 != null)
      {
        bool1 = true;
        label72: if (bool1)
          break label163;
      }
      for (boolean bool2 = this._visibilityChecker.isFieldVisible(localAnnotatedField); ; bool2 = bool1)
      {
        if ((localAnnotationIntrospector != null) && (localAnnotationIntrospector.hasIgnoreMarker(localAnnotatedField)));
        for (boolean bool3 = true; ; bool3 = false)
        {
          _property(str).addField(localAnnotatedField, (String)localObject2, bool2, bool3);
          break;
          if (this._forSerialization)
          {
            localObject1 = localAnnotationIntrospector.findSerializablePropertyName(localAnnotatedField);
            break label50;
          }
          localObject1 = localAnnotationIntrospector.findDeserializablePropertyName(localAnnotatedField);
          break label50;
          bool1 = false;
          break label72;
        }
        return;
      }
    }
  }

  protected void _addInjectables()
  {
    AnnotationIntrospector localAnnotationIntrospector = this._annotationIntrospector;
    if (localAnnotationIntrospector == null);
    while (true)
    {
      return;
      Iterator localIterator1 = this._classDef.fields().iterator();
      while (localIterator1.hasNext())
      {
        AnnotatedField localAnnotatedField = (AnnotatedField)localIterator1.next();
        _doAddInjectable(localAnnotationIntrospector.findInjectableValueId(localAnnotatedField), localAnnotatedField);
      }
      Iterator localIterator2 = this._classDef.memberMethods().iterator();
      while (localIterator2.hasNext())
      {
        AnnotatedMethod localAnnotatedMethod = (AnnotatedMethod)localIterator2.next();
        if (localAnnotatedMethod.getParameterCount() == 1)
          _doAddInjectable(localAnnotationIntrospector.findInjectableValueId(localAnnotatedMethod), localAnnotatedMethod);
      }
    }
  }

  protected void _addMethods()
  {
    AnnotationIntrospector localAnnotationIntrospector = this._annotationIntrospector;
    Iterator localIterator = this._classDef.memberMethods().iterator();
    while (localIterator.hasNext())
    {
      AnnotatedMethod localAnnotatedMethod = (AnnotatedMethod)localIterator.next();
      int i = localAnnotatedMethod.getParameterCount();
      if (i == 0)
      {
        if (localAnnotationIntrospector != null)
        {
          if (localAnnotationIntrospector.hasAnyGetterAnnotation(localAnnotatedMethod))
          {
            if (this._anyGetters == null)
              this._anyGetters = new LinkedList();
            this._anyGetters.add(localAnnotatedMethod);
          }
          else if (localAnnotationIntrospector.hasAsValueAnnotation(localAnnotatedMethod))
          {
            if (this._jsonValueGetters == null)
              this._jsonValueGetters = new LinkedList();
            this._jsonValueGetters.add(localAnnotatedMethod);
          }
        }
        else
        {
          Object localObject4;
          label135: Object localObject5;
          Object localObject6;
          boolean bool4;
          if (localAnnotationIntrospector == null)
          {
            localObject4 = null;
            if (localObject4 == null)
            {
              localObject5 = BeanUtil.okNameForRegularGetter(localAnnotatedMethod, localAnnotatedMethod.getName());
              if (localObject5 == null)
              {
                localObject5 = BeanUtil.okNameForIsGetter(localAnnotatedMethod, localAnnotatedMethod.getName());
                if (localObject5 == null)
                  continue;
                boolean bool7 = this._visibilityChecker.isIsGetterVisible(localAnnotatedMethod);
                localObject6 = localObject4;
                bool4 = bool7;
                label190: if (localAnnotationIntrospector != null)
                  break label292;
              }
            }
          }
          else
          {
            label292: for (boolean bool5 = false; ; bool5 = localAnnotationIntrospector.hasIgnoreMarker(localAnnotatedMethod))
            {
              _property((String)localObject5).addGetter(localAnnotatedMethod, localObject6, bool4, bool5);
              break;
              localObject4 = localAnnotationIntrospector.findGettablePropertyName(localAnnotatedMethod);
              break label135;
              boolean bool6 = this._visibilityChecker.isGetterVisible(localAnnotatedMethod);
              localObject6 = localObject4;
              bool4 = bool6;
              break label190;
              String str2 = BeanUtil.okNameForGetter(localAnnotatedMethod);
              if (str2 == null)
                str2 = localAnnotatedMethod.getName();
              if (((String)localObject4).length() == 0)
                localObject4 = str2;
              localObject5 = str2;
              localObject6 = localObject4;
              bool4 = true;
              break label190;
            }
          }
        }
      }
      else if (i == 1)
      {
        Object localObject1;
        label315: Object localObject2;
        Object localObject3;
        boolean bool1;
        if (localAnnotationIntrospector == null)
        {
          localObject1 = null;
          if (localObject1 == null)
          {
            localObject2 = BeanUtil.okNameForSetter(localAnnotatedMethod);
            if (localObject2 == null)
              continue;
            boolean bool3 = this._visibilityChecker.isSetterVisible(localAnnotatedMethod);
            localObject3 = localObject1;
            bool1 = bool3;
            label351: if (localAnnotationIntrospector != null)
              break label430;
          }
        }
        else
        {
          label430: for (boolean bool2 = false; ; bool2 = localAnnotationIntrospector.hasIgnoreMarker(localAnnotatedMethod))
          {
            _property((String)localObject2).addSetter(localAnnotatedMethod, localObject3, bool1, bool2);
            break;
            localObject1 = localAnnotationIntrospector.findSettablePropertyName(localAnnotatedMethod);
            break label315;
            String str1 = BeanUtil.okNameForSetter(localAnnotatedMethod);
            if (str1 == null)
              str1 = localAnnotatedMethod.getName();
            if (((String)localObject1).length() == 0)
              localObject1 = str1;
            localObject2 = str1;
            localObject3 = localObject1;
            bool1 = true;
            break label351;
          }
        }
      }
      else if ((i == 2) && (localAnnotationIntrospector != null) && (localAnnotationIntrospector.hasAnySetterAnnotation(localAnnotatedMethod)))
      {
        if (this._anySetters == null)
          this._anySetters = new LinkedList();
        this._anySetters.add(localAnnotatedMethod);
      }
    }
  }

  protected void _doAddInjectable(Object paramObject, AnnotatedMember paramAnnotatedMember)
  {
    if (paramObject == null);
    do
    {
      return;
      if (this._injectables == null)
        this._injectables = new LinkedHashMap();
    }
    while ((AnnotatedMember)this._injectables.put(paramObject, paramAnnotatedMember) == null);
    if (paramObject == null);
    for (String str = "[null]"; ; str = paramObject.getClass().getName())
      throw new IllegalArgumentException("Duplicate injectable value with id '" + String.valueOf(paramObject) + "' (of type " + str + ")");
  }

  protected POJOPropertyBuilder _property(String paramString)
  {
    POJOPropertyBuilder localPOJOPropertyBuilder = (POJOPropertyBuilder)this._properties.get(paramString);
    if (localPOJOPropertyBuilder == null)
    {
      localPOJOPropertyBuilder = new POJOPropertyBuilder(paramString);
      this._properties.put(paramString, localPOJOPropertyBuilder);
    }
    return localPOJOPropertyBuilder;
  }

  protected void _removeUnwantedProperties()
  {
    Iterator localIterator = this._properties.entrySet().iterator();
    while (localIterator.hasNext())
    {
      POJOPropertyBuilder localPOJOPropertyBuilder = (POJOPropertyBuilder)((Map.Entry)localIterator.next()).getValue();
      if (!localPOJOPropertyBuilder.anyVisible())
        localIterator.remove();
      else if (localPOJOPropertyBuilder.anyIgnorals())
      {
        if (!localPOJOPropertyBuilder.anyExplicitNames())
        {
          localIterator.remove();
          _addIgnored(localPOJOPropertyBuilder.getName());
        }
        else
        {
          localPOJOPropertyBuilder.removeIgnored();
          if ((!this._forSerialization) && (!localPOJOPropertyBuilder.couldDeserialize()))
            _addIgnored(localPOJOPropertyBuilder.getName());
        }
      }
      else
        localPOJOPropertyBuilder.removeNonVisible();
    }
  }

  protected void _renameProperties()
  {
    Iterator localIterator1 = this._properties.entrySet().iterator();
    LinkedList localLinkedList = null;
    while (localIterator1.hasNext())
    {
      POJOPropertyBuilder localPOJOPropertyBuilder3 = (POJOPropertyBuilder)((Map.Entry)localIterator1.next()).getValue();
      String str2 = localPOJOPropertyBuilder3.findNewName();
      if (str2 != null)
      {
        if (localLinkedList == null)
          localLinkedList = new LinkedList();
        localLinkedList.add(localPOJOPropertyBuilder3.withName(str2));
        localIterator1.remove();
      }
    }
    if (localLinkedList != null)
    {
      Iterator localIterator2 = localLinkedList.iterator();
      while (localIterator2.hasNext())
      {
        POJOPropertyBuilder localPOJOPropertyBuilder1 = (POJOPropertyBuilder)localIterator2.next();
        String str1 = localPOJOPropertyBuilder1.getName();
        POJOPropertyBuilder localPOJOPropertyBuilder2 = (POJOPropertyBuilder)this._properties.get(str1);
        if (localPOJOPropertyBuilder2 == null)
          this._properties.put(str1, localPOJOPropertyBuilder1);
        else
          localPOJOPropertyBuilder2.addAll(localPOJOPropertyBuilder1);
      }
    }
  }

  protected void _renameUsing(PropertyNamingStrategy paramPropertyNamingStrategy)
  {
    POJOPropertyBuilder[] arrayOfPOJOPropertyBuilder = (POJOPropertyBuilder[])this._properties.values().toArray(new POJOPropertyBuilder[this._properties.size()]);
    this._properties.clear();
    int i = arrayOfPOJOPropertyBuilder.length;
    int j = 0;
    POJOPropertyBuilder localPOJOPropertyBuilder1;
    String str1;
    String str2;
    if (j < i)
    {
      localPOJOPropertyBuilder1 = arrayOfPOJOPropertyBuilder[j];
      str1 = localPOJOPropertyBuilder1.getName();
      if (this._forSerialization)
        if (localPOJOPropertyBuilder1.hasGetter())
          str2 = paramPropertyNamingStrategy.nameForGetterMethod(this._config, localPOJOPropertyBuilder1.getGetter(), str1);
    }
    while (true)
    {
      label90: if (!str2.equals(localPOJOPropertyBuilder1.getName()))
        localPOJOPropertyBuilder1 = localPOJOPropertyBuilder1.withName(str2);
      POJOPropertyBuilder localPOJOPropertyBuilder2 = (POJOPropertyBuilder)this._properties.get(str2);
      if (localPOJOPropertyBuilder2 == null)
        this._properties.put(str2, localPOJOPropertyBuilder1);
      while (true)
      {
        j++;
        break;
        if (!localPOJOPropertyBuilder1.hasField())
          break label300;
        str2 = paramPropertyNamingStrategy.nameForField(this._config, localPOJOPropertyBuilder1.getField(), str1);
        break label90;
        if (localPOJOPropertyBuilder1.hasSetter())
        {
          str2 = paramPropertyNamingStrategy.nameForSetterMethod(this._config, localPOJOPropertyBuilder1.getSetter(), str1);
          break label90;
        }
        if (localPOJOPropertyBuilder1.hasConstructorParameter())
        {
          str2 = paramPropertyNamingStrategy.nameForConstructorParameter(this._config, localPOJOPropertyBuilder1.getConstructorParameter(), str1);
          break label90;
        }
        if (localPOJOPropertyBuilder1.hasField())
        {
          str2 = paramPropertyNamingStrategy.nameForField(this._config, localPOJOPropertyBuilder1.getField(), str1);
          break label90;
        }
        if (!localPOJOPropertyBuilder1.hasGetter())
          break label300;
        str2 = paramPropertyNamingStrategy.nameForGetterMethod(this._config, localPOJOPropertyBuilder1.getGetter(), str1);
        break label90;
        localPOJOPropertyBuilder2.addAll(localPOJOPropertyBuilder1);
      }
      return;
      label300: str2 = str1;
    }
  }

  protected void _sortProperties()
  {
    AnnotationIntrospector localAnnotationIntrospector = this._config.getAnnotationIntrospector();
    Boolean localBoolean = localAnnotationIntrospector.findSerializationSortAlphabetically(this._classDef);
    if (localBoolean == null);
    String[] arrayOfString;
    for (boolean bool = this._config.shouldSortPropertiesAlphabetically(); ; bool = localBoolean.booleanValue())
    {
      arrayOfString = localAnnotationIntrospector.findSerializationPropertyOrder(this._classDef);
      if ((bool) || (this._creatorProperties != null) || (arrayOfString != null))
        break;
      return;
    }
    int i = this._properties.size();
    if (bool);
    for (Object localObject1 = new TreeMap(); ; localObject1 = new LinkedHashMap(i + i))
    {
      Iterator localIterator1 = this._properties.values().iterator();
      while (localIterator1.hasNext())
      {
        POJOPropertyBuilder localPOJOPropertyBuilder3 = (POJOPropertyBuilder)localIterator1.next();
        ((Map)localObject1).put(localPOJOPropertyBuilder3.getName(), localPOJOPropertyBuilder3);
      }
    }
    LinkedHashMap localLinkedHashMap = new LinkedHashMap(i + i);
    int k;
    String str1;
    Object localObject2;
    String str2;
    if (arrayOfString != null)
    {
      int j = arrayOfString.length;
      k = 0;
      if (k < j)
      {
        str1 = arrayOfString[k];
        localObject2 = (POJOPropertyBuilder)((Map)localObject1).get(str1);
        if (localObject2 != null)
          break label382;
        Iterator localIterator3 = this._properties.values().iterator();
        while (localIterator3.hasNext())
        {
          POJOPropertyBuilder localPOJOPropertyBuilder2 = (POJOPropertyBuilder)localIterator3.next();
          if (str1.equals(localPOJOPropertyBuilder2.getInternalName()))
          {
            str2 = localPOJOPropertyBuilder2.getName();
            localObject2 = localPOJOPropertyBuilder2;
          }
        }
      }
    }
    while (true)
    {
      if (localObject2 != null)
        localLinkedHashMap.put(str2, localObject2);
      k++;
      break;
      if (this._creatorProperties != null)
      {
        Iterator localIterator2 = this._creatorProperties.iterator();
        while (localIterator2.hasNext())
        {
          POJOPropertyBuilder localPOJOPropertyBuilder1 = (POJOPropertyBuilder)localIterator2.next();
          localLinkedHashMap.put(localPOJOPropertyBuilder1.getName(), localPOJOPropertyBuilder1);
        }
      }
      localLinkedHashMap.putAll((Map)localObject1);
      this._properties.clear();
      this._properties.putAll(localLinkedHashMap);
      return;
      label382: str2 = str1;
    }
  }

  public POJOPropertiesCollector collect()
  {
    this._properties.clear();
    _addFields();
    _addMethods();
    _addCreators();
    _addInjectables();
    _removeUnwantedProperties();
    _renameProperties();
    PropertyNamingStrategy localPropertyNamingStrategy = this._config.getPropertyNamingStrategy();
    if (localPropertyNamingStrategy != null)
      _renameUsing(localPropertyNamingStrategy);
    Iterator localIterator1 = this._properties.values().iterator();
    while (localIterator1.hasNext())
      ((POJOPropertyBuilder)localIterator1.next()).trimByVisibility();
    Iterator localIterator2 = this._properties.values().iterator();
    while (localIterator2.hasNext())
      ((POJOPropertyBuilder)localIterator2.next()).mergeAnnotations(this._forSerialization);
    _sortProperties();
    return this;
  }

  public AnnotatedMethod getAnyGetterMethod()
  {
    if (this._anyGetters != null)
    {
      if (this._anyGetters.size() > 1)
        reportProblem("Multiple 'any-getters' defined (" + this._anyGetters.get(0) + " vs " + this._anyGetters.get(1) + ")");
      return (AnnotatedMethod)this._anyGetters.getFirst();
    }
    return null;
  }

  public AnnotatedMethod getAnySetterMethod()
  {
    if (this._anySetters != null)
    {
      if (this._anySetters.size() > 1)
        reportProblem("Multiple 'any-setters' defined (" + this._anySetters.get(0) + " vs " + this._anySetters.get(1) + ")");
      return (AnnotatedMethod)this._anySetters.getFirst();
    }
    return null;
  }

  public AnnotatedClass getClassDef()
  {
    return this._classDef;
  }

  public MapperConfig<?> getConfig()
  {
    return this._config;
  }

  public Set<String> getIgnoredPropertyNames()
  {
    return this._ignoredPropertyNames;
  }

  public Map<Object, AnnotatedMember> getInjectables()
  {
    return this._injectables;
  }

  public AnnotatedMethod getJsonValueMethod()
  {
    if (this._jsonValueGetters != null)
    {
      if (this._jsonValueGetters.size() > 1)
        reportProblem("Multiple value properties defined (" + this._jsonValueGetters.get(0) + " vs " + this._jsonValueGetters.get(1) + ")");
      return (AnnotatedMethod)this._jsonValueGetters.get(0);
    }
    return null;
  }

  public List<BeanPropertyDefinition> getProperties()
  {
    return new ArrayList(this._properties.values());
  }

  public JavaType getType()
  {
    return this._type;
  }

  protected void reportProblem(String paramString)
  {
    throw new IllegalArgumentException("Problem with definition of " + this._classDef + ": " + paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.introspect.POJOPropertiesCollector
 * JD-Core Version:    0.6.2
 */
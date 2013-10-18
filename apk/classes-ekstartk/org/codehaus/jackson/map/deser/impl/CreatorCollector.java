package org.codehaus.jackson.map.deser.impl;

import java.lang.reflect.Member;
import java.util.HashMap;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.deser.ValueInstantiator;
import org.codehaus.jackson.map.deser.std.StdValueInstantiator;
import org.codehaus.jackson.map.introspect.AnnotatedConstructor;
import org.codehaus.jackson.map.introspect.AnnotatedWithParams;
import org.codehaus.jackson.map.introspect.BasicBeanDescription;
import org.codehaus.jackson.map.type.TypeBindings;
import org.codehaus.jackson.map.util.ClassUtil;
import org.codehaus.jackson.type.JavaType;

public class CreatorCollector
{
  final BasicBeanDescription _beanDesc;
  protected AnnotatedWithParams _booleanCreator;
  final boolean _canFixAccess;
  protected AnnotatedConstructor _defaultConstructor;
  protected AnnotatedWithParams _delegateCreator;
  protected AnnotatedWithParams _doubleCreator;
  protected AnnotatedWithParams _intCreator;
  protected AnnotatedWithParams _longCreator;
  protected CreatorProperty[] _propertyBasedArgs = null;
  protected AnnotatedWithParams _propertyBasedCreator;
  protected AnnotatedWithParams _stringCreator;

  public CreatorCollector(BasicBeanDescription paramBasicBeanDescription, boolean paramBoolean)
  {
    this._beanDesc = paramBasicBeanDescription;
    this._canFixAccess = paramBoolean;
  }

  public void addBooleanCreator(AnnotatedWithParams paramAnnotatedWithParams)
  {
    this._booleanCreator = verifyNonDup(paramAnnotatedWithParams, this._booleanCreator, "boolean");
  }

  public void addDelegatingCreator(AnnotatedWithParams paramAnnotatedWithParams)
  {
    this._delegateCreator = verifyNonDup(paramAnnotatedWithParams, this._delegateCreator, "delegate");
  }

  public void addDoubleCreator(AnnotatedWithParams paramAnnotatedWithParams)
  {
    this._doubleCreator = verifyNonDup(paramAnnotatedWithParams, this._doubleCreator, "double");
  }

  public void addIntCreator(AnnotatedWithParams paramAnnotatedWithParams)
  {
    this._intCreator = verifyNonDup(paramAnnotatedWithParams, this._intCreator, "int");
  }

  public void addLongCreator(AnnotatedWithParams paramAnnotatedWithParams)
  {
    this._longCreator = verifyNonDup(paramAnnotatedWithParams, this._longCreator, "long");
  }

  public void addPropertyCreator(AnnotatedWithParams paramAnnotatedWithParams, CreatorProperty[] paramArrayOfCreatorProperty)
  {
    this._propertyBasedCreator = verifyNonDup(paramAnnotatedWithParams, this._propertyBasedCreator, "property-based");
    if (paramArrayOfCreatorProperty.length > 1)
    {
      HashMap localHashMap = new HashMap();
      int i = paramArrayOfCreatorProperty.length;
      for (int j = 0; j < i; j++)
      {
        String str = paramArrayOfCreatorProperty[j].getName();
        Integer localInteger = (Integer)localHashMap.put(str, Integer.valueOf(j));
        if (localInteger != null)
          throw new IllegalArgumentException("Duplicate creator property \"" + str + "\" (index " + localInteger + " vs " + j + ")");
      }
    }
    this._propertyBasedArgs = paramArrayOfCreatorProperty;
  }

  public void addStringCreator(AnnotatedWithParams paramAnnotatedWithParams)
  {
    this._stringCreator = verifyNonDup(paramAnnotatedWithParams, this._stringCreator, "String");
  }

  public ValueInstantiator constructValueInstantiator(DeserializationConfig paramDeserializationConfig)
  {
    StdValueInstantiator localStdValueInstantiator = new StdValueInstantiator(paramDeserializationConfig, this._beanDesc.getType());
    if (this._delegateCreator == null);
    for (JavaType localJavaType = null; ; localJavaType = this._beanDesc.bindingsForBeanType().resolveType(this._delegateCreator.getParameterType(0)))
    {
      localStdValueInstantiator.configureFromObjectSettings(this._defaultConstructor, this._delegateCreator, localJavaType, this._propertyBasedCreator, this._propertyBasedArgs);
      localStdValueInstantiator.configureFromStringCreator(this._stringCreator);
      localStdValueInstantiator.configureFromIntCreator(this._intCreator);
      localStdValueInstantiator.configureFromLongCreator(this._longCreator);
      localStdValueInstantiator.configureFromDoubleCreator(this._doubleCreator);
      localStdValueInstantiator.configureFromBooleanCreator(this._booleanCreator);
      return localStdValueInstantiator;
    }
  }

  public void setDefaultConstructor(AnnotatedConstructor paramAnnotatedConstructor)
  {
    this._defaultConstructor = paramAnnotatedConstructor;
  }

  protected AnnotatedWithParams verifyNonDup(AnnotatedWithParams paramAnnotatedWithParams1, AnnotatedWithParams paramAnnotatedWithParams2, String paramString)
  {
    if ((paramAnnotatedWithParams2 != null) && (paramAnnotatedWithParams2.getClass() == paramAnnotatedWithParams1.getClass()))
      throw new IllegalArgumentException("Conflicting " + paramString + " creators: already had " + paramAnnotatedWithParams2 + ", encountered " + paramAnnotatedWithParams1);
    if (this._canFixAccess)
      ClassUtil.checkAndFixAccess((Member)paramAnnotatedWithParams1.getAnnotated());
    return paramAnnotatedWithParams1;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.impl.CreatorCollector
 * JD-Core Version:    0.6.2
 */
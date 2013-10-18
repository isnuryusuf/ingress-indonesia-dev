package org.codehaus.jackson.map.introspect;

import org.codehaus.jackson.map.BeanPropertyDefinition;

public class POJOPropertyBuilder extends BeanPropertyDefinition
  implements Comparable<POJOPropertyBuilder>
{
  protected POJOPropertyBuilder.Node<AnnotatedParameter> _ctorParameters;
  protected POJOPropertyBuilder.Node<AnnotatedField> _fields;
  protected POJOPropertyBuilder.Node<AnnotatedMethod> _getters;
  protected final String _internalName;
  protected final String _name;
  protected POJOPropertyBuilder.Node<AnnotatedMethod> _setters;

  public POJOPropertyBuilder(String paramString)
  {
    this._internalName = paramString;
    this._name = paramString;
  }

  public POJOPropertyBuilder(POJOPropertyBuilder paramPOJOPropertyBuilder, String paramString)
  {
    this._internalName = paramPOJOPropertyBuilder._internalName;
    this._name = paramString;
    this._fields = paramPOJOPropertyBuilder._fields;
    this._ctorParameters = paramPOJOPropertyBuilder._ctorParameters;
    this._getters = paramPOJOPropertyBuilder._getters;
    this._setters = paramPOJOPropertyBuilder._setters;
  }

  private <T> boolean _anyExplicitNames(POJOPropertyBuilder.Node<T> paramNode)
  {
    while (paramNode != null)
    {
      if ((paramNode.explicitName != null) && (paramNode.explicitName.length() > 0))
        return true;
      paramNode = paramNode.next;
    }
    return false;
  }

  private <T> boolean _anyIgnorals(POJOPropertyBuilder.Node<T> paramNode)
  {
    while (paramNode != null)
    {
      if (paramNode.isMarkedIgnored)
        return true;
      paramNode = paramNode.next;
    }
    return false;
  }

  private <T> boolean _anyVisible(POJOPropertyBuilder.Node<T> paramNode)
  {
    while (paramNode != null)
    {
      if (paramNode.isVisible)
        return true;
      paramNode = paramNode.next;
    }
    return false;
  }

  private AnnotationMap _mergeAnnotations(int paramInt, POJOPropertyBuilder.Node<? extends AnnotatedMember>[] paramArrayOfNode)
  {
    AnnotationMap localAnnotationMap = ((AnnotatedMember)paramArrayOfNode[paramInt].value).getAllAnnotations();
    for (int i = paramInt + 1; i < paramArrayOfNode.length; i++)
      if (paramArrayOfNode[i] != null)
        return AnnotationMap.merge(localAnnotationMap, _mergeAnnotations(i, paramArrayOfNode));
    return localAnnotationMap;
  }

  private <T> POJOPropertyBuilder.Node<T> _removeIgnored(POJOPropertyBuilder.Node<T> paramNode)
  {
    if (paramNode == null)
      return paramNode;
    return paramNode.withoutIgnored();
  }

  private <T> POJOPropertyBuilder.Node<T> _removeNonVisible(POJOPropertyBuilder.Node<T> paramNode)
  {
    if (paramNode == null)
      return paramNode;
    return paramNode.withoutNonVisible();
  }

  private <T> POJOPropertyBuilder.Node<T> _trimByVisibility(POJOPropertyBuilder.Node<T> paramNode)
  {
    if (paramNode == null)
      return paramNode;
    return paramNode.trimByVisibility();
  }

  private POJOPropertyBuilder.Node<? extends AnnotatedMember> findRenamed(POJOPropertyBuilder.Node<? extends AnnotatedMember> paramNode1, POJOPropertyBuilder.Node<? extends AnnotatedMember> paramNode2)
  {
    Object localObject1 = paramNode2;
    Object localObject2 = paramNode1;
    if (localObject2 != null)
    {
      String str = ((POJOPropertyBuilder.Node)localObject2).explicitName;
      if ((str != null) && (!str.equals(this._name)))
      {
        if (localObject1 != null)
          break label51;
        localObject1 = localObject2;
      }
      label51: 
      while (str.equals(((POJOPropertyBuilder.Node)localObject1).explicitName))
      {
        localObject2 = ((POJOPropertyBuilder.Node)localObject2).next;
        break;
      }
      throw new IllegalStateException("Conflicting property name definitions: '" + ((POJOPropertyBuilder.Node)localObject1).explicitName + "' (for " + ((POJOPropertyBuilder.Node)localObject1).value + ") vs '" + ((POJOPropertyBuilder.Node)localObject2).explicitName + "' (for " + ((POJOPropertyBuilder.Node)localObject2).value + ")");
    }
    return localObject1;
  }

  private static <T> POJOPropertyBuilder.Node<T> merge(POJOPropertyBuilder.Node<T> paramNode1, POJOPropertyBuilder.Node<T> paramNode2)
  {
    if (paramNode1 == null)
      return paramNode2;
    if (paramNode2 == null)
      return paramNode1;
    return POJOPropertyBuilder.Node.access$000(paramNode1, paramNode2);
  }

  public void addAll(POJOPropertyBuilder paramPOJOPropertyBuilder)
  {
    this._fields = merge(this._fields, paramPOJOPropertyBuilder._fields);
    this._ctorParameters = merge(this._ctorParameters, paramPOJOPropertyBuilder._ctorParameters);
    this._getters = merge(this._getters, paramPOJOPropertyBuilder._getters);
    this._setters = merge(this._setters, paramPOJOPropertyBuilder._setters);
  }

  public void addCtor(AnnotatedParameter paramAnnotatedParameter, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    this._ctorParameters = new POJOPropertyBuilder.Node(paramAnnotatedParameter, this._ctorParameters, paramString, paramBoolean1, paramBoolean2);
  }

  public void addField(AnnotatedField paramAnnotatedField, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    this._fields = new POJOPropertyBuilder.Node(paramAnnotatedField, this._fields, paramString, paramBoolean1, paramBoolean2);
  }

  public void addGetter(AnnotatedMethod paramAnnotatedMethod, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    this._getters = new POJOPropertyBuilder.Node(paramAnnotatedMethod, this._getters, paramString, paramBoolean1, paramBoolean2);
  }

  public void addSetter(AnnotatedMethod paramAnnotatedMethod, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    this._setters = new POJOPropertyBuilder.Node(paramAnnotatedMethod, this._setters, paramString, paramBoolean1, paramBoolean2);
  }

  public boolean anyExplicitNames()
  {
    return (_anyExplicitNames(this._fields)) || (_anyExplicitNames(this._getters)) || (_anyExplicitNames(this._setters)) || (_anyExplicitNames(this._ctorParameters));
  }

  public boolean anyIgnorals()
  {
    return (_anyIgnorals(this._fields)) || (_anyIgnorals(this._getters)) || (_anyIgnorals(this._setters)) || (_anyIgnorals(this._ctorParameters));
  }

  public boolean anyVisible()
  {
    return (_anyVisible(this._fields)) || (_anyVisible(this._getters)) || (_anyVisible(this._setters)) || (_anyVisible(this._ctorParameters));
  }

  public int compareTo(POJOPropertyBuilder paramPOJOPropertyBuilder)
  {
    if (this._ctorParameters != null)
    {
      if (paramPOJOPropertyBuilder._ctorParameters == null)
        return -1;
    }
    else if (paramPOJOPropertyBuilder._ctorParameters != null)
      return 1;
    return getName().compareTo(paramPOJOPropertyBuilder.getName());
  }

  public String findNewName()
  {
    POJOPropertyBuilder.Node localNode1 = findRenamed(this._fields, null);
    POJOPropertyBuilder.Node localNode2 = findRenamed(this._getters, localNode1);
    POJOPropertyBuilder.Node localNode3 = findRenamed(this._setters, localNode2);
    POJOPropertyBuilder.Node localNode4 = findRenamed(this._ctorParameters, localNode3);
    if (localNode4 == null)
      return null;
    return localNode4.explicitName;
  }

  public AnnotatedMember getAccessor()
  {
    Object localObject = getGetter();
    if (localObject == null)
      localObject = getField();
    return localObject;
  }

  public AnnotatedParameter getConstructorParameter()
  {
    if (this._ctorParameters == null)
      return null;
    POJOPropertyBuilder.Node localNode;
    for (Object localObject = this._ctorParameters; ; localObject = localNode)
    {
      if ((((AnnotatedParameter)((POJOPropertyBuilder.Node)localObject).value).getOwner() instanceof AnnotatedConstructor))
        return (AnnotatedParameter)((POJOPropertyBuilder.Node)localObject).value;
      localNode = ((POJOPropertyBuilder.Node)localObject).next;
      if (localNode == null)
        return (AnnotatedParameter)this._ctorParameters.value;
    }
  }

  public AnnotatedField getField()
  {
    if (this._fields == null)
    {
      localObject1 = null;
      return localObject1;
    }
    AnnotatedField localAnnotatedField = (AnnotatedField)this._fields.value;
    POJOPropertyBuilder.Node localNode = this._fields.next;
    Object localObject1 = localAnnotatedField;
    label32: Object localObject2;
    Class localClass1;
    Class localClass2;
    if (localNode != null)
    {
      localObject2 = (AnnotatedField)localNode.value;
      localClass1 = ((AnnotatedField)localObject1).getDeclaringClass();
      localClass2 = ((AnnotatedField)localObject2).getDeclaringClass();
      if (localClass1 == localClass2)
        break label96;
      if (!localClass1.isAssignableFrom(localClass2))
        break label86;
    }
    while (true)
    {
      localNode = localNode.next;
      localObject1 = localObject2;
      break label32;
      break;
      label86: if (!localClass2.isAssignableFrom(localClass1))
        label96: throw new IllegalArgumentException("Multiple fields representing property \"" + getName() + "\": " + ((AnnotatedField)localObject1).getFullName() + " vs " + ((AnnotatedField)localObject2).getFullName());
      localObject2 = localObject1;
    }
  }

  public AnnotatedMethod getGetter()
  {
    if (this._getters == null)
    {
      localObject1 = null;
      return localObject1;
    }
    AnnotatedMethod localAnnotatedMethod = (AnnotatedMethod)this._getters.value;
    POJOPropertyBuilder.Node localNode = this._getters.next;
    Object localObject1 = localAnnotatedMethod;
    label32: Object localObject2;
    Class localClass1;
    Class localClass2;
    if (localNode != null)
    {
      localObject2 = (AnnotatedMethod)localNode.value;
      localClass1 = ((AnnotatedMethod)localObject1).getDeclaringClass();
      localClass2 = ((AnnotatedMethod)localObject2).getDeclaringClass();
      if (localClass1 == localClass2)
        break label96;
      if (!localClass1.isAssignableFrom(localClass2))
        break label86;
    }
    while (true)
    {
      localNode = localNode.next;
      localObject1 = localObject2;
      break label32;
      break;
      label86: if (!localClass2.isAssignableFrom(localClass1))
        label96: throw new IllegalArgumentException("Conflicting getter definitions for property \"" + getName() + "\": " + ((AnnotatedMethod)localObject1).getFullName() + " vs " + ((AnnotatedMethod)localObject2).getFullName());
      localObject2 = localObject1;
    }
  }

  public String getInternalName()
  {
    return this._internalName;
  }

  public AnnotatedMember getMutator()
  {
    Object localObject = getConstructorParameter();
    if (localObject == null)
    {
      localObject = getSetter();
      if (localObject == null)
        localObject = getField();
    }
    return localObject;
  }

  public String getName()
  {
    return this._name;
  }

  public AnnotatedMethod getSetter()
  {
    if (this._setters == null)
    {
      localObject1 = null;
      return localObject1;
    }
    AnnotatedMethod localAnnotatedMethod = (AnnotatedMethod)this._setters.value;
    POJOPropertyBuilder.Node localNode = this._setters.next;
    Object localObject1 = localAnnotatedMethod;
    label32: Object localObject2;
    Class localClass1;
    Class localClass2;
    if (localNode != null)
    {
      localObject2 = (AnnotatedMethod)localNode.value;
      localClass1 = ((AnnotatedMethod)localObject1).getDeclaringClass();
      localClass2 = ((AnnotatedMethod)localObject2).getDeclaringClass();
      if (localClass1 == localClass2)
        break label96;
      if (!localClass1.isAssignableFrom(localClass2))
        break label86;
    }
    while (true)
    {
      localNode = localNode.next;
      localObject1 = localObject2;
      break label32;
      break;
      label86: if (!localClass2.isAssignableFrom(localClass1))
        label96: throw new IllegalArgumentException("Conflicting setter definitions for property \"" + getName() + "\": " + ((AnnotatedMethod)localObject1).getFullName() + " vs " + ((AnnotatedMethod)localObject2).getFullName());
      localObject2 = localObject1;
    }
  }

  public boolean hasConstructorParameter()
  {
    return this._ctorParameters != null;
  }

  public boolean hasField()
  {
    return this._fields != null;
  }

  public boolean hasGetter()
  {
    return this._getters != null;
  }

  public boolean hasSetter()
  {
    return this._setters != null;
  }

  public void mergeAnnotations(boolean paramBoolean)
  {
    if (paramBoolean)
      if (this._getters != null)
      {
        POJOPropertyBuilder.Node[] arrayOfNode5 = new POJOPropertyBuilder.Node[4];
        arrayOfNode5[0] = this._getters;
        arrayOfNode5[1] = this._fields;
        arrayOfNode5[2] = this._ctorParameters;
        arrayOfNode5[3] = this._setters;
        AnnotationMap localAnnotationMap5 = _mergeAnnotations(0, arrayOfNode5);
        this._getters = this._getters.withValue(((AnnotatedMethod)this._getters.value).withAnnotations(localAnnotationMap5));
      }
    do
    {
      do
        return;
      while (this._fields == null);
      POJOPropertyBuilder.Node[] arrayOfNode4 = new POJOPropertyBuilder.Node[3];
      arrayOfNode4[0] = this._fields;
      arrayOfNode4[1] = this._ctorParameters;
      arrayOfNode4[2] = this._setters;
      AnnotationMap localAnnotationMap4 = _mergeAnnotations(0, arrayOfNode4);
      this._fields = this._fields.withValue(((AnnotatedField)this._fields.value).withAnnotations(localAnnotationMap4));
      return;
      if (this._ctorParameters != null)
      {
        POJOPropertyBuilder.Node[] arrayOfNode3 = new POJOPropertyBuilder.Node[4];
        arrayOfNode3[0] = this._ctorParameters;
        arrayOfNode3[1] = this._setters;
        arrayOfNode3[2] = this._fields;
        arrayOfNode3[3] = this._getters;
        AnnotationMap localAnnotationMap3 = _mergeAnnotations(0, arrayOfNode3);
        this._ctorParameters = this._ctorParameters.withValue(((AnnotatedParameter)this._ctorParameters.value).withAnnotations(localAnnotationMap3));
        return;
      }
      if (this._setters != null)
      {
        POJOPropertyBuilder.Node[] arrayOfNode2 = new POJOPropertyBuilder.Node[3];
        arrayOfNode2[0] = this._setters;
        arrayOfNode2[1] = this._fields;
        arrayOfNode2[2] = this._getters;
        AnnotationMap localAnnotationMap2 = _mergeAnnotations(0, arrayOfNode2);
        this._setters = this._setters.withValue(((AnnotatedMethod)this._setters.value).withAnnotations(localAnnotationMap2));
        return;
      }
    }
    while (this._fields == null);
    POJOPropertyBuilder.Node[] arrayOfNode1 = new POJOPropertyBuilder.Node[2];
    arrayOfNode1[0] = this._fields;
    arrayOfNode1[1] = this._getters;
    AnnotationMap localAnnotationMap1 = _mergeAnnotations(0, arrayOfNode1);
    this._fields = this._fields.withValue(((AnnotatedField)this._fields.value).withAnnotations(localAnnotationMap1));
  }

  public void removeIgnored()
  {
    this._fields = _removeIgnored(this._fields);
    this._getters = _removeIgnored(this._getters);
    this._setters = _removeIgnored(this._setters);
    this._ctorParameters = _removeIgnored(this._ctorParameters);
  }

  public void removeNonVisible()
  {
    this._getters = _removeNonVisible(this._getters);
    this._ctorParameters = _removeNonVisible(this._ctorParameters);
    if (this._getters == null)
    {
      this._fields = _removeNonVisible(this._fields);
      this._setters = _removeNonVisible(this._setters);
    }
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[Property '").append(this._name).append("'; ctors: ").append(this._ctorParameters).append(", field(s): ").append(this._fields).append(", getter(s): ").append(this._getters).append(", setter(s): ").append(this._setters);
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }

  public void trimByVisibility()
  {
    this._fields = _trimByVisibility(this._fields);
    this._getters = _trimByVisibility(this._getters);
    this._setters = _trimByVisibility(this._setters);
    this._ctorParameters = _trimByVisibility(this._ctorParameters);
  }

  public POJOPropertyBuilder withName(String paramString)
  {
    return new POJOPropertyBuilder(this, paramString);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.introspect.POJOPropertyBuilder
 * JD-Core Version:    0.6.2
 */
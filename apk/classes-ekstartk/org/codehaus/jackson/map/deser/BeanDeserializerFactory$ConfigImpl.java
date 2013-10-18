package org.codehaus.jackson.map.deser;

import org.codehaus.jackson.map.AbstractTypeResolver;
import org.codehaus.jackson.map.DeserializerFactory.Config;
import org.codehaus.jackson.map.Deserializers;
import org.codehaus.jackson.map.KeyDeserializers;
import org.codehaus.jackson.map.util.ArrayBuilders;

public class BeanDeserializerFactory$ConfigImpl extends DeserializerFactory.Config
{
  protected static final AbstractTypeResolver[] NO_ABSTRACT_TYPE_RESOLVERS = new AbstractTypeResolver[0];
  protected static final KeyDeserializers[] NO_KEY_DESERIALIZERS = new KeyDeserializers[0];
  protected static final BeanDeserializerModifier[] NO_MODIFIERS = new BeanDeserializerModifier[0];
  protected static final ValueInstantiators[] NO_VALUE_INSTANTIATORS = new ValueInstantiators[0];
  protected final AbstractTypeResolver[] _abstractTypeResolvers;
  protected final Deserializers[] _additionalDeserializers;
  protected final KeyDeserializers[] _additionalKeyDeserializers;
  protected final BeanDeserializerModifier[] _modifiers;
  protected final ValueInstantiators[] _valueInstantiators;

  public BeanDeserializerFactory$ConfigImpl()
  {
    this(null, null, null, null, null);
  }

  protected BeanDeserializerFactory$ConfigImpl(Deserializers[] paramArrayOfDeserializers, KeyDeserializers[] paramArrayOfKeyDeserializers, BeanDeserializerModifier[] paramArrayOfBeanDeserializerModifier, AbstractTypeResolver[] paramArrayOfAbstractTypeResolver, ValueInstantiators[] paramArrayOfValueInstantiators)
  {
    if (paramArrayOfDeserializers == null)
      paramArrayOfDeserializers = BeanDeserializerFactory.access$000();
    this._additionalDeserializers = paramArrayOfDeserializers;
    if (paramArrayOfKeyDeserializers == null)
      paramArrayOfKeyDeserializers = NO_KEY_DESERIALIZERS;
    this._additionalKeyDeserializers = paramArrayOfKeyDeserializers;
    if (paramArrayOfBeanDeserializerModifier == null)
      paramArrayOfBeanDeserializerModifier = NO_MODIFIERS;
    this._modifiers = paramArrayOfBeanDeserializerModifier;
    if (paramArrayOfAbstractTypeResolver == null)
      paramArrayOfAbstractTypeResolver = NO_ABSTRACT_TYPE_RESOLVERS;
    this._abstractTypeResolvers = paramArrayOfAbstractTypeResolver;
    if (paramArrayOfValueInstantiators == null)
      paramArrayOfValueInstantiators = NO_VALUE_INSTANTIATORS;
    this._valueInstantiators = paramArrayOfValueInstantiators;
  }

  public Iterable<AbstractTypeResolver> abstractTypeResolvers()
  {
    return ArrayBuilders.arrayAsIterable(this._abstractTypeResolvers);
  }

  public Iterable<BeanDeserializerModifier> deserializerModifiers()
  {
    return ArrayBuilders.arrayAsIterable(this._modifiers);
  }

  public Iterable<Deserializers> deserializers()
  {
    return ArrayBuilders.arrayAsIterable(this._additionalDeserializers);
  }

  public boolean hasAbstractTypeResolvers()
  {
    return this._abstractTypeResolvers.length > 0;
  }

  public boolean hasDeserializerModifiers()
  {
    return this._modifiers.length > 0;
  }

  public boolean hasKeyDeserializers()
  {
    return this._additionalKeyDeserializers.length > 0;
  }

  public boolean hasValueInstantiators()
  {
    return this._valueInstantiators.length > 0;
  }

  public Iterable<KeyDeserializers> keyDeserializers()
  {
    return ArrayBuilders.arrayAsIterable(this._additionalKeyDeserializers);
  }

  public Iterable<ValueInstantiators> valueInstantiators()
  {
    return ArrayBuilders.arrayAsIterable(this._valueInstantiators);
  }

  public DeserializerFactory.Config withAbstractTypeResolver(AbstractTypeResolver paramAbstractTypeResolver)
  {
    if (paramAbstractTypeResolver == null)
      throw new IllegalArgumentException("Can not pass null resolver");
    AbstractTypeResolver[] arrayOfAbstractTypeResolver = (AbstractTypeResolver[])ArrayBuilders.insertInListNoDup(this._abstractTypeResolvers, paramAbstractTypeResolver);
    return new ConfigImpl(this._additionalDeserializers, this._additionalKeyDeserializers, this._modifiers, arrayOfAbstractTypeResolver, this._valueInstantiators);
  }

  public DeserializerFactory.Config withAdditionalDeserializers(Deserializers paramDeserializers)
  {
    if (paramDeserializers == null)
      throw new IllegalArgumentException("Can not pass null Deserializers");
    return new ConfigImpl((Deserializers[])ArrayBuilders.insertInListNoDup(this._additionalDeserializers, paramDeserializers), this._additionalKeyDeserializers, this._modifiers, this._abstractTypeResolvers, this._valueInstantiators);
  }

  public DeserializerFactory.Config withAdditionalKeyDeserializers(KeyDeserializers paramKeyDeserializers)
  {
    if (paramKeyDeserializers == null)
      throw new IllegalArgumentException("Can not pass null KeyDeserializers");
    KeyDeserializers[] arrayOfKeyDeserializers = (KeyDeserializers[])ArrayBuilders.insertInListNoDup(this._additionalKeyDeserializers, paramKeyDeserializers);
    return new ConfigImpl(this._additionalDeserializers, arrayOfKeyDeserializers, this._modifiers, this._abstractTypeResolvers, this._valueInstantiators);
  }

  public DeserializerFactory.Config withValueInstantiators(ValueInstantiators paramValueInstantiators)
  {
    if (paramValueInstantiators == null)
      throw new IllegalArgumentException("Can not pass null resolver");
    ValueInstantiators[] arrayOfValueInstantiators = (ValueInstantiators[])ArrayBuilders.insertInListNoDup(this._valueInstantiators, paramValueInstantiators);
    return new ConfigImpl(this._additionalDeserializers, this._additionalKeyDeserializers, this._modifiers, this._abstractTypeResolvers, arrayOfValueInstantiators);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.deser.BeanDeserializerFactory.ConfigImpl
 * JD-Core Version:    0.6.2
 */
package org.codehaus.jackson.map.ser;

import org.codehaus.jackson.map.SerializerFactory.Config;
import org.codehaus.jackson.map.Serializers;
import org.codehaus.jackson.map.util.ArrayBuilders;

public class BeanSerializerFactory$ConfigImpl extends SerializerFactory.Config
{
  protected static final BeanSerializerModifier[] NO_MODIFIERS = new BeanSerializerModifier[0];
  protected static final Serializers[] NO_SERIALIZERS = new Serializers[0];
  protected final Serializers[] _additionalKeySerializers;
  protected final Serializers[] _additionalSerializers;
  protected final BeanSerializerModifier[] _modifiers;

  public BeanSerializerFactory$ConfigImpl()
  {
    this(null, null, null);
  }

  protected BeanSerializerFactory$ConfigImpl(Serializers[] paramArrayOfSerializers1, Serializers[] paramArrayOfSerializers2, BeanSerializerModifier[] paramArrayOfBeanSerializerModifier)
  {
    if (paramArrayOfSerializers1 == null)
      paramArrayOfSerializers1 = NO_SERIALIZERS;
    this._additionalSerializers = paramArrayOfSerializers1;
    if (paramArrayOfSerializers2 == null)
      paramArrayOfSerializers2 = NO_SERIALIZERS;
    this._additionalKeySerializers = paramArrayOfSerializers2;
    if (paramArrayOfBeanSerializerModifier == null)
      paramArrayOfBeanSerializerModifier = NO_MODIFIERS;
    this._modifiers = paramArrayOfBeanSerializerModifier;
  }

  public boolean hasKeySerializers()
  {
    return this._additionalKeySerializers.length > 0;
  }

  public boolean hasSerializerModifiers()
  {
    return this._modifiers.length > 0;
  }

  public Iterable<Serializers> keySerializers()
  {
    return ArrayBuilders.arrayAsIterable(this._additionalKeySerializers);
  }

  public Iterable<BeanSerializerModifier> serializerModifiers()
  {
    return ArrayBuilders.arrayAsIterable(this._modifiers);
  }

  public Iterable<Serializers> serializers()
  {
    return ArrayBuilders.arrayAsIterable(this._additionalSerializers);
  }

  public SerializerFactory.Config withAdditionalKeySerializers(Serializers paramSerializers)
  {
    if (paramSerializers == null)
      throw new IllegalArgumentException("Can not pass null Serializers");
    Serializers[] arrayOfSerializers = (Serializers[])ArrayBuilders.insertInListNoDup(this._additionalKeySerializers, paramSerializers);
    return new ConfigImpl(this._additionalSerializers, arrayOfSerializers, this._modifiers);
  }

  public SerializerFactory.Config withAdditionalSerializers(Serializers paramSerializers)
  {
    if (paramSerializers == null)
      throw new IllegalArgumentException("Can not pass null Serializers");
    return new ConfigImpl((Serializers[])ArrayBuilders.insertInListNoDup(this._additionalSerializers, paramSerializers), this._additionalKeySerializers, this._modifiers);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.ser.BeanSerializerFactory.ConfigImpl
 * JD-Core Version:    0.6.2
 */
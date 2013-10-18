package org.codehaus.jackson.map;

import org.codehaus.jackson.map.introspect.VisibilityChecker;
import org.codehaus.jackson.map.jsontype.SubtypeResolver;
import org.codehaus.jackson.map.type.TypeFactory;

abstract class MapperConfig$Impl<CFG extends MapperConfig.ConfigFeature, T extends Impl<CFG, T>> extends MapperConfig<T>
{
  protected int _featureFlags;

  protected MapperConfig$Impl(ClassIntrospector<? extends BeanDescription> paramClassIntrospector, AnnotationIntrospector paramAnnotationIntrospector, VisibilityChecker<?> paramVisibilityChecker, SubtypeResolver paramSubtypeResolver, PropertyNamingStrategy paramPropertyNamingStrategy, TypeFactory paramTypeFactory, HandlerInstantiator paramHandlerInstantiator, int paramInt)
  {
    super(paramClassIntrospector, paramAnnotationIntrospector, paramVisibilityChecker, paramSubtypeResolver, paramPropertyNamingStrategy, paramTypeFactory, paramHandlerInstantiator);
    this._featureFlags = paramInt;
  }

  protected MapperConfig$Impl(Impl<CFG, T> paramImpl, MapperConfig.Base paramBase, SubtypeResolver paramSubtypeResolver)
  {
    super(paramImpl, paramBase, paramSubtypeResolver);
    this._featureFlags = paramImpl._featureFlags;
  }

  static <F extends Enum<F>,  extends MapperConfig.ConfigFeature> int collectFeatureDefaults(Class<F> paramClass)
  {
    Enum[] arrayOfEnum = (Enum[])paramClass.getEnumConstants();
    int i = arrayOfEnum.length;
    int j = 0;
    int k = 0;
    Enum localEnum;
    if (j < i)
    {
      localEnum = arrayOfEnum[j];
      if (!((MapperConfig.ConfigFeature)localEnum).enabledByDefault())
        break label67;
    }
    label67: for (int m = k | ((MapperConfig.ConfigFeature)localEnum).getMask(); ; m = k)
    {
      j++;
      k = m;
      break;
      return k;
    }
  }

  @Deprecated
  public void disable(CFG paramCFG)
  {
    this._featureFlags &= (0xFFFFFFFF ^ paramCFG.getMask());
  }

  @Deprecated
  public void enable(CFG paramCFG)
  {
    this._featureFlags |= paramCFG.getMask();
  }

  @Deprecated
  public void set(CFG paramCFG, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      enable(paramCFG);
      return;
    }
    disable(paramCFG);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.MapperConfig.Impl
 * JD-Core Version:    0.6.2
 */
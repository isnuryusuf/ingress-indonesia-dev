package org.codehaus.jackson.map;

import org.codehaus.jackson.map.introspect.AnnotatedMember;
import org.codehaus.jackson.map.util.Annotations;
import org.codehaus.jackson.type.JavaType;

public class BeanProperty$Std
  implements BeanProperty
{
  protected final Annotations _contextAnnotations;
  protected final AnnotatedMember _member;
  protected final String _name;
  protected final JavaType _type;

  public BeanProperty$Std(String paramString, JavaType paramJavaType, Annotations paramAnnotations, AnnotatedMember paramAnnotatedMember)
  {
    this._name = paramString;
    this._type = paramJavaType;
    this._member = paramAnnotatedMember;
    this._contextAnnotations = paramAnnotations;
  }

  public AnnotatedMember getMember()
  {
    return this._member;
  }

  public String getName()
  {
    return this._name;
  }

  public JavaType getType()
  {
    return this._type;
  }

  public Std withType(JavaType paramJavaType)
  {
    return new Std(this._name, paramJavaType, this._contextAnnotations, this._member);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.BeanProperty.Std
 * JD-Core Version:    0.6.2
 */
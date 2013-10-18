package org.codehaus.jackson.map.introspect;

import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import org.codehaus.jackson.annotate.JsonAutoDetect;
import org.codehaus.jackson.annotate.JsonAutoDetect.Visibility;
import org.codehaus.jackson.annotate.JsonMethod;

@JsonAutoDetect(creatorVisibility=JsonAutoDetect.Visibility.ANY, fieldVisibility=JsonAutoDetect.Visibility.PUBLIC_ONLY, getterVisibility=JsonAutoDetect.Visibility.PUBLIC_ONLY, isGetterVisibility=JsonAutoDetect.Visibility.PUBLIC_ONLY, setterVisibility=JsonAutoDetect.Visibility.ANY)
public class VisibilityChecker$Std
  implements VisibilityChecker<Std>
{
  protected static final Std DEFAULT = new Std((JsonAutoDetect)Std.class.getAnnotation(JsonAutoDetect.class));
  protected final JsonAutoDetect.Visibility _creatorMinLevel;
  protected final JsonAutoDetect.Visibility _fieldMinLevel;
  protected final JsonAutoDetect.Visibility _getterMinLevel;
  protected final JsonAutoDetect.Visibility _isGetterMinLevel;
  protected final JsonAutoDetect.Visibility _setterMinLevel;

  public VisibilityChecker$Std(JsonAutoDetect.Visibility paramVisibility1, JsonAutoDetect.Visibility paramVisibility2, JsonAutoDetect.Visibility paramVisibility3, JsonAutoDetect.Visibility paramVisibility4, JsonAutoDetect.Visibility paramVisibility5)
  {
    this._getterMinLevel = paramVisibility1;
    this._isGetterMinLevel = paramVisibility2;
    this._setterMinLevel = paramVisibility3;
    this._creatorMinLevel = paramVisibility4;
    this._fieldMinLevel = paramVisibility5;
  }

  public VisibilityChecker$Std(JsonAutoDetect paramJsonAutoDetect)
  {
    JsonMethod[] arrayOfJsonMethod = paramJsonAutoDetect.value();
    JsonAutoDetect.Visibility localVisibility1;
    JsonAutoDetect.Visibility localVisibility2;
    label51: JsonAutoDetect.Visibility localVisibility3;
    label75: JsonAutoDetect.Visibility localVisibility4;
    if (hasMethod(arrayOfJsonMethod, JsonMethod.GETTER))
    {
      localVisibility1 = paramJsonAutoDetect.getterVisibility();
      this._getterMinLevel = localVisibility1;
      if (!hasMethod(arrayOfJsonMethod, JsonMethod.IS_GETTER))
        break label137;
      localVisibility2 = paramJsonAutoDetect.isGetterVisibility();
      this._isGetterMinLevel = localVisibility2;
      if (!hasMethod(arrayOfJsonMethod, JsonMethod.SETTER))
        break label145;
      localVisibility3 = paramJsonAutoDetect.setterVisibility();
      this._setterMinLevel = localVisibility3;
      if (!hasMethod(arrayOfJsonMethod, JsonMethod.CREATOR))
        break label153;
      localVisibility4 = paramJsonAutoDetect.creatorVisibility();
      label99: this._creatorMinLevel = localVisibility4;
      if (!hasMethod(arrayOfJsonMethod, JsonMethod.FIELD))
        break label161;
    }
    label137: label145: label153: label161: for (JsonAutoDetect.Visibility localVisibility5 = paramJsonAutoDetect.fieldVisibility(); ; localVisibility5 = JsonAutoDetect.Visibility.NONE)
    {
      this._fieldMinLevel = localVisibility5;
      return;
      localVisibility1 = JsonAutoDetect.Visibility.NONE;
      break;
      localVisibility2 = JsonAutoDetect.Visibility.NONE;
      break label51;
      localVisibility3 = JsonAutoDetect.Visibility.NONE;
      break label75;
      localVisibility4 = JsonAutoDetect.Visibility.NONE;
      break label99;
    }
  }

  public static Std defaultInstance()
  {
    return DEFAULT;
  }

  private static boolean hasMethod(JsonMethod[] paramArrayOfJsonMethod, JsonMethod paramJsonMethod)
  {
    int i = paramArrayOfJsonMethod.length;
    for (int j = 0; ; j++)
    {
      boolean bool = false;
      if (j < i)
      {
        JsonMethod localJsonMethod = paramArrayOfJsonMethod[j];
        if ((localJsonMethod == paramJsonMethod) || (localJsonMethod == JsonMethod.ALL))
          bool = true;
      }
      else
      {
        return bool;
      }
    }
  }

  public boolean isCreatorVisible(Member paramMember)
  {
    return this._creatorMinLevel.isVisible(paramMember);
  }

  public boolean isCreatorVisible(AnnotatedMember paramAnnotatedMember)
  {
    return isCreatorVisible(paramAnnotatedMember.getMember());
  }

  public boolean isFieldVisible(Field paramField)
  {
    return this._fieldMinLevel.isVisible(paramField);
  }

  public boolean isFieldVisible(AnnotatedField paramAnnotatedField)
  {
    return isFieldVisible(paramAnnotatedField.getAnnotated());
  }

  public boolean isGetterVisible(Method paramMethod)
  {
    return this._getterMinLevel.isVisible(paramMethod);
  }

  public boolean isGetterVisible(AnnotatedMethod paramAnnotatedMethod)
  {
    return isGetterVisible(paramAnnotatedMethod.getAnnotated());
  }

  public boolean isIsGetterVisible(Method paramMethod)
  {
    return this._isGetterMinLevel.isVisible(paramMethod);
  }

  public boolean isIsGetterVisible(AnnotatedMethod paramAnnotatedMethod)
  {
    return isIsGetterVisible(paramAnnotatedMethod.getAnnotated());
  }

  public boolean isSetterVisible(Method paramMethod)
  {
    return this._setterMinLevel.isVisible(paramMethod);
  }

  public boolean isSetterVisible(AnnotatedMethod paramAnnotatedMethod)
  {
    return isSetterVisible(paramAnnotatedMethod.getAnnotated());
  }

  public String toString()
  {
    return "[Visibility: getter: " + this._getterMinLevel + ", isGetter: " + this._isGetterMinLevel + ", setter: " + this._setterMinLevel + ", creator: " + this._creatorMinLevel + ", field: " + this._fieldMinLevel + "]";
  }

  public Std with(JsonAutoDetect paramJsonAutoDetect)
  {
    if (paramJsonAutoDetect == null)
      return this;
    JsonMethod[] arrayOfJsonMethod = paramJsonAutoDetect.value();
    JsonAutoDetect.Visibility localVisibility1;
    JsonAutoDetect.Visibility localVisibility2;
    label55: JsonAutoDetect.Visibility localVisibility3;
    label82: JsonAutoDetect.Visibility localVisibility4;
    label109: Std localStd4;
    if (hasMethod(arrayOfJsonMethod, JsonMethod.GETTER))
    {
      localVisibility1 = paramJsonAutoDetect.getterVisibility();
      Std localStd1 = withGetterVisibility(localVisibility1);
      if (!hasMethod(arrayOfJsonMethod, JsonMethod.IS_GETTER))
        break label151;
      localVisibility2 = paramJsonAutoDetect.isGetterVisibility();
      Std localStd2 = localStd1.withIsGetterVisibility(localVisibility2);
      if (!hasMethod(arrayOfJsonMethod, JsonMethod.SETTER))
        break label159;
      localVisibility3 = paramJsonAutoDetect.setterVisibility();
      Std localStd3 = localStd2.withSetterVisibility(localVisibility3);
      if (!hasMethod(arrayOfJsonMethod, JsonMethod.CREATOR))
        break label167;
      localVisibility4 = paramJsonAutoDetect.creatorVisibility();
      localStd4 = localStd3.withCreatorVisibility(localVisibility4);
      if (!hasMethod(arrayOfJsonMethod, JsonMethod.FIELD))
        break label175;
    }
    label151: label159: label167: label175: for (JsonAutoDetect.Visibility localVisibility5 = paramJsonAutoDetect.fieldVisibility(); ; localVisibility5 = JsonAutoDetect.Visibility.NONE)
    {
      return localStd4.withFieldVisibility(localVisibility5);
      localVisibility1 = JsonAutoDetect.Visibility.NONE;
      break;
      localVisibility2 = JsonAutoDetect.Visibility.NONE;
      break label55;
      localVisibility3 = JsonAutoDetect.Visibility.NONE;
      break label82;
      localVisibility4 = JsonAutoDetect.Visibility.NONE;
      break label109;
    }
  }

  public Std withCreatorVisibility(JsonAutoDetect.Visibility paramVisibility)
  {
    if (paramVisibility == JsonAutoDetect.Visibility.DEFAULT);
    for (JsonAutoDetect.Visibility localVisibility = DEFAULT._creatorMinLevel; ; localVisibility = paramVisibility)
    {
      if (this._creatorMinLevel == localVisibility)
        return this;
      return new Std(this._getterMinLevel, this._isGetterMinLevel, this._setterMinLevel, localVisibility, this._fieldMinLevel);
    }
  }

  public Std withFieldVisibility(JsonAutoDetect.Visibility paramVisibility)
  {
    if (paramVisibility == JsonAutoDetect.Visibility.DEFAULT);
    for (JsonAutoDetect.Visibility localVisibility = DEFAULT._fieldMinLevel; ; localVisibility = paramVisibility)
    {
      if (this._fieldMinLevel == localVisibility)
        return this;
      return new Std(this._getterMinLevel, this._isGetterMinLevel, this._setterMinLevel, this._creatorMinLevel, localVisibility);
    }
  }

  public Std withGetterVisibility(JsonAutoDetect.Visibility paramVisibility)
  {
    if (paramVisibility == JsonAutoDetect.Visibility.DEFAULT);
    for (JsonAutoDetect.Visibility localVisibility = DEFAULT._getterMinLevel; ; localVisibility = paramVisibility)
    {
      if (this._getterMinLevel == localVisibility)
        return this;
      return new Std(localVisibility, this._isGetterMinLevel, this._setterMinLevel, this._creatorMinLevel, this._fieldMinLevel);
    }
  }

  public Std withIsGetterVisibility(JsonAutoDetect.Visibility paramVisibility)
  {
    if (paramVisibility == JsonAutoDetect.Visibility.DEFAULT);
    for (JsonAutoDetect.Visibility localVisibility = DEFAULT._isGetterMinLevel; ; localVisibility = paramVisibility)
    {
      if (this._isGetterMinLevel == localVisibility)
        return this;
      return new Std(this._getterMinLevel, localVisibility, this._setterMinLevel, this._creatorMinLevel, this._fieldMinLevel);
    }
  }

  public Std withSetterVisibility(JsonAutoDetect.Visibility paramVisibility)
  {
    if (paramVisibility == JsonAutoDetect.Visibility.DEFAULT);
    for (JsonAutoDetect.Visibility localVisibility = DEFAULT._setterMinLevel; ; localVisibility = paramVisibility)
    {
      if (this._setterMinLevel == localVisibility)
        return this;
      return new Std(this._getterMinLevel, this._isGetterMinLevel, localVisibility, this._creatorMinLevel, this._fieldMinLevel);
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.map.introspect.VisibilityChecker.Std
 * JD-Core Version:    0.6.2
 */
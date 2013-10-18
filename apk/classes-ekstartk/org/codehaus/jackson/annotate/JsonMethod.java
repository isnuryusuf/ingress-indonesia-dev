package org.codehaus.jackson.annotate;

public enum JsonMethod
{
  static
  {
    CREATOR = new JsonMethod("CREATOR", 2);
    FIELD = new JsonMethod("FIELD", 3);
    IS_GETTER = new JsonMethod("IS_GETTER", 4);
    NONE = new JsonMethod("NONE", 5);
    ALL = new JsonMethod("ALL", 6);
    JsonMethod[] arrayOfJsonMethod = new JsonMethod[7];
    arrayOfJsonMethod[0] = GETTER;
    arrayOfJsonMethod[1] = SETTER;
    arrayOfJsonMethod[2] = CREATOR;
    arrayOfJsonMethod[3] = FIELD;
    arrayOfJsonMethod[4] = IS_GETTER;
    arrayOfJsonMethod[5] = NONE;
    arrayOfJsonMethod[6] = ALL;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.annotate.JsonMethod
 * JD-Core Version:    0.6.2
 */
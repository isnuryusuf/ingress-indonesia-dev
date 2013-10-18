package com.nianticproject.ingress.message.component;

import com.google.a.a.an;
import com.nianticproject.ingress.shared.ai;
import com.nianticproject.ingress.shared.plext.c;
import com.nianticproject.ingress.shared.plext.f;
import java.util.List;
import org.codehaus.jackson.annotate.JsonProperty;

public class SimpleClientPlext
  implements ClientPlext
{

  @JsonProperty
  private final int categories;

  @JsonProperty
  private final List<c> markup;

  @JsonProperty
  private final f plextType;

  @JsonProperty
  private final ai team;

  @Deprecated
  @JsonProperty
  private final String text;

  private SimpleClientPlext()
  {
    this.text = null;
    this.team = null;
    this.markup = null;
    this.plextType = null;
    this.categories = -42;
  }

  public SimpleClientPlext(String paramString, List<c> paramList, ai paramai, f paramf, int paramInt)
  {
    an.a(paramString);
    an.a(paramList);
    an.a(paramai);
    an.a(paramf);
    this.text = paramString;
    this.markup = paramList;
    this.team = paramai;
    this.plextType = paramf;
    this.categories = paramInt;
  }

  public int getCategories()
  {
    return this.categories;
  }

  public List<c> getPlext()
  {
    return this.markup;
  }

  public f getPlextType()
  {
    return this.plextType;
  }

  public ai getTeam()
  {
    return this.team;
  }

  public String getText()
  {
    return this.text;
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.markup.toString();
    arrayOfObject[1] = this.text;
    arrayOfObject[2] = this.team;
    return String.format("'%s' [%s] for %s", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.message.component.SimpleClientPlext
 * JD-Core Version:    0.6.2
 */
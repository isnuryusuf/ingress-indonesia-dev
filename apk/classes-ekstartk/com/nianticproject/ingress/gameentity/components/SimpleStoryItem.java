package com.nianticproject.ingress.gameentity.components;

import com.google.a.a.ag;
import com.nianticproject.ingress.gameentity.a;
import com.nianticproject.ingress.shared.s;
import org.codehaus.jackson.annotate.JsonProperty;

public class SimpleStoryItem
  implements StoryItem, s
{
  private transient boolean dirty;

  @JsonProperty
  private boolean hasBeenViewed;

  @JsonProperty
  private final String primaryUrl;

  @JsonProperty
  private long releaseDate;

  @JsonProperty
  private final String shortDescription;

  private SimpleStoryItem()
  {
    this.primaryUrl = null;
    this.shortDescription = null;
    this.releaseDate = 0L;
  }

  public SimpleStoryItem(StoryItem paramStoryItem)
  {
    this.primaryUrl = paramStoryItem.getPrimaryUrl();
    this.shortDescription = paramStoryItem.getShortDescription();
    this.releaseDate = paramStoryItem.getReleaseDate();
    this.dirty = false;
    this.hasBeenViewed = false;
  }

  public SimpleStoryItem(String paramString1, String paramString2, long paramLong)
  {
    this.primaryUrl = paramString1;
    this.shortDescription = paramString2;
    this.releaseDate = paramLong;
    this.dirty = false;
    this.hasBeenViewed = false;
  }

  public a buildUnviewedCopy()
  {
    return new SimpleStoryItem(this.primaryUrl, this.shortDescription, this.releaseDate);
  }

  public String getPrimaryUrl()
  {
    return this.primaryUrl;
  }

  public long getReleaseDate()
  {
    return this.releaseDate;
  }

  public String getShortDescription()
  {
    return this.shortDescription;
  }

  public boolean hasBeenViewed()
  {
    return this.hasBeenViewed;
  }

  public int hashCode()
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = this.primaryUrl;
    arrayOfObject[1] = this.shortDescription;
    arrayOfObject[2] = Boolean.valueOf(this.hasBeenViewed);
    arrayOfObject[3] = Long.valueOf(this.releaseDate);
    return ag.a(arrayOfObject);
  }

  public boolean isDirty()
  {
    return this.dirty;
  }

  public void setClean()
  {
    this.dirty = false;
  }

  public void setHasBeenViewed(boolean paramBoolean)
  {
    if (this.hasBeenViewed != paramBoolean)
    {
      this.hasBeenViewed = paramBoolean;
      this.dirty = true;
    }
  }

  public void setReleaseDate(long paramLong)
  {
    this.releaseDate = paramLong;
    this.dirty = true;
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = this.primaryUrl;
    String str1;
    if (this.hasBeenViewed)
    {
      str1 = "viewed";
      arrayOfObject[1] = str1;
      arrayOfObject[2] = Long.valueOf(this.releaseDate);
      if (!this.dirty)
        break label63;
    }
    label63: for (String str2 = ", [dirty]"; ; str2 = "")
    {
      arrayOfObject[3] = str2;
      return String.format("url: <%s>, %s, release date: %s%s", arrayOfObject);
      str1 = "unviewed";
      break;
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.SimpleStoryItem
 * JD-Core Version:    0.6.2
 */
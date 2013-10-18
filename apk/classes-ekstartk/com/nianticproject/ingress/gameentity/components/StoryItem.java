package com.nianticproject.ingress.gameentity.components;

import com.nianticproject.ingress.gameentity.a;

public abstract interface StoryItem extends a
{
  public abstract a buildUnviewedCopy();

  public abstract String getPrimaryUrl();

  public abstract long getReleaseDate();

  public abstract String getShortDescription();

  public abstract boolean hasBeenViewed();

  public abstract void setHasBeenViewed(boolean paramBoolean);

  public abstract void setReleaseDate(long paramLong);
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.components.StoryItem
 * JD-Core Version:    0.6.2
 */
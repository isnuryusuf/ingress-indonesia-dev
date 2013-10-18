package com.nianticproject.ingress.server;

import com.google.a.a.an;
import com.google.a.c.jc;
import com.nianticproject.ingress.gameentity.f;
import java.util.Set;
import org.codehaus.jackson.annotate.JsonProperty;

public class FindNearbyPortalsFail
{

  @JsonProperty
  public final String continuationToken;

  @JsonProperty
  public final a failureKind;

  @JsonProperty
  public final Set<f> partialResult;

  private FindNearbyPortalsFail()
  {
    this.failureKind = null;
    this.continuationToken = null;
    this.partialResult = null;
  }

  public FindNearbyPortalsFail(a parama)
  {
    an.a(parama);
    if (parama != a.a);
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool);
      this.failureKind = parama;
      this.continuationToken = null;
      this.partialResult = jc.a();
      return;
    }
  }

  public final String a()
  {
    if (this.failureKind != a.a)
      throw new IllegalArgumentException("This method is only applicable for TIMEOUT failures.");
    return this.continuationToken;
  }

  public final a b()
  {
    return this.failureKind;
  }

  public final Set<f> c()
  {
    if (this.failureKind == a.a);
    for (boolean bool = true; ; bool = false)
    {
      an.b(bool);
      return this.partialResult;
    }
  }

  public String toString()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = this.failureKind;
    arrayOfObject[1] = this.continuationToken;
    return String.format("kind: %s, token: %s", arrayOfObject);
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.server.FindNearbyPortalsFail
 * JD-Core Version:    0.6.2
 */
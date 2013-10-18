package com.nianticproject.ingress.shared.curation;

import com.google.a.a.an;
import com.nianticproject.ingress.knobs.g;
import org.codehaus.jackson.annotate.JsonProperty;

public final class PortalDiscoveryKnobBundle
  implements g
{
  public static final PortalDiscoveryKnobBundle a = new PortalDiscoveryKnobBundle((byte)0);

  @JsonProperty
  private final boolean enableEdit;

  @JsonProperty
  private final boolean enablePortalDiscovery;

  @JsonProperty
  private final boolean enableResumableUpload;

  @JsonProperty
  private final int resumableUploadSizeBytes;

  @JsonProperty
  private final boolean scalePrecisely;

  @JsonProperty
  private final int thumbnailCompression;

  @JsonProperty
  private final int thumbnailSize;

  private PortalDiscoveryKnobBundle()
  {
    this.enableEdit = bool1;
    this.thumbnailCompression = 70;
    this.thumbnailSize = 2048;
    this.scalePrecisely = false;
    this.enablePortalDiscovery = bool1;
    this.enableResumableUpload = false;
    this.resumableUploadSizeBytes = 33554432;
    boolean bool2;
    boolean bool3;
    label69: boolean bool4;
    if (this.thumbnailCompression >= 0)
    {
      bool2 = bool1;
      an.b(bool2);
      if (this.thumbnailCompression > 100)
        break label114;
      bool3 = bool1;
      an.b(bool3);
      if (this.thumbnailSize <= 0)
        break label119;
      bool4 = bool1;
      label83: an.b(bool4);
      if ((this.resumableUploadSizeBytes <= 0) || (this.resumableUploadSizeBytes > 33554432))
        break label125;
    }
    while (true)
    {
      an.b(bool1);
      return;
      bool2 = false;
      break;
      label114: bool3 = false;
      break label69;
      label119: bool4 = false;
      break label83;
      label125: bool1 = false;
    }
  }

  public PortalDiscoveryKnobBundle(byte paramByte)
  {
    this();
  }

  public final int a()
  {
    return this.thumbnailCompression;
  }

  public final int b()
  {
    return this.thumbnailSize;
  }

  public final boolean c()
  {
    return this.scalePrecisely;
  }

  public final boolean d()
  {
    return this.enablePortalDiscovery;
  }

  public final boolean e()
  {
    return this.enableResumableUpload;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    PortalDiscoveryKnobBundle localPortalDiscoveryKnobBundle;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (getClass() != paramObject.getClass())
        return false;
      localPortalDiscoveryKnobBundle = (PortalDiscoveryKnobBundle)paramObject;
      if (this.enableEdit != localPortalDiscoveryKnobBundle.enableEdit)
        return false;
      if (this.scalePrecisely != localPortalDiscoveryKnobBundle.scalePrecisely)
        return false;
      if (this.enablePortalDiscovery != localPortalDiscoveryKnobBundle.enablePortalDiscovery)
        return false;
      if (this.enableResumableUpload != localPortalDiscoveryKnobBundle.enableResumableUpload)
        return false;
      if (this.thumbnailCompression != localPortalDiscoveryKnobBundle.thumbnailCompression)
        return false;
      if (this.thumbnailSize != localPortalDiscoveryKnobBundle.thumbnailSize)
        return false;
    }
    while (this.resumableUploadSizeBytes == localPortalDiscoveryKnobBundle.resumableUploadSizeBytes);
    return false;
  }

  public final int f()
  {
    return this.resumableUploadSizeBytes;
  }

  public final int hashCode()
  {
    int i = 1231;
    int j;
    int m;
    label31: int i1;
    label50: int i2;
    if (this.enableEdit)
    {
      j = i;
      int k = 31 * (j + 31);
      if (!this.scalePrecisely)
        break label103;
      m = i;
      int n = 31 * (m + k);
      if (!this.enablePortalDiscovery)
        break label111;
      i1 = i;
      i2 = 31 * (i1 + n);
      if (!this.enableResumableUpload)
        break label119;
    }
    while (true)
    {
      return 31 * (31 * (31 * (i2 + i) + this.thumbnailCompression) + this.thumbnailSize) + this.resumableUploadSizeBytes;
      j = 1237;
      break;
      label103: m = 1237;
      break label31;
      label111: i1 = 1237;
      break label50;
      label119: i = 1237;
    }
  }

  public final String toString()
  {
    return "PortalDiscoveryKnobBundle [enableEdit=" + this.enableEdit + ", thumbnailCompression=" + this.thumbnailCompression + ", thumbnailSize=" + this.thumbnailSize + ", enablePortalDiscovery=" + this.enablePortalDiscovery + ", enableResumableUpload=" + this.enableResumableUpload + ", scalePrecisely=" + this.scalePrecisely + ", resumableUploadSizeBytes=" + this.resumableUploadSizeBytes + "]";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.curation.PortalDiscoveryKnobBundle
 * JD-Core Version:    0.6.2
 */
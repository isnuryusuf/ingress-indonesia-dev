package com.nianticproject.ingress.shared.handshake;

import org.codehaus.jackson.annotate.JsonProperty;

public class DeviceInfo
{

  @JsonProperty
  private final String board;

  @JsonProperty
  private final String bootloader;

  @JsonProperty
  private final String brand;

  @JsonProperty
  private final String device;

  @JsonProperty
  private final String deviceId;

  @JsonProperty
  private final String display;

  @JsonProperty
  private final String fingerprint;

  @JsonProperty
  private final String hardware;

  @JsonProperty
  private final String manufacturer;

  @JsonProperty
  private final String model;

  @JsonProperty
  private final String product;

  @JsonProperty
  private final Boolean rooted;

  @JsonProperty
  private final String tags;

  @JsonProperty
  private final String type;

  private DeviceInfo()
  {
    this.rooted = null;
    this.deviceId = null;
    this.board = null;
    this.bootloader = null;
    this.brand = null;
    this.device = null;
    this.display = null;
    this.hardware = null;
    this.manufacturer = null;
    this.model = null;
    this.product = null;
    this.tags = null;
    this.type = null;
    this.fingerprint = null;
  }

  public DeviceInfo(Boolean paramBoolean, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, String paramString11, String paramString12, String paramString13)
  {
    this.rooted = paramBoolean;
    this.deviceId = paramString1;
    this.board = paramString2;
    this.bootloader = paramString3;
    this.brand = paramString4;
    this.device = paramString5;
    this.display = paramString6;
    this.hardware = paramString7;
    this.manufacturer = paramString8;
    this.model = paramString9;
    this.product = paramString10;
    this.tags = paramString11;
    this.type = paramString12;
    this.fingerprint = paramString13;
  }

  public final Boolean a()
  {
    return this.rooted;
  }

  public final String b()
  {
    return this.deviceId;
  }

  public final String c()
  {
    return this.board;
  }

  public final String d()
  {
    return this.bootloader;
  }

  public final String e()
  {
    return this.brand;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    DeviceInfo localDeviceInfo;
    do
    {
      do
      {
        return true;
        if (paramObject == null)
          return false;
        if (getClass() != paramObject.getClass())
          return false;
        localDeviceInfo = (DeviceInfo)paramObject;
        if (this.board == null)
        {
          if (localDeviceInfo.board != null)
            return false;
        }
        else if (!this.board.equals(localDeviceInfo.board))
          return false;
        if (this.bootloader == null)
        {
          if (localDeviceInfo.bootloader != null)
            return false;
        }
        else if (!this.bootloader.equals(localDeviceInfo.bootloader))
          return false;
        if (this.brand == null)
        {
          if (localDeviceInfo.brand != null)
            return false;
        }
        else if (!this.brand.equals(localDeviceInfo.brand))
          return false;
        if (this.device == null)
        {
          if (localDeviceInfo.device != null)
            return false;
        }
        else if (!this.device.equals(localDeviceInfo.device))
          return false;
        if (this.deviceId == null)
        {
          if (localDeviceInfo.deviceId != null)
            return false;
        }
        else if (!this.deviceId.equals(localDeviceInfo.deviceId))
          return false;
        if (this.display == null)
        {
          if (localDeviceInfo.display != null)
            return false;
        }
        else if (!this.display.equals(localDeviceInfo.display))
          return false;
        if (this.fingerprint == null)
        {
          if (localDeviceInfo.fingerprint != null)
            return false;
        }
        else if (!this.fingerprint.equals(localDeviceInfo.fingerprint))
          return false;
        if (this.hardware == null)
        {
          if (localDeviceInfo.hardware != null)
            return false;
        }
        else if (!this.hardware.equals(localDeviceInfo.hardware))
          return false;
        if (this.manufacturer == null)
        {
          if (localDeviceInfo.manufacturer != null)
            return false;
        }
        else if (!this.manufacturer.equals(localDeviceInfo.manufacturer))
          return false;
        if (this.model == null)
        {
          if (localDeviceInfo.model != null)
            return false;
        }
        else if (!this.model.equals(localDeviceInfo.model))
          return false;
        if (this.product == null)
        {
          if (localDeviceInfo.product != null)
            return false;
        }
        else if (!this.product.equals(localDeviceInfo.product))
          return false;
        if (this.rooted == null)
        {
          if (localDeviceInfo.rooted != null)
            return false;
        }
        else if (!this.rooted.equals(localDeviceInfo.rooted))
          return false;
        if (this.tags == null)
        {
          if (localDeviceInfo.tags != null)
            return false;
        }
        else if (!this.tags.equals(localDeviceInfo.tags))
          return false;
        if (this.type != null)
          break;
      }
      while (localDeviceInfo.type == null);
      return false;
    }
    while (this.type.equals(localDeviceInfo.type));
    return false;
  }

  public final String f()
  {
    return this.device;
  }

  public final String g()
  {
    return this.display;
  }

  public final String h()
  {
    return this.hardware;
  }

  public int hashCode()
  {
    int i;
    int k;
    label26: int n;
    label44: int i2;
    label64: int i4;
    label84: int i6;
    label104: int i8;
    label124: int i10;
    label144: int i12;
    label164: int i14;
    label184: int i16;
    label204: int i18;
    label224: int i20;
    label244: int i21;
    int i22;
    if (this.board == null)
    {
      i = 0;
      int j = 31 * (i + 31);
      if (this.bootloader != null)
        break label285;
      k = 0;
      int m = 31 * (k + j);
      if (this.brand != null)
        break label296;
      n = 0;
      int i1 = 31 * (n + m);
      if (this.device != null)
        break label308;
      i2 = 0;
      int i3 = 31 * (i2 + i1);
      if (this.deviceId != null)
        break label320;
      i4 = 0;
      int i5 = 31 * (i4 + i3);
      if (this.display != null)
        break label332;
      i6 = 0;
      int i7 = 31 * (i6 + i5);
      if (this.fingerprint != null)
        break label344;
      i8 = 0;
      int i9 = 31 * (i8 + i7);
      if (this.hardware != null)
        break label356;
      i10 = 0;
      int i11 = 31 * (i10 + i9);
      if (this.manufacturer != null)
        break label368;
      i12 = 0;
      int i13 = 31 * (i12 + i11);
      if (this.model != null)
        break label380;
      i14 = 0;
      int i15 = 31 * (i14 + i13);
      if (this.product != null)
        break label392;
      i16 = 0;
      int i17 = 31 * (i16 + i15);
      if (this.rooted != null)
        break label404;
      i18 = 0;
      int i19 = 31 * (i18 + i17);
      if (this.tags != null)
        break label416;
      i20 = 0;
      i21 = 31 * (i20 + i19);
      String str = this.type;
      i22 = 0;
      if (str != null)
        break label428;
    }
    while (true)
    {
      return i21 + i22;
      i = this.board.hashCode();
      break;
      label285: k = this.bootloader.hashCode();
      break label26;
      label296: n = this.brand.hashCode();
      break label44;
      label308: i2 = this.device.hashCode();
      break label64;
      label320: i4 = this.deviceId.hashCode();
      break label84;
      label332: i6 = this.display.hashCode();
      break label104;
      label344: i8 = this.fingerprint.hashCode();
      break label124;
      label356: i10 = this.hardware.hashCode();
      break label144;
      label368: i12 = this.manufacturer.hashCode();
      break label164;
      label380: i14 = this.model.hashCode();
      break label184;
      label392: i16 = this.product.hashCode();
      break label204;
      label404: i18 = this.rooted.hashCode();
      break label224;
      label416: i20 = this.tags.hashCode();
      break label244;
      label428: i22 = this.type.hashCode();
    }
  }

  public final String i()
  {
    return this.manufacturer;
  }

  public final String j()
  {
    return this.model;
  }

  public final String k()
  {
    return this.product;
  }

  public final String l()
  {
    return this.tags;
  }

  public final String m()
  {
    return this.type;
  }

  public final String n()
  {
    return this.fingerprint;
  }

  public String toString()
  {
    return "DeviceInfo [rooted=" + this.rooted + ", deviceId=" + this.deviceId + ", board=" + this.board + ", bootloader=" + this.bootloader + ", brand=" + this.brand + ", device=" + this.device + ", display=" + this.display + ", hardware=" + this.hardware + ", manufacturer=" + this.manufacturer + ", model=" + this.model + ", product=" + this.product + ", tags=" + this.tags + ", type=" + this.type + ", fingerprint=" + this.fingerprint + "]";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.shared.handshake.DeviceInfo
 * JD-Core Version:    0.6.2
 */
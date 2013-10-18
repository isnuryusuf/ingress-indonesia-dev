package org.codehaus.jackson;

public class Version
  implements Comparable<Version>
{
  private static final Version UNKNOWN_VERSION = new Version(0, 0, 0, null);
  protected final int _majorVersion;
  protected final int _minorVersion;
  protected final int _patchLevel;
  protected final String _snapshotInfo;

  public Version(int paramInt1, int paramInt2, int paramInt3, String paramString)
  {
    this._majorVersion = paramInt1;
    this._minorVersion = paramInt2;
    this._patchLevel = paramInt3;
    this._snapshotInfo = paramString;
  }

  public static Version unknownVersion()
  {
    return UNKNOWN_VERSION;
  }

  public int compareTo(Version paramVersion)
  {
    int i = this._majorVersion - paramVersion._majorVersion;
    if (i == 0)
    {
      i = this._minorVersion - paramVersion._minorVersion;
      if (i == 0)
        i = this._patchLevel - paramVersion._patchLevel;
    }
    return i;
  }

  public boolean equals(Object paramObject)
  {
    if (paramObject == this);
    Version localVersion;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (paramObject.getClass() != getClass())
        return false;
      localVersion = (Version)paramObject;
    }
    while ((localVersion._majorVersion == this._majorVersion) && (localVersion._minorVersion == this._minorVersion) && (localVersion._patchLevel == this._patchLevel));
    return false;
  }

  public int hashCode()
  {
    return this._majorVersion + this._minorVersion + this._patchLevel;
  }

  public boolean isSnapshot()
  {
    return (this._snapshotInfo != null) && (this._snapshotInfo.length() > 0);
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this._majorVersion).append('.');
    localStringBuilder.append(this._minorVersion).append('.');
    localStringBuilder.append(this._patchLevel);
    if (isSnapshot())
      localStringBuilder.append('-').append(this._snapshotInfo);
    return localStringBuilder.toString();
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     org.codehaus.jackson.Version
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.knobs;

import org.codehaus.jackson.annotate.JsonProperty;

public final class ClientFeatureKnobBundle
  implements g
{
  private static final ClientFeatureKnobBundle a = new ClientFeatureKnobBundle();

  @JsonProperty
  private final boolean allowFusedLocationUpdates = true;

  @JsonProperty
  private final boolean enableCommsAlertsTab = false;

  @JsonProperty
  private final int enableCommsAlertsTabVersioned = 0;

  @JsonProperty
  private final boolean enableDelayGpsPause = true;

  @JsonProperty
  private final boolean enableEmbeddedYouTubePlayback = true;

  @JsonProperty
  private final boolean enableGAViolationReporting = true;

  @JsonProperty
  private final boolean enableInviteNag = true;

  @JsonProperty
  private final boolean enableMultiPhotoUi = true;

  @JsonProperty
  private final boolean enableNewDeployUi = true;

  @JsonProperty
  private final boolean enableNewHackAnimations = true;

  @JsonProperty
  private final int enableOtherPlayerProfiles = 0;

  @JsonProperty
  private final boolean enableParticleFilter = true;

  @JsonProperty
  private final int enablePortalClickInComm = 0;

  @JsonProperty
  private final boolean enableRecycle = true;

  @JsonProperty
  private final boolean enableReportBadPortalUiV131 = false;

  @JsonProperty
  private final boolean enableScannerSmoothing = true;

  @JsonProperty
  private final int fireMode = 2;

  @JsonProperty
  private final boolean forceSkipTrainingMissions = false;

  @JsonProperty
  private final int inviteNagDelayDays = 30;

  @JsonProperty
  private final int playerAvatarOnScannerEnabled = 0;

  @JsonProperty
  private final int playerAvatarsEnabled = 0;

  @JsonProperty
  private final long playerProfileCacheExpirationSecs = 60L;

  @JsonProperty
  private final int playerProfileEnabled = 0;

  @JsonProperty
  private final int portalInfoRefreshIntervalSecs = 2;

  @JsonProperty
  private final int portalKeyCardRefreshIntervalSecs = 5;

  @JsonProperty
  private final long refreshTimeMs = e.a;

  public final boolean a()
  {
    return this.enableEmbeddedYouTubePlayback;
  }

  public final boolean a(b paramb)
  {
    return n.a(paramb, this.enableCommsAlertsTabVersioned);
  }

  public final boolean b()
  {
    return this.enableParticleFilter;
  }

  public final boolean b(b paramb)
  {
    return n.a(paramb, this.playerProfileEnabled);
  }

  public final boolean c()
  {
    return this.allowFusedLocationUpdates;
  }

  public final boolean c(b paramb)
  {
    return n.a(paramb, this.playerAvatarsEnabled);
  }

  public final boolean d()
  {
    return this.enableGAViolationReporting;
  }

  public final boolean d(b paramb)
  {
    return n.a(paramb, this.playerAvatarOnScannerEnabled);
  }

  public final boolean e()
  {
    return this.enableMultiPhotoUi;
  }

  public final boolean e(b paramb)
  {
    return n.a(paramb, this.enableOtherPlayerProfiles);
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    ClientFeatureKnobBundle localClientFeatureKnobBundle;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (getClass() != paramObject.getClass())
        return false;
      localClientFeatureKnobBundle = (ClientFeatureKnobBundle)paramObject;
      if (this.enableEmbeddedYouTubePlayback != localClientFeatureKnobBundle.enableEmbeddedYouTubePlayback)
        return false;
      if (this.enableGAViolationReporting != localClientFeatureKnobBundle.enableGAViolationReporting)
        return false;
      if (this.enableInviteNag != localClientFeatureKnobBundle.enableInviteNag)
        return false;
      if (this.enableMultiPhotoUi != localClientFeatureKnobBundle.enableMultiPhotoUi)
        return false;
      if (this.enableParticleFilter != localClientFeatureKnobBundle.enableParticleFilter)
        return false;
      if (this.allowFusedLocationUpdates != localClientFeatureKnobBundle.allowFusedLocationUpdates)
        return false;
      if (this.enableRecycle != localClientFeatureKnobBundle.enableRecycle)
        return false;
      if (this.inviteNagDelayDays != localClientFeatureKnobBundle.inviteNagDelayDays)
        return false;
      if (this.portalInfoRefreshIntervalSecs != localClientFeatureKnobBundle.portalInfoRefreshIntervalSecs)
        return false;
      if (this.portalKeyCardRefreshIntervalSecs != localClientFeatureKnobBundle.portalKeyCardRefreshIntervalSecs)
        return false;
      if (this.enableScannerSmoothing != localClientFeatureKnobBundle.enableScannerSmoothing)
        return false;
      if (this.enableReportBadPortalUiV131 != localClientFeatureKnobBundle.enableReportBadPortalUiV131)
        return false;
      if (this.enableCommsAlertsTab != localClientFeatureKnobBundle.enableCommsAlertsTab)
        return false;
      if (this.enableCommsAlertsTabVersioned != localClientFeatureKnobBundle.enableCommsAlertsTabVersioned)
        return false;
      if (this.fireMode != localClientFeatureKnobBundle.fireMode)
        return false;
      if (this.refreshTimeMs != localClientFeatureKnobBundle.refreshTimeMs)
        return false;
      if (this.playerProfileCacheExpirationSecs != localClientFeatureKnobBundle.playerProfileCacheExpirationSecs)
        return false;
      if (this.enableDelayGpsPause != localClientFeatureKnobBundle.enableDelayGpsPause)
        return false;
      if (this.playerProfileEnabled != localClientFeatureKnobBundle.playerProfileEnabled)
        return false;
      if (this.playerAvatarsEnabled != localClientFeatureKnobBundle.playerAvatarsEnabled)
        return false;
      if (this.enableOtherPlayerProfiles != localClientFeatureKnobBundle.enableOtherPlayerProfiles)
        return false;
      if (this.forceSkipTrainingMissions != localClientFeatureKnobBundle.forceSkipTrainingMissions)
        return false;
    }
    while (this.enablePortalClickInComm == localClientFeatureKnobBundle.enablePortalClickInComm);
    return false;
  }

  public final boolean f()
  {
    return this.enableRecycle;
  }

  public final boolean f(b paramb)
  {
    return n.a(paramb, this.enablePortalClickInComm);
  }

  public final int g()
  {
    return this.portalKeyCardRefreshIntervalSecs;
  }

  public final boolean h()
  {
    return this.enableInviteNag;
  }

  public final int hashCode()
  {
    int i = 1231;
    int j;
    int m;
    label31: int i1;
    label50: int i3;
    label70: int i5;
    label90: int i7;
    label110: int i9;
    label130: int i11;
    label150: int i13;
    label170: int i15;
    label190: int i17;
    label272: int i18;
    if (this.enableEmbeddedYouTubePlayback)
    {
      j = i;
      int k = 31 * (j + 31);
      if (!this.enableGAViolationReporting)
        break label341;
      m = i;
      int n = 31 * (m + k);
      if (!this.enableInviteNag)
        break label349;
      i1 = i;
      int i2 = 31 * (i1 + n);
      if (!this.enableMultiPhotoUi)
        break label357;
      i3 = i;
      int i4 = 31 * (i3 + i2);
      if (!this.enableParticleFilter)
        break label365;
      i5 = i;
      int i6 = 31 * (i5 + i4);
      if (!this.allowFusedLocationUpdates)
        break label373;
      i7 = i;
      int i8 = 31 * (i7 + i6);
      if (!this.enableRecycle)
        break label381;
      i9 = i;
      int i10 = 31 * (i9 + i8);
      if (!this.enableScannerSmoothing)
        break label389;
      i11 = i;
      int i12 = 31 * (i11 + i10);
      if (!this.enableReportBadPortalUiV131)
        break label397;
      i13 = i;
      int i14 = 31 * (i13 + i12);
      if (!this.enableCommsAlertsTab)
        break label405;
      i15 = i;
      int i16 = 31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (i15 + i14) + this.enableCommsAlertsTabVersioned) + this.fireMode) + this.inviteNagDelayDays) + this.portalInfoRefreshIntervalSecs) + this.portalKeyCardRefreshIntervalSecs) + com.google.a.h.b.a(this.refreshTimeMs)) + com.google.a.h.b.a(this.playerProfileCacheExpirationSecs));
      if (!this.enableDelayGpsPause)
        break label413;
      i17 = i;
      i18 = 31 * (31 * (31 * (31 * (31 * (i17 + i16) + this.playerProfileEnabled) + this.playerAvatarsEnabled) + this.playerAvatarOnScannerEnabled) + this.enableOtherPlayerProfiles);
      if (!this.forceSkipTrainingMissions)
        break label421;
    }
    while (true)
    {
      return 31 * (i18 + i) + this.enablePortalClickInComm;
      j = 1237;
      break;
      label341: m = 1237;
      break label31;
      label349: i1 = 1237;
      break label50;
      label357: i3 = 1237;
      break label70;
      label365: i5 = 1237;
      break label90;
      label373: i7 = 1237;
      break label110;
      label381: i9 = 1237;
      break label130;
      label389: i11 = 1237;
      break label150;
      label397: i13 = 1237;
      break label170;
      label405: i15 = 1237;
      break label190;
      label413: i17 = 1237;
      break label272;
      label421: i = 1237;
    }
  }

  public final int i()
  {
    return this.inviteNagDelayDays;
  }

  public final long j()
  {
    return this.refreshTimeMs;
  }

  public final long k()
  {
    return this.playerProfileCacheExpirationSecs;
  }

  public final boolean l()
  {
    return this.enableDelayGpsPause;
  }

  public final boolean m()
  {
    return this.forceSkipTrainingMissions;
  }

  public final String toString()
  {
    return "ClientFeatureKnobBundle [ enableEmbeddedYouTubePlayback=" + this.enableEmbeddedYouTubePlayback + ", enableParticleFilter=" + this.enableParticleFilter + ", allowFusedLocationUpdates=" + this.allowFusedLocationUpdates + ", enableGAViolationReporting=" + this.enableGAViolationReporting + ", enableMultiPhotoUi=" + this.enableMultiPhotoUi + ", enableRecycle=" + this.enableRecycle + ", enableScannerSmoothing=" + this.enableScannerSmoothing + ", enableReportBadPortalUi=" + this.enableReportBadPortalUiV131 + ", enableCommsAlertsTab=" + this.enableCommsAlertsTab + ", enableCommsAlertsTabVersioned=" + this.enableCommsAlertsTabVersioned + ", fireMode=" + this.fireMode + ", portalKeyCardRefreshIntervalSecs=" + this.portalKeyCardRefreshIntervalSecs + ", portalInfoRefreshIntervalSecs=" + this.portalInfoRefreshIntervalSecs + ", enableInviteNag=" + this.enableInviteNag + ", inviteNagDelayDays=" + this.inviteNagDelayDays + ", refreshTimeMs=" + this.refreshTimeMs + ", playerProfileCacheExpirationSecs=" + this.playerProfileCacheExpirationSecs + ", enableDelayGpsPause=" + this.enableDelayGpsPause + ", playerProfileEnabled=" + this.playerProfileEnabled + ", playerAvatarsEnabled=" + this.playerAvatarsEnabled + ", playerAvatarOnScannerEnabled=" + this.playerAvatarOnScannerEnabled + ", enableOtherPlayerProfiles=" + this.enableOtherPlayerProfiles + ", forceSkipTrainingMissions=" + this.forceSkipTrainingMissions + ", enablePortalClickInComm=" + this.enablePortalClickInComm + " ]";
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.knobs.ClientFeatureKnobBundle
 * JD-Core Version:    0.6.2
 */
package com.nianticproject.ingress.common.u;

import com.google.a.a.an;
import com.google.a.a.br;
import com.google.a.c.dc;
import com.nianticproject.ingress.common.a;
import com.nianticproject.ingress.gameentity.f;
import com.nianticproject.ingress.shared.GameScore;
import com.nianticproject.ingress.shared.h;
import com.nianticproject.ingress.shared.invites.InviteInfo;
import com.nianticproject.ingress.shared.playerprofile.AvatarChoiceParams;
import com.nianticproject.ingress.shared.playerprofile.AvatarOptions;
import com.nianticproject.ingress.shared.playerprofile.PaginatedDisplayedAchievementList;
import com.nianticproject.ingress.shared.playerprofile.PlayerProfile;
import com.nianticproject.ingress.shared.portal.PortalImagePage;
import com.nianticproject.ingress.shared.portal.PortalImageVoteParams;
import com.nianticproject.ingress.shared.rpc.InviteParams;
import com.nianticproject.ingress.shared.rpc.NotificationSettings;
import com.nianticproject.ingress.shared.rpc.NotificationSettingsParams;
import com.nianticproject.ingress.shared.rpc.PaginatedAchievementsParams;
import com.nianticproject.ingress.shared.rpc.PaginatedCellPlextParams;
import com.nianticproject.ingress.shared.rpc.PortalCurationParams;
import com.nianticproject.ingress.shared.rpc.PortalImagesParams;
import com.nianticproject.ingress.shared.rpc.PortalPhotoByUrlParams;
import com.nianticproject.ingress.shared.rpc.PortalPhotoParams;
import com.nianticproject.ingress.shared.rpc.ProfileSettings;
import com.nianticproject.ingress.shared.rpc.SayParams;
import com.nianticproject.ingress.shared.rpc.ab;
import com.nianticproject.ingress.shared.rpc.ac;
import com.nianticproject.ingress.shared.rpc.ad;
import com.nianticproject.ingress.shared.rpc.b;
import com.nianticproject.ingress.shared.rpc.p;
import com.nianticproject.ingress.shared.rpc.r;
import com.nianticproject.ingress.shared.rpc.w;
import java.util.Collections;
import java.util.List;

public final class aj
{
  public static t<Void, r> a(NotificationSettings paramNotificationSettings)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("PlayerRpcRequests.setNotificationSettings");
      NotificationSettingsParams localNotificationSettingsParams = new NotificationSettingsParams(paramNotificationSettings);
      t localt = new t(aa.a(Void.class, r.class), "gameplay", "setNotificationSettings", localNotificationSettingsParams, 0L);
      return localt;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static ab<GameScore, Void> a()
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("PlayerRpcRequests.getGameScore");
      ad localad = new ad(aa.a(GameScore.class, Void.class), "playerUndecorated", "getGameScore", Collections.EMPTY_LIST);
      return localad;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static ab<Void, p> a(int paramInt)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("PlayerRpcRequests.levelUp");
      dc localdc = dc.a(Integer.valueOf(paramInt));
      ad localad = new ad(aa.a(Void.class, p.class), "player", "levelUp", localdc);
      return localad;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static ab<Void, Void> a(com.nianticproject.ingress.shared.ai paramai)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("PlayerRpcRequests.setTeam");
      be localbe = new be("devEmptyBasket", "setTeam", dc.a(paramai.name()));
      return localbe;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static ab<Void, w> a(ProfileSettings paramProfileSettings)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("PlayerRpcRequests.setProfileSettings");
      ad localad = new ad(aa.a(Void.class, w.class), "playerUndecorated", "setProfileSettings", dc.a(paramProfileSettings));
      return localad;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static ab<List<f>, Void> a(Iterable<Long> paramIterable, long paramLong, int paramInt)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("PlayerRpcRequests.getPaginatedPlexts");
      if (paramInt == a.b);
      for (boolean bool = true; ; bool = false)
      {
        PaginatedCellPlextParams localPaginatedCellPlextParams = new PaginatedCellPlextParams(bool, paramIterable, paramLong, paramInt);
        ac localac = new ac(aa.a(new al(), Void.class), "playerUndecorated", "getPaginatedPlexts", localPaginatedCellPlextParams);
        return localac;
      }
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static ab<f, com.nianticproject.ingress.shared.o> a(String paramString)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("PlayerRpcRequests.storyItemOpened");
      dc localdc = dc.a(paramString);
      ad localad = new ad(aa.a(f.class, com.nianticproject.ingress.shared.o.class), "player", "storyItemOpened", localdc);
      return localad;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static ab<PaginatedDisplayedAchievementList, com.nianticproject.ingress.shared.rpc.q> a(String paramString, int paramInt)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("PlayerRpcRequests.getPlayerProfile");
      PaginatedAchievementsParams localPaginatedAchievementsParams = new PaginatedAchievementsParams(paramString, paramInt);
      ad localad = new ad(aa.a(PaginatedDisplayedAchievementList.class, com.nianticproject.ingress.shared.rpc.q.class), "playerUndecorated", "getPaginatedDisplayedAchievements", dc.a(localPaginatedAchievementsParams));
      return localad;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static ab<PortalImagePage, com.nianticproject.ingress.shared.rpc.u> a(String paramString1, int paramInt, String paramString2)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("PlayerRpcRequests.uploadPortalDetailsForCuration");
      PortalImagesParams localPortalImagesParams = new PortalImagesParams(paramString1, paramInt, paramString2);
      ad localad = new ad(aa.a(PortalImagePage.class, com.nianticproject.ingress.shared.rpc.u.class), "geoInfo", "getPortalImages", dc.a(localPortalImagesParams));
      return localad;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static ab<String, com.nianticproject.ingress.shared.v> a(String paramString, com.google.a.d.u paramu, boolean paramBoolean)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("PlayerRpcRequests.say");
      SayParams localSayParams = new SayParams(paramString, paramu, paramBoolean);
      ac localac = new ac(aa.a(String.class, com.nianticproject.ingress.shared.v.class), "player", "say", localSayParams);
      return localac;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static ab<InviteInfo, com.nianticproject.ingress.shared.rpc.o> a(String paramString1, String paramString2)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("PlayerRpcRequests.inviteViaEmail");
      if (!br.b(paramString1));
      for (boolean bool = true; ; bool = false)
      {
        an.a(bool);
        InviteParams localInviteParams = new InviteParams(paramString1, paramString2);
        ac localac = new ac(aa.a(InviteInfo.class, com.nianticproject.ingress.shared.rpc.o.class), "playerUndecorated", "inviteViaEmail", localInviteParams);
        return localac;
      }
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static ab<Void, com.nianticproject.ingress.shared.rpc.q> a(String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("PlayerRpcRequests.chooseAvatar");
      AvatarChoiceParams localAvatarChoiceParams = new AvatarChoiceParams(paramString1, paramString2, paramInt1, paramInt2);
      ad localad = new ad(aa.a(Void.class, com.nianticproject.ingress.shared.rpc.q.class), "playerUndecorated", "chooseAvatar", dc.a(localAvatarChoiceParams));
      return localad;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static ab<Void, com.nianticproject.ingress.shared.rpc.v> a(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("PlayerRpcRequests.uploadPortalPhoto");
      PortalPhotoParams localPortalPhotoParams = new PortalPhotoParams(paramString1, paramString2, paramString3);
      ad localad = new ad(aa.a(Void.class, com.nianticproject.ingress.shared.rpc.v.class), "playerUndecorated", "uploadPortalPhoto", dc.a(localPortalPhotoParams));
      return localad;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static ab<Void, com.nianticproject.ingress.shared.rpc.t> a(String paramString1, String paramString2, String paramString3, com.google.a.d.u paramu, String paramString4, b paramb, String paramString5)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("PlayerRpcRequests.uploadPortalDetailsForCuration");
      PortalCurationParams localPortalCurationParams = new PortalCurationParams(paramString1, paramString2, paramString3, paramu, paramb, paramString5, paramString4);
      ad localad = new ad(aa.a(Void.class, com.nianticproject.ingress.shared.rpc.t.class), "playerUndecorated", "setPortalDetailsForCuration", dc.a(localPortalCurationParams));
      return localad;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static ab<Void, com.nianticproject.ingress.shared.rpc.ai> a(String paramString, boolean paramBoolean)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("PlayerRpcRequests.votePortalImage");
      PortalImageVoteParams localPortalImageVoteParams = new PortalImageVoteParams(paramString, paramBoolean);
      ad localad = new ad(aa.a(Void.class, com.nianticproject.ingress.shared.rpc.ai.class), "geoInfo", "votePortalImage", dc.a(localPortalImageVoteParams));
      return localad;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static ab<List<String>, Void> a(List<String> paramList)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("PlayerRpcRequests.getNickNamesFromPlayerIds");
      ad localad = new ad(aa.a(new ak(), Void.class), "playerUndecorated", "getNickNamesFromPlayerIds", dc.a(paramList));
      return localad;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static ab<InviteInfo, Void> b()
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("PlayerRpcRequests.getInviteInfo");
      ad localad = new ad(aa.a(InviteInfo.class, Void.class), "playerUndecorated", "getInviteInfo", Collections.EMPTY_LIST);
      return localad;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static ab<Void, h> b(com.nianticproject.ingress.shared.ai paramai)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("PlayerRpcRequests.chooseFaction");
      ad localad = new ad(aa.a(Void.class, h.class), "playerUndecorated", "chooseFaction", dc.a(paramai));
      return localad;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static ab<Void, com.nianticproject.ingress.shared.q> b(String paramString)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("PlayerRpcRequests.validateNickname");
      ad localad = new ad(aa.a(Void.class, com.nianticproject.ingress.shared.q.class), "playerUndecorated", "validateNickname", dc.a(paramString));
      return localad;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static ab<Void, com.nianticproject.ingress.shared.rpc.v> b(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("PlayerRpcRequests.uploadPortalPhotoByUrl");
      PortalPhotoByUrlParams localPortalPhotoByUrlParams = new PortalPhotoByUrlParams(paramString1, paramString2, paramString3);
      ad localad = new ad(aa.a(Void.class, com.nianticproject.ingress.shared.rpc.v.class), "playerUndecorated", "uploadPortalPhotoByUrl", dc.a(localPortalPhotoByUrlParams));
      return localad;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static ab<String, Void> c()
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("PlayerRpcRequests.getUploadUrl");
      ad localad = new ad(aa.a(String.class, Void.class), "playerUndecorated", "getUploadUrl", Collections.EMPTY_LIST);
      return localad;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static ab<Void, com.nianticproject.ingress.shared.q> c(String paramString)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("PlayerRpcRequests.persistNickname");
      ad localad = new ad(aa.a(Void.class, com.nianticproject.ingress.shared.q.class), "playerUndecorated", "persistNickname", dc.a(paramString));
      return localad;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static ab<AvatarOptions, com.nianticproject.ingress.shared.rpc.q> d()
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("PlayerRpcRequests.getAvatarOptions");
      ad localad = new ad(aa.a(AvatarOptions.class, com.nianticproject.ingress.shared.rpc.q.class), "playerUndecorated", "getAvatarOptions", Collections.EMPTY_LIST);
      return localad;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }

  public static ab<PlayerProfile, com.nianticproject.ingress.shared.rpc.q> d(String paramString)
  {
    try
    {
      com.nianticproject.ingress.shared.aj.a("PlayerRpcRequests.getPlayerProfile");
      ad localad = new ad(aa.a(PlayerProfile.class, com.nianticproject.ingress.shared.rpc.q.class), "playerUndecorated", "getPlayerProfile", dc.a(paramString));
      return localad;
    }
    finally
    {
      com.nianticproject.ingress.shared.aj.b();
    }
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.common.u.aj
 * JD-Core Version:    0.6.2
 */
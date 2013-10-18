package com.nianticproject.ingress.gameentity;

import com.google.a.a.aa;
import com.google.a.a.an;
import com.google.a.c.dh;
import com.google.a.c.di;
import com.nianticproject.ingress.gameentity.components.DefaultActionRange;
import com.nianticproject.ingress.gameentity.components.ImmutableCapturedRegion;
import com.nianticproject.ingress.gameentity.components.ImmutableEdge;
import com.nianticproject.ingress.gameentity.components.ImmutableImageByUrl;
import com.nianticproject.ingress.gameentity.components.ImmutableLocationE6;
import com.nianticproject.ingress.gameentity.components.ImmutablePortalCoupler;
import com.nianticproject.ingress.gameentity.components.PortalTurret;
import com.nianticproject.ingress.gameentity.components.SimpleAccessLevel;
import com.nianticproject.ingress.gameentity.components.SimpleAvatar;
import com.nianticproject.ingress.gameentity.components.SimpleCaptured;
import com.nianticproject.ingress.gameentity.components.SimpleCreator;
import com.nianticproject.ingress.gameentity.components.SimpleDamageable;
import com.nianticproject.ingress.gameentity.components.SimpleDisplayName;
import com.nianticproject.ingress.gameentity.components.SimpleEmpWeapon;
import com.nianticproject.ingress.gameentity.components.SimpleEnergyGlob;
import com.nianticproject.ingress.gameentity.components.SimpleEntityScore;
import com.nianticproject.ingress.gameentity.components.SimpleExperiencePoints;
import com.nianticproject.ingress.gameentity.components.SimpleFactionChoiceHint;
import com.nianticproject.ingress.gameentity.components.SimpleFlipCard;
import com.nianticproject.ingress.gameentity.components.SimpleInInventory;
import com.nianticproject.ingress.gameentity.components.SimpleModResource;
import com.nianticproject.ingress.gameentity.components.SimplePlayerPersonal;
import com.nianticproject.ingress.gameentity.components.SimplePowerCube;
import com.nianticproject.ingress.gameentity.components.SimpleResource;
import com.nianticproject.ingress.gameentity.components.SimpleResourceWithLevels;
import com.nianticproject.ingress.gameentity.components.SimpleStoryItem;
import com.nianticproject.ingress.gameentity.components.SimpleTeam;
import com.nianticproject.ingress.gameentity.components.UltraStrikeWeapon;
import com.nianticproject.ingress.gameentity.components.portal.SimpleDiscoverer;
import com.nianticproject.ingress.gameentity.components.portal.SimplePhotoStreamInfo;
import com.nianticproject.ingress.gameentity.components.portal.SimplePortalV2;
import com.nianticproject.ingress.gameentity.components.portal.SimpleResonatorArray;
import com.nianticproject.ingress.message.component.SimpleClientPlext;
import java.util.EnumSet;
import java.util.Iterator;

public enum JsonConstants$SerializationTag
  implements c
{
  private static final dh<Class<? extends a>, SerializationTag> BY_COMPONENT = localdi.a();
  private static final dh<String, SerializationTag> BY_TAG = createByTagMap();
  public static final aa<Class<? extends a>, SerializationTag> FOR_COMPONENT_CLASS = new h();
  private final Class<? extends a> componentClass;
  private final String tag;

  static
  {
    PHOTO_STREAM_INFO = new SerializationTag("PHOTO_STREAM_INFO", 23, "photoStreamInfo", SimplePhotoStreamInfo.class);
    PORTALV2 = new SerializationTag("PORTALV2", 24, "portalV2", SimplePortalV2.class);
    PORTAL_COUPLER = new SerializationTag("PORTAL_COUPLER", 25, "portalCoupler", ImmutablePortalCoupler.class);
    POWER_CUBE = new SerializationTag("POWER_CUBE", 26, "powerCube", SimplePowerCube.class);
    RESONATOR_ARRAY = new SerializationTag("RESONATOR_ARRAY", 27, "resonatorArray", SimpleResonatorArray.class);
    RESOURCE = new SerializationTag("RESOURCE", 28, "resource", SimpleResource.class);
    RESOURCE_WITH_LEVELS = new SerializationTag("RESOURCE_WITH_LEVELS", 29, "resourceWithLevels", SimpleResourceWithLevels.class);
    STORY_ITEM = new SerializationTag("STORY_ITEM", 30, "storyItem", SimpleStoryItem.class);
    TURRET = new SerializationTag("TURRET", 31, "turret", PortalTurret.class);
    ULTRA_STRIKE = new SerializationTag("ULTRA_STRIKE", 32, "Ultra Strike", UltraStrikeWeapon.class);
    SerializationTag[] arrayOfSerializationTag = new SerializationTag[33];
    arrayOfSerializationTag[0] = ACCESS_LEVEL;
    arrayOfSerializationTag[1] = AVATAR;
    arrayOfSerializationTag[2] = CAPTURED;
    arrayOfSerializationTag[3] = CAPTURED_REGION;
    arrayOfSerializationTag[4] = CONTROLLING_TEAM;
    arrayOfSerializationTag[5] = CREATOR;
    arrayOfSerializationTag[6] = DAMAGEABLE;
    arrayOfSerializationTag[7] = DEFAULT_ACTION_RANGE;
    arrayOfSerializationTag[8] = DISCOVERER;
    arrayOfSerializationTag[9] = DISPLAY_NAME;
    arrayOfSerializationTag[10] = EDGE;
    arrayOfSerializationTag[11] = EMP_WEAPON;
    arrayOfSerializationTag[12] = ENERGY_GLOB;
    arrayOfSerializationTag[13] = ENTITY_SCORE;
    arrayOfSerializationTag[14] = EXPERINCE_POINTS;
    arrayOfSerializationTag[15] = FACTION_CHOICE_HINT;
    arrayOfSerializationTag[16] = FLIP_CARD;
    arrayOfSerializationTag[17] = IMAGE_BY_URL;
    arrayOfSerializationTag[18] = IN_INVENTORY;
    arrayOfSerializationTag[19] = LOCATION_E6;
    arrayOfSerializationTag[20] = MOD_RESOURCE;
    arrayOfSerializationTag[21] = PLAYER_PERSONAL;
    arrayOfSerializationTag[22] = PLEXT;
    arrayOfSerializationTag[23] = PHOTO_STREAM_INFO;
    arrayOfSerializationTag[24] = PORTALV2;
    arrayOfSerializationTag[25] = PORTAL_COUPLER;
    arrayOfSerializationTag[26] = POWER_CUBE;
    arrayOfSerializationTag[27] = RESONATOR_ARRAY;
    arrayOfSerializationTag[28] = RESOURCE;
    arrayOfSerializationTag[29] = RESOURCE_WITH_LEVELS;
    arrayOfSerializationTag[30] = STORY_ITEM;
    arrayOfSerializationTag[31] = TURRET;
    arrayOfSerializationTag[32] = ULTRA_STRIKE;
    $VALUES = arrayOfSerializationTag;
    di localdi = dh.j();
    Iterator localIterator = EnumSet.allOf(SerializationTag.class).iterator();
    while (localIterator.hasNext())
    {
      Enum localEnum = (Enum)localIterator.next();
      localdi.a(((c)localEnum).getComponentClass(), localEnum);
    }
  }

  private JsonConstants$SerializationTag(String paramString, Class<? extends a> paramClass)
  {
    if (!paramClass.isInterface());
    for (boolean bool = true; ; bool = false)
    {
      an.a(bool, "Expected the tag to map to a concrete class, but got " + paramClass + ". If you know you want an interface, remove this check.");
      this.tag = paramString;
      this.componentClass = paramClass;
      return;
    }
  }

  private static dh<String, SerializationTag> createByTagMap()
  {
    di localdi = dh.j();
    for (SerializationTag localSerializationTag : values())
      localdi.a(localSerializationTag.getTag(), localSerializationTag);
    return localdi.a();
  }

  public static SerializationTag forTag(String paramString)
  {
    return (SerializationTag)BY_TAG.get(paramString);
  }

  public final Class<? extends a> getComponentClass()
  {
    return this.componentClass;
  }

  public final String getTag()
  {
    return this.tag;
  }
}

/* Location:           classes_dex2jar.jar
 * Qualified Name:     com.nianticproject.ingress.gameentity.JsonConstants.SerializationTag
 * JD-Core Version:    0.6.2
 */
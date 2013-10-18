.class public final LJ;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static a:LS;

.field public static a:LU;

.field public static a:Landroid/app/Application;

.field public static a:Landroid/os/PowerManager$WakeLock;

.field public static a:Landroid/util/DisplayMetrics;

.field public static a:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

.field public static a:Lcom/nianticproject/ingress/NemesisActivity;

.field public static a:Lcom/nianticproject/ingress/common/b/p;

.field public static a:Lcom/nianticproject/ingress/common/g/o;

.field public static a:Lcom/nianticproject/ingress/common/g/p;

.field public static a:Lcom/nianticproject/ingress/common/inventory/i;

.field public static a:Lcom/nianticproject/ingress/common/ui/elements/PortalInfoDialog;

.field public static a:Z

.field public static b:I

.field public static b:LU;

.field public static b:Z

.field public static c:Z

.field public static d:Z

.field public static e:Z

.field public static f:Z

.field public static g:Z

.field public static h:Z

.field public static i:Z

.field public static j:Z

.field public static k:Z

.field public static l:Z

.field public static m:Z

.field public static n:Z

.field public static o:Z

.field public static p:Z

.field public static q:Z

.field public static r:Z

.field public static s:Z

.field public static t:Z

.field public static u:Z

.field public static v:Z

.field public static w:Z

.field public static x:Z

.field public static y:Z

.field public static z:Z


# direct methods
.method public static a(Lcom/nianticproject/ingress/gameentity/components/Portal;)I
    .locals 6

    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/components/Portal;->getEntityGuid()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    sget-object v1, LJ;->a:Lcom/nianticproject/ingress/common/g/o;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/g/o;->e()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Resource;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/components/Resource;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/components/Resource;->getResourceType()Lcom/nianticproject/ingress/shared/af;

    move-result-object v1

    sget-object v5, Lcom/nianticproject/ingress/shared/af;->i:Lcom/nianticproject/ingress/shared/af;

    if-ne v1, v5, :cond_0

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;->getPortalGuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public static a(Lcom/nianticproject/ingress/common/ui/widget/ag;)Ljava/lang/Class;
    .locals 2

    sget-object v0, LT;->a:[I

    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/ui/widget/ag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_0
    const-class v0, LN;

    :goto_0
    return-object v0

    :pswitch_1
    const-class v0, Lcom/nianticproject/ingress/common/inventory/a;

    goto :goto_0

    :pswitch_2
    const-class v0, Lcom/nianticproject/ingress/common/playerprofile/ak;

    goto :goto_0

    :pswitch_3
    const-class v0, Lcom/nianticproject/ingress/common/missions/cc;

    goto :goto_0

    :pswitch_4
    const-class v0, Lcom/nianticproject/ingress/common/l/a;

    goto :goto_0

    :pswitch_5
    const-class v0, Lcom/nianticproject/ingress/common/m/f;

    goto :goto_0

    :pswitch_6
    const-class v0, Lcom/nianticproject/ingress/common/r/a;

    goto :goto_0

    :pswitch_7
    const-class v0, Lcom/nianticproject/ingress/common/v/j;

    goto :goto_0

    :pswitch_8
    const-class v0, Lb;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, LJ;->a:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, LJ;->a:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

## Change versionName J.smali
    const-string v1, "-isnuryusuf-1.0.2.13"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a()V
    .locals 2

    sget-object v0, LJ;->a:Lcom/nianticproject/ingress/NemesisActivity;

    new-instance v1, LK;

    invoke-direct {v1}, LK;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/NemesisActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a()[Lcom/nianticproject/ingress/common/ui/widget/ag;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, LJ;->a:LS;

    sget-object v2, LS;->b:LS;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/nianticproject/ingress/common/ui/widget/ag;->MOD_ITEMS:Lcom/nianticproject/ingress/common/ui/widget/ag;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-boolean v1, LJ;->b:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/nianticproject/ingress/common/ui/widget/ag;->a:Lcom/nianticproject/ingress/common/ui/widget/ag;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-boolean v1, LJ;->c:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/nianticproject/ingress/common/ui/widget/ag;->b:Lcom/nianticproject/ingress/common/ui/widget/ag;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-boolean v1, LJ;->e:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/nianticproject/ingress/common/ui/widget/ag;->c:Lcom/nianticproject/ingress/common/ui/widget/ag;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-boolean v1, LJ;->d:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/nianticproject/ingress/common/ui/widget/ag;->d:Lcom/nianticproject/ingress/common/ui/widget/ag;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-boolean v1, LJ;->f:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/nianticproject/ingress/common/ui/widget/ag;->e:Lcom/nianticproject/ingress/common/ui/widget/ag;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-boolean v1, LJ;->g:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/nianticproject/ingress/common/ui/widget/ag;->f:Lcom/nianticproject/ingress/common/ui/widget/ag;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    sget-boolean v1, LJ;->h:Z

    if-eqz v1, :cond_7

    sget-object v1, Lcom/nianticproject/ingress/common/ui/widget/ag;->g:Lcom/nianticproject/ingress/common/ui/widget/ag;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    sget-object v1, LJ;->a:LS;

    sget-object v2, LS;->a:LS;

    if-ne v1, v2, :cond_8

    sget-object v1, Lcom/nianticproject/ingress/common/ui/widget/ag;->MOD_ITEMS:Lcom/nianticproject/ingress/common/ui/widget/ag;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    sget-object v1, Lcom/nianticproject/ingress/common/ui/widget/ag;->MOD_ABOUT:Lcom/nianticproject/ingress/common/ui/widget/ag;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/nianticproject/ingress/common/ui/widget/ag;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nianticproject/ingress/common/ui/widget/ag;

    return-object v0
.end method

.method public static b()V
    .locals 2

    sget-object v0, LJ;->a:Lcom/nianticproject/ingress/NemesisActivity;

    new-instance v1, LL;

    invoke-direct {v1}, LL;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/NemesisActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c()V
    .locals 3

    sget-object v0, LJ;->b:LU;

    sput-object v0, LJ;->a:LU;

    sget-object v1, LU;->a:LU;

    if-eq v0, v1, :cond_0

    sget-object v0, LJ;->b:LU;

    sput-object v0, LJ;->a:LU;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, LM;->a:[I

    sget-object v2, LJ;->a:Lcom/nianticproject/ingress/common/b/p;

    iget-object v2, v2, Lcom/nianticproject/ingress/common/b/p;->a:Lcom/nianticproject/ingress/common/b/q;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/b/q;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    const-string v1, "data"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, LU;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU;

    sput-object v0, LJ;->a:LU;

    if-eqz v0, :cond_2

    goto :goto_0

    :pswitch_1
    const-string v1, "data-xxhdpi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :pswitch_2
    const-string v1, "data-xhdpi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    sget-object v1, LJ;->a:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v2, 0x140

    if-ge v1, v2, :cond_3

    const-string v1, "data-qvga"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "data-ingressopt-qvga"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/16 v2, 0x1e0

    if-ge v1, v2, :cond_1

    const-string v1, "data-hvga"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "data-ingressopt-hvga"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    sget-object v0, LU;->a:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU;

    sput-object v0, LJ;->a:LU;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static d()V
    .locals 3

    sget-object v0, LJ;->a:Landroid/app/Application;

    const-string v1, "mod"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "swapTouchMenuButtons"

    sget-boolean v2, LJ;->a:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "itemsTab"

    sget-object v2, LJ;->a:LS;

    invoke-virtual {v2}, LS;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "showOrigItemsTab"

    sget-boolean v2, LJ;->b:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "showAgentTab"

    sget-boolean v2, LJ;->c:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "showIntelTab"

    sget-boolean v2, LJ;->d:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "showMissionTab"

    sget-boolean v2, LJ;->e:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "showRecruitTab"

    sget-boolean v2, LJ;->f:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "showPasscodeTab"

    sget-boolean v2, LJ;->g:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "showDeviceTab"

    sget-boolean v2, LJ;->h:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "skipIntro"

    sget-boolean v2, LJ;->i:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "hackAnimEnabled"

    sget-boolean v2, LJ;->k:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "scannerZoomInAnimEnabled"

    sget-boolean v2, LJ;->j:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "rotateInventoryItemsEnabled"

    sget-boolean v2, LJ;->l:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "recycleAnimationsEnabled"

    sget-boolean v2, LJ;->m:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "xmFlowEnabled"

    sget-boolean v2, LJ;->n:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "shieldAnimEnabled"

    sget-boolean v2, LJ;->o:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "fullscreen"

    sget-boolean v2, LJ;->p:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "showPortalVectors"

    sget-boolean v2, LJ;->q:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "portalParticlesEnabled"

    sget-boolean v2, LJ;->r:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "xmGlobsEnabled"

    sget-boolean v2, LJ;->s:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "scannerObjectsEnabled"

    sget-boolean v2, LJ;->t:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "simplifyInventoryItems"

    sget-boolean v2, LJ;->u:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "gpsLockTime"

    sget v2, LJ;->b:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "chatTimeFormat"

    sget v2, LJ;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "vibration"

    sget-boolean v2, LJ;->v:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "keepScreenOn"

    sget-boolean v2, LJ;->w:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "changePortalInfoDialog"

    sget-boolean v2, LJ;->x:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "enablePowerCubesRecycle"

    sget-boolean v2, LJ;->y:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "isPrivacyOn"

    sget-boolean v2, LJ;->z:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "uiVariant"

    sget-object v2, LJ;->b:LU;

    iget-object v2, v2, LU;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.class public final Lcom/nianticproject/ingress/common/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:J

.field private static b:Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

.field private static c:Lcom/nianticproject/ingress/knobs/InventoryKnobs;

.field private static d:Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;

.field private static e:Lcom/nianticproject/ingress/knobs/PortalKnobBundle;

.field private static f:Lcom/nianticproject/ingress/knobs/ScannerKnobs;

.field private static g:Lcom/nianticproject/ingress/knobs/ClientWeaponKnobBundle;

.field private static h:Lcom/nianticproject/ingress/knobs/XmCostKnobs;

.field private static i:Lcom/nianticproject/ingress/knobs/RecycleKnobs;

.field private static j:Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;

.field private static k:Lcom/nianticproject/ingress/knobs/NearbyPortalKnobs;

.field private static l:Lcom/nianticproject/ingress/knobs/PlayerAnnounceSharedKnobs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/nianticproject/ingress/common/q;->a:J

    .line 34
    new-instance v0, Lcom/nianticproject/ingress/knobs/c;

    invoke-direct {v0}, Lcom/nianticproject/ingress/knobs/c;-><init>()V

    invoke-static {}, Lcom/nianticproject/ingress/knobs/c;->a()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/q;->b:Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    .line 36
    new-instance v0, Lcom/nianticproject/ingress/knobs/f;

    invoke-direct {v0}, Lcom/nianticproject/ingress/knobs/f;-><init>()V

    sget-object v0, Lcom/nianticproject/ingress/knobs/InventoryKnobs;->a:Lcom/nianticproject/ingress/knobs/InventoryKnobs;

    sput-object v0, Lcom/nianticproject/ingress/common/q;->c:Lcom/nianticproject/ingress/knobs/InventoryKnobs;

    .line 37
    new-instance v0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;-><init>(B)V

    sput-object v0, Lcom/nianticproject/ingress/common/q;->d:Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;

    .line 38
    new-instance v0, Lcom/nianticproject/ingress/knobs/j;

    invoke-direct {v0}, Lcom/nianticproject/ingress/knobs/j;-><init>()V

    new-instance v0, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;

    invoke-direct {v0}, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/q;->e:Lcom/nianticproject/ingress/knobs/PortalKnobBundle;

    .line 39
    new-instance v0, Lcom/nianticproject/ingress/knobs/m;

    invoke-direct {v0}, Lcom/nianticproject/ingress/knobs/m;-><init>()V

    invoke-static {}, Lcom/nianticproject/ingress/knobs/m;->a()Lcom/nianticproject/ingress/knobs/ScannerKnobs;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/q;->f:Lcom/nianticproject/ingress/knobs/ScannerKnobs;

    .line 40
    new-instance v0, Lcom/nianticproject/ingress/knobs/d;

    invoke-direct {v0}, Lcom/nianticproject/ingress/knobs/d;-><init>()V

    sget-object v0, Lcom/nianticproject/ingress/knobs/ClientWeaponKnobBundle;->a:Lcom/nianticproject/ingress/knobs/ClientWeaponKnobBundle;

    sput-object v0, Lcom/nianticproject/ingress/common/q;->g:Lcom/nianticproject/ingress/knobs/ClientWeaponKnobBundle;

    .line 42
    new-instance v0, Lcom/nianticproject/ingress/knobs/o;

    invoke-direct {v0}, Lcom/nianticproject/ingress/knobs/o;-><init>()V

    sget-object v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;->b:Lcom/nianticproject/ingress/knobs/XmCostKnobs;

    sput-object v0, Lcom/nianticproject/ingress/common/q;->h:Lcom/nianticproject/ingress/knobs/XmCostKnobs;

    .line 43
    new-instance v0, Lcom/nianticproject/ingress/knobs/l;

    invoke-direct {v0}, Lcom/nianticproject/ingress/knobs/l;-><init>()V

    sget-object v0, Lcom/nianticproject/ingress/knobs/RecycleKnobs;->c:Lcom/nianticproject/ingress/knobs/RecycleKnobs;

    sput-object v0, Lcom/nianticproject/ingress/common/q;->i:Lcom/nianticproject/ingress/knobs/RecycleKnobs;

    .line 44
    new-instance v0, Lcom/nianticproject/ingress/knobs/k;

    invoke-direct {v0}, Lcom/nianticproject/ingress/knobs/k;-><init>()V

    sget-object v0, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;->g:Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;

    sput-object v0, Lcom/nianticproject/ingress/common/q;->j:Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;

    .line 46
    new-instance v0, Lcom/nianticproject/ingress/knobs/h;

    invoke-direct {v0}, Lcom/nianticproject/ingress/knobs/h;-><init>()V

    new-instance v0, Lcom/nianticproject/ingress/knobs/NearbyPortalKnobs;

    invoke-direct {v0}, Lcom/nianticproject/ingress/knobs/NearbyPortalKnobs;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/q;->k:Lcom/nianticproject/ingress/knobs/NearbyPortalKnobs;

    .line 48
    new-instance v0, Lcom/nianticproject/ingress/knobs/i;

    invoke-direct {v0}, Lcom/nianticproject/ingress/knobs/i;-><init>()V

    new-instance v0, Lcom/nianticproject/ingress/knobs/PlayerAnnounceSharedKnobs;

    invoke-direct {v0}, Lcom/nianticproject/ingress/knobs/PlayerAnnounceSharedKnobs;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/common/q;->l:Lcom/nianticproject/ingress/knobs/PlayerAnnounceSharedKnobs;

    return-void
.end method

.method public static a()J
    .locals 2

    .prologue
    .line 52
    sget-wide v0, Lcom/nianticproject/ingress/common/q;->a:J

    return-wide v0
.end method

.method public static declared-synchronized a(Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;)V
    .locals 6
    .parameter

    .prologue
    .line 103
    const-class v1, Lcom/nianticproject/ingress/common/q;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    sget-wide v2, Lcom/nianticproject/ingress/common/q;->a:J

    invoke-virtual {p0}, Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;->b()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 107
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;->b()J

    move-result-wide v2

    sput-wide v2, Lcom/nianticproject/ingress/common/q;->a:J

    .line 108
    invoke-virtual {p0}, Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;->a()Lcom/google/a/c/dh;

    move-result-object v2

    const-string/jumbo v0, "ClientFeatureKnobs"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/knobs/g;

    if-eqz v0, :cond_2

    check-cast v0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    sput-object v0, Lcom/nianticproject/ingress/common/q;->b:Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    :cond_2
    const-string/jumbo v0, "InventoryKnobs"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/knobs/g;

    if-eqz v0, :cond_3

    check-cast v0, Lcom/nianticproject/ingress/knobs/InventoryKnobs;

    sput-object v0, Lcom/nianticproject/ingress/common/q;->c:Lcom/nianticproject/ingress/knobs/InventoryKnobs;

    :cond_3
    const-string/jumbo v0, "PortalDiscoveryKnobBundle"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/knobs/g;

    if-eqz v0, :cond_4

    check-cast v0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;

    sput-object v0, Lcom/nianticproject/ingress/common/q;->d:Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;

    :cond_4
    const-string/jumbo v0, "PortalKnobs"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/knobs/g;

    if-eqz v0, :cond_5

    check-cast v0, Lcom/nianticproject/ingress/knobs/PortalKnobBundle;

    sput-object v0, Lcom/nianticproject/ingress/common/q;->e:Lcom/nianticproject/ingress/knobs/PortalKnobBundle;

    :cond_5
    const-string/jumbo v0, "ScannerKnobs"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/knobs/g;

    if-eqz v0, :cond_6

    check-cast v0, Lcom/nianticproject/ingress/knobs/ScannerKnobs;

    sput-object v0, Lcom/nianticproject/ingress/common/q;->f:Lcom/nianticproject/ingress/knobs/ScannerKnobs;

    :cond_6
    const-string/jumbo v0, "XmCostKnobs"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/knobs/g;

    if-eqz v0, :cond_7

    check-cast v0, Lcom/nianticproject/ingress/knobs/XmCostKnobs;

    sput-object v0, Lcom/nianticproject/ingress/common/q;->h:Lcom/nianticproject/ingress/knobs/XmCostKnobs;

    :cond_7
    const-string/jumbo v0, "recycleKnobs"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/knobs/g;

    if-eqz v0, :cond_8

    check-cast v0, Lcom/nianticproject/ingress/knobs/RecycleKnobs;

    sput-object v0, Lcom/nianticproject/ingress/common/q;->i:Lcom/nianticproject/ingress/knobs/RecycleKnobs;

    :cond_8
    const-string/jumbo v0, "PortalModSharedKnobs"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/knobs/g;

    if-eqz v0, :cond_9

    check-cast v0, Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;

    sput-object v0, Lcom/nianticproject/ingress/common/q;->j:Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;

    :cond_9
    const-string/jumbo v0, "NearbyPortalKnobs"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/knobs/g;

    if-eqz v0, :cond_a

    check-cast v0, Lcom/nianticproject/ingress/knobs/NearbyPortalKnobs;

    sput-object v0, Lcom/nianticproject/ingress/common/q;->k:Lcom/nianticproject/ingress/knobs/NearbyPortalKnobs;

    :cond_a
    const-string/jumbo v0, "PlayerAnnounceSharedKnobs"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/knobs/g;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/nianticproject/ingress/knobs/PlayerAnnounceSharedKnobs;

    sput-object v0, Lcom/nianticproject/ingress/common/q;->l:Lcom/nianticproject/ingress/knobs/PlayerAnnounceSharedKnobs;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Lcom/nianticproject/ingress/knobs/PortalKnobBundle;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/nianticproject/ingress/common/q;->e:Lcom/nianticproject/ingress/knobs/PortalKnobBundle;

    return-object v0
.end method

.method public static c()Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/nianticproject/ingress/common/q;->d:Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;

    return-object v0
.end method

.method public static d()Lcom/nianticproject/ingress/knobs/InventoryKnobs;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/nianticproject/ingress/common/q;->c:Lcom/nianticproject/ingress/knobs/InventoryKnobs;

    return-object v0
.end method

.method public static e()Lcom/nianticproject/ingress/knobs/ScannerKnobs;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/nianticproject/ingress/common/q;->f:Lcom/nianticproject/ingress/knobs/ScannerKnobs;

    return-object v0
.end method

.method public static f()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/nianticproject/ingress/common/q;->b:Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    return-object v0
.end method

.method public static g()Lcom/nianticproject/ingress/knobs/ClientWeaponKnobBundle;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/nianticproject/ingress/common/q;->g:Lcom/nianticproject/ingress/knobs/ClientWeaponKnobBundle;

    return-object v0
.end method

.method public static h()Lcom/nianticproject/ingress/knobs/XmCostKnobs;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/nianticproject/ingress/common/q;->h:Lcom/nianticproject/ingress/knobs/XmCostKnobs;

    return-object v0
.end method

.method public static i()Lcom/nianticproject/ingress/knobs/RecycleKnobs;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/nianticproject/ingress/common/q;->i:Lcom/nianticproject/ingress/knobs/RecycleKnobs;

    return-object v0
.end method

.method public static j()Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/nianticproject/ingress/common/q;->j:Lcom/nianticproject/ingress/knobs/PortalModSharedKnobs;

    return-object v0
.end method

.method public static k()Lcom/nianticproject/ingress/knobs/NearbyPortalKnobs;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/nianticproject/ingress/common/q;->k:Lcom/nianticproject/ingress/knobs/NearbyPortalKnobs;

    return-object v0
.end method

.method public static l()Lcom/nianticproject/ingress/knobs/PlayerAnnounceSharedKnobs;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/nianticproject/ingress/common/q;->l:Lcom/nianticproject/ingress/knobs/PlayerAnnounceSharedKnobs;

    return-object v0
.end method

.class public final Lcom/nianticproject/ingress/gameentity/components/PortalTurret;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/Turret;
.implements Lcom/nianticproject/ingress/gameentity/i;


# static fields
.field private static final LEVEL_TO_DAMAGE_MAP:Lcom/google/a/c/dh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dh",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nianticproject/ingress/gameentity/components/j;",
            ">;"
        }
    .end annotation
.end field

.field private static final r:Ljava/util/Random;


# instance fields
.field private transient containingEntity:Lcom/nianticproject/ingress/gameentity/f;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 22
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/gameentity/components/PortalTurret;->r:Ljava/util/Random;

    .line 24
    invoke-static {}, Lcom/google/a/c/dh;->j()Lcom/google/a/c/di;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/gameentity/components/j;

    const/16 v3, 0x4b

    const/high16 v4, 0x4220

    const v5, 0x3ca3d70a

    invoke-direct {v2, v3, v4, v5}, Lcom/nianticproject/ingress/gameentity/components/j;-><init>(IFF)V

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/gameentity/components/j;

    const/16 v3, 0x7d

    const v4, 0x42366666

    const v5, 0x3d23d70a

    invoke-direct {v2, v3, v4, v5}, Lcom/nianticproject/ingress/gameentity/components/j;-><init>(IFF)V

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/gameentity/components/j;

    const/16 v3, 0xaf

    const v4, 0x424ccccc

    const v5, 0x3d75c28f

    invoke-direct {v2, v3, v4, v5}, Lcom/nianticproject/ingress/gameentity/components/j;-><init>(IFF)V

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/gameentity/components/j;

    const/16 v3, 0xee

    const v4, 0x42633333

    const v5, 0x3da3d70a

    invoke-direct {v2, v3, v4, v5}, Lcom/nianticproject/ingress/gameentity/components/j;-><init>(IFF)V

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/gameentity/components/j;

    const/16 v3, 0x12c

    const v4, 0x42799999

    const v5, 0x3dcccccd

    invoke-direct {v2, v3, v4, v5}, Lcom/nianticproject/ingress/gameentity/components/j;-><init>(IFF)V

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/gameentity/components/j;

    const/16 v3, 0x190

    const/high16 v4, 0x4288

    const v5, 0x3de147ae

    invoke-direct {v2, v3, v4, v5}, Lcom/nianticproject/ingress/gameentity/components/j;-><init>(IFF)V

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/gameentity/components/j;

    const/16 v3, 0x1f4

    const v4, 0x42933333

    const v5, 0x3df5c28f

    invoke-direct {v2, v3, v4, v5}, Lcom/nianticproject/ingress/gameentity/components/j;-><init>(IFF)V

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/gameentity/components/j;

    const/16 v3, 0x271

    const/high16 v4, 0x42a0

    const v5, 0x3e051eb8

    invoke-direct {v2, v3, v4, v5}, Lcom/nianticproject/ingress/gameentity/components/j;-><init>(IFF)V

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/gameentity/components/j;

    invoke-direct {v2, v7, v6, v6}, Lcom/nianticproject/ingress/gameentity/components/j;-><init>(IFF)V

    invoke-virtual {v0, v1, v2}, Lcom/google/a/c/di;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/di;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/di;->a()Lcom/google/a/c/dh;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/gameentity/components/PortalTurret;->LEVEL_TO_DAMAGE_MAP:Lcom/google/a/c/dh;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method private getPortalLevelOrZero()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/PortalTurret;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    if-nez v0, :cond_0

    move v0, v1

    .line 108
    :goto_0
    return v0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/PortalTurret;->getEntity()Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    const-class v2, Lcom/nianticproject/ingress/gameentity/components/portal/PortalV2;

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/portal/PortalV2;

    .line 105
    if-nez v0, :cond_1

    move v0, v1

    .line 106
    goto :goto_0

    .line 108
    :cond_1
    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/portal/PortalV2;->getLevel()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final calculateDamage(Lcom/google/a/d/u;Lcom/google/a/d/u;)Lcom/nianticproject/ingress/gameentity/components/q;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-virtual {p1, p2}, Lcom/google/a/d/u;->a(Lcom/google/a/d/u;)D

    move-result-wide v0

    .line 50
    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/PortalTurret;->getTargetingRangeInMeters()I

    move-result v2

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 51
    sget-object v0, Lcom/nianticproject/ingress/gameentity/components/q;->a:Lcom/nianticproject/ingress/gameentity/components/q;

    .line 57
    :goto_0
    return-object v0

    .line 53
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/gameentity/components/PortalTurret;->LEVEL_TO_DAMAGE_MAP:Lcom/google/a/c/dh;

    invoke-direct {p0}, Lcom/nianticproject/ingress/gameentity/components/PortalTurret;->getPortalLevelOrZero()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/j;

    .line 54
    invoke-static {v0}, Lcom/nianticproject/ingress/gameentity/components/j;->b(Lcom/nianticproject/ingress/gameentity/components/j;)I

    move-result v1

    .line 55
    sget-object v2, Lcom/nianticproject/ingress/gameentity/components/PortalTurret;->r:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    invoke-static {v0}, Lcom/nianticproject/ingress/gameentity/components/j;->c(Lcom/nianticproject/ingress/gameentity/components/j;)F

    move-result v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    move v2, v0

    .line 56
    :goto_1
    if-eqz v2, :cond_2

    mul-int/lit8 v0, v1, 0x2

    .line 57
    :goto_2
    new-instance v1, Lcom/nianticproject/ingress/gameentity/components/q;

    int-to-double v3, v0

    invoke-direct {v1, v3, v4, v2}, Lcom/nianticproject/ingress/gameentity/components/q;-><init>(DZ)V

    move-object v0, v1

    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, 0x0

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 56
    goto :goto_2
.end method

.method public final canBeFired()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public final getCurrentAmmo()I
    .locals 1

    .prologue
    .line 62
    const v0, 0x7fffffff

    return v0
.end method

.method public final getEntity()Lcom/nianticproject/ingress/gameentity/f;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/PortalTurret;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    return-object v0
.end method

.method public final getEntityGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/PortalTurret;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTargetingRangeInMeters()I
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/nianticproject/ingress/gameentity/components/PortalTurret;->LEVEL_TO_DAMAGE_MAP:Lcom/google/a/c/dh;

    invoke-direct {p0}, Lcom/nianticproject/ingress/gameentity/components/PortalTurret;->getPortalLevelOrZero()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/j;

    invoke-static {v0}, Lcom/nianticproject/ingress/gameentity/components/j;->a(Lcom/nianticproject/ingress/gameentity/components/j;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public final setEntity(Lcom/nianticproject/ingress/gameentity/f;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/PortalTurret;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/Turret;

    invoke-static {v0, p0, v1, p1}, Lcom/nianticproject/ingress/gameentity/e;->a(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/gameentity/a;Ljava/lang/Class;Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/gameentity/f;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/PortalTurret;->containingEntity:Lcom/nianticproject/ingress/gameentity/f;

    .line 83
    return-void
.end method

.method public final spendAmmo()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public final toBeDestroyed()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

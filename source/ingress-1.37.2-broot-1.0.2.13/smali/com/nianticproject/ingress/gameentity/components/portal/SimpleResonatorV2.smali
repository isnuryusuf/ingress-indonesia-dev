.class public final Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/portal/ResonatorV2;


# static fields
.field static final ENERGY_TANK_VOLUME:Lcom/google/a/c/dc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dc",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient dirty:Z

.field private final distanceToPortal:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private energyTotal:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private transient gameEntity:Lcom/nianticproject/ingress/gameentity/f;

.field private final id:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final level:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private transient location:Lcom/google/a/d/u;

.field private final ownerGuid:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private slot:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final transient temporary:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 35
    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x5dc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9c4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xbb8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0xfa0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x1388

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x1770

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/google/a/c/dc;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/dc;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->ENERGY_TANK_VOLUME:Lcom/google/a/c/dc;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->id:Ljava/lang/String;

    .line 242
    iput v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->level:I

    .line 243
    iput v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->distanceToPortal:I

    .line 244
    iput v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->energyTotal:I

    .line 245
    iput-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->ownerGuid:Ljava/lang/String;

    .line 246
    iput-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->location:Lcom/google/a/d/u;

    .line 247
    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->temporary:Z

    .line 248
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;-><init>(IILjava/lang/String;Z)V

    .line 112
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->computeEnergyCapacity(I)I

    move-result v5

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;-><init>(Ljava/lang/String;IILjava/lang/String;IZ)V

    .line 126
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;IZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 258
    iput-object p1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->id:Ljava/lang/String;

    .line 259
    invoke-static {p2}, Lcom/nianticproject/ingress/gameentity/components/a;->a(I)Z

    move-result v0

    const-string/jumbo v3, "level must be within Levels.MIN_LEVEL and Levels.MAX_LEVEL"

    invoke-static {v0, v3}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 261
    if-ltz p3, :cond_1

    :goto_1
    const-string/jumbo v0, "distance to portal must be non-negative"

    invoke-static {v1, v0}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 262
    iput p2, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->level:I

    .line 263
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->ownerGuid:Ljava/lang/String;

    .line 264
    iput p3, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->distanceToPortal:I

    .line 265
    iput p5, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->energyTotal:I

    .line 266
    iput-boolean p6, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->temporary:Z

    .line 267
    iput-boolean v2, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->dirty:Z

    .line 268
    return-void

    :cond_0
    move v0, v2

    .line 257
    goto :goto_0

    :cond_1
    move v1, v2

    .line 261
    goto :goto_1
.end method

.method public static computeEnergyCapacity(I)I
    .locals 2
    .parameter

    .prologue
    .line 84
    sget-object v0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->ENERGY_TANK_VOLUME:Lcom/google/a/c/dc;

    add-int/lit8 v1, p0, -0x1

    invoke-virtual {v0, v1}, Lcom/google/a/c/dc;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static createNonTemporary(IILjava/lang/String;)Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    new-instance v0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;

    invoke-direct {v0, p0, p1, p2}, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;-><init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static createTemporary(IILjava/lang/String;)Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 102
    new-instance v0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;-><init>(IILjava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public final getDistanceToPortal()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->distanceToPortal:I

    return v0
.end method

.method public final getEnergyCapacity()I
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->getLevel()I

    move-result v0

    invoke-static {v0}, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->computeEnergyCapacity(I)I

    move-result v0

    return v0
.end method

.method public final getEntity()Lcom/nianticproject/ingress/gameentity/f;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->gameEntity:Lcom/nianticproject/ingress/gameentity/f;

    return-object v0
.end method

.method public final getEntityGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->gameEntity:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLevel()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->level:I

    return v0
.end method

.method public final getLevelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->getLevel()I

    move-result v0

    invoke-static {v0}, Lcom/nianticproject/ingress/gameentity/components/a;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLocation()Lcom/google/a/d/u;
    .locals 5

    .prologue
    .line 180
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->location:Lcom/google/a/d/u;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->location:Lcom/google/a/d/u;

    .line 188
    :goto_0
    return-object v0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->gameEntity:Lcom/nianticproject/ingress/gameentity/f;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v1, "Cannot call this method when not attached to a game entity."

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->gameEntity:Lcom/nianticproject/ingress/gameentity/f;

    const-class v1, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    .line 186
    iget v1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->slot:I

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/r;->a(I)Lcom/nianticproject/ingress/shared/r;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/r;->c()D

    move-result-wide v1

    iget v3, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->distanceToPortal:I

    int-to-double v3, v3

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/components/LocationE6;->getLatLng()Lcom/google/a/d/u;

    move-result-object v0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nianticproject/ingress/shared/b/a;->a(Lcom/google/a/d/u;DD)Lcom/google/a/d/u;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->location:Lcom/google/a/d/u;

    .line 188
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->location:Lcom/google/a/d/u;

    goto :goto_0

    .line 183
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final getOctant()Lcom/nianticproject/ingress/shared/r;
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->slot:I

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/r;->a(I)Lcom/nianticproject/ingress/shared/r;

    move-result-object v0

    return-object v0
.end method

.method public final getOwnerGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->ownerGuid:Ljava/lang/String;

    return-object v0
.end method

.method public final getTotal()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->energyTotal:I

    return v0
.end method

.method public final isDirty()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->dirty:Z

    return v0
.end method

.method public final isTemporary()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->temporary:Z

    return v0
.end method

.method public final setClean()V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->dirty:Z

    .line 217
    return-void
.end method

.method public final setEntity(Lcom/nianticproject/ingress/gameentity/f;Lcom/nianticproject/ingress/shared/r;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 203
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->gameEntity:Lcom/nianticproject/ingress/gameentity/f;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 204
    if-eqz p1, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/a/a/an;->a(Z)V

    .line 205
    iput-object p1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->gameEntity:Lcom/nianticproject/ingress/gameentity/f;

    .line 206
    invoke-virtual {p2}, Lcom/nianticproject/ingress/shared/r;->a()I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->slot:I

    .line 207
    return-void

    :cond_0
    move v0, v2

    .line 203
    goto :goto_0

    :cond_1
    move v1, v2

    .line 204
    goto :goto_1
.end method

.method public final setTotal(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 160
    if-lez p1, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v2, "energyTotal must be positive"

    invoke-static {v0, v2}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 161
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->energyTotal:I

    if-ne v0, p1, :cond_1

    .line 166
    :goto_1
    return-void

    .line 160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 164
    :cond_1
    iput p1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->energyTotal:I

    .line 165
    iput-boolean v1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->dirty:Z

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 226
    const-string/jumbo v1, "level: \'%d\', distanceToPortal: \'%d\', ownerGuid: \'%s\', location: \'%s\', id: \'%s\'%s, energyTotal: \'%s\'"

    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v3, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->level:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget v3, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->distanceToPortal:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->ownerGuid:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->location:Lcom/google/a/d/u;

    aput-object v3, v2, v0

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->id:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v3, 0x5

    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->dirty:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, ", [dirty]"

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x6

    iget v3, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleResonatorV2;->energyTotal:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

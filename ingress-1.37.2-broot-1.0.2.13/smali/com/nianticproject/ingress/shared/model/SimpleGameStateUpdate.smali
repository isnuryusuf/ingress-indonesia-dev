.class public final Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/shared/model/e;


# instance fields
.field private final apGains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/model/ApGain;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final authoritative:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final changeTimestamp:Ljava/lang/Long;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final deletedEntityGuids:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final energyGlobGuids:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final energyGlobTimestamp:Ljava/lang/Long;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final gameEntities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final inventoryEntities:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final levelUp:Lcom/nianticproject/ingress/shared/model/LevelUp;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private playerDamages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/shared/model/PlayerDamage;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final playerEntity:Lcom/nianticproject/ingress/gameentity/f;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->gameEntities:Ljava/util/Set;

    .line 195
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->inventoryEntities:Ljava/util/Set;

    .line 196
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->deletedEntityGuids:Ljava/util/Collection;

    .line 197
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->changeTimestamp:Ljava/lang/Long;

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->authoritative:Z

    .line 199
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->energyGlobGuids:Ljava/util/Collection;

    .line 200
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->playerDamages:Ljava/util/Set;

    .line 201
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->playerEntity:Lcom/nianticproject/ingress/gameentity/f;

    .line 202
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->apGains:Ljava/util/List;

    .line 203
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->levelUp:Lcom/nianticproject/ingress/shared/model/LevelUp;

    .line 204
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->energyGlobTimestamp:Ljava/lang/Long;

    .line 205
    return-void
.end method

.method constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/Long;Ljava/lang/Long;ZLjava/util/Set;Lcom/nianticproject/ingress/gameentity/f;Lcom/google/a/c/dc;Lcom/nianticproject/ingress/shared/model/LevelUp;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Z",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/shared/model/PlayerDamage;",
            ">;",
            "Lcom/nianticproject/ingress/gameentity/f;",
            "Lcom/google/a/c/dc",
            "<",
            "Lcom/nianticproject/ingress/shared/model/ApGain;",
            ">;",
            "Lcom/nianticproject/ingress/shared/model/LevelUp;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->gameEntities:Ljava/util/Set;

    .line 76
    iput-object p2, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->inventoryEntities:Ljava/util/Set;

    .line 77
    iput-object p3, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->deletedEntityGuids:Ljava/util/Collection;

    .line 78
    iput-object p4, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->energyGlobGuids:Ljava/util/Collection;

    .line 79
    iput-object p5, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->energyGlobTimestamp:Ljava/lang/Long;

    .line 80
    iput-object p6, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->changeTimestamp:Ljava/lang/Long;

    .line 81
    iput-boolean p7, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->authoritative:Z

    .line 82
    iput-object p8, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->playerDamages:Ljava/util/Set;

    .line 83
    iput-object p9, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->playerEntity:Lcom/nianticproject/ingress/gameentity/f;

    .line 84
    iput-object p10, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->apGains:Ljava/util/List;

    .line 85
    iput-object p11, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->levelUp:Lcom/nianticproject/ingress/shared/model/LevelUp;

    .line 86
    return-void
.end method

.method public static a(Lcom/nianticproject/ingress/shared/model/e;)Lcom/nianticproject/ingress/shared/model/f;
    .locals 1
    .parameter

    .prologue
    .line 227
    new-instance v0, Lcom/nianticproject/ingress/shared/model/f;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/shared/model/f;-><init>(Lcom/nianticproject/ingress/shared/model/e;)V

    return-object v0
.end method

.method public static l()Lcom/nianticproject/ingress/shared/model/f;
    .locals 2

    .prologue
    .line 212
    new-instance v0, Lcom/nianticproject/ingress/shared/model/f;

    invoke-direct {v0}, Lcom/nianticproject/ingress/shared/model/f;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/shared/model/f;->a(Lcom/nianticproject/ingress/shared/model/f;Z)Lcom/nianticproject/ingress/shared/model/f;

    move-result-object v0

    return-object v0
.end method

.method public static m()Lcom/nianticproject/ingress/shared/model/f;
    .locals 2

    .prologue
    .line 220
    new-instance v0, Lcom/nianticproject/ingress/shared/model/f;

    invoke-direct {v0}, Lcom/nianticproject/ingress/shared/model/f;-><init>()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/shared/model/f;->a(Lcom/nianticproject/ingress/shared/model/f;Z)Lcom/nianticproject/ingress/shared/model/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->authoritative:Z

    return v0
.end method

.method public final b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->gameEntities:Ljava/util/Set;

    return-object v0
.end method

.method public final c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->inventoryEntities:Ljava/util/Set;

    return-object v0
.end method

.method public final d()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->energyGlobGuids:Ljava/util/Collection;

    return-object v0
.end method

.method public final e()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->energyGlobTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 152
    instance-of v1, p1, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v0

    .line 155
    :cond_1
    check-cast p1, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;

    .line 156
    iget-object v1, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->gameEntities:Ljava/util/Set;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->gameEntities:Ljava/util/Set;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->inventoryEntities:Ljava/util/Set;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->inventoryEntities:Ljava/util/Set;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->deletedEntityGuids:Ljava/util/Collection;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->deletedEntityGuids:Ljava/util/Collection;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->energyGlobGuids:Ljava/util/Collection;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->energyGlobGuids:Ljava/util/Collection;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->changeTimestamp:Ljava/lang/Long;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->changeTimestamp:Ljava/lang/Long;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->authoritative:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->authoritative:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->playerDamages:Ljava/util/Set;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->playerDamages:Ljava/util/Set;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->playerEntity:Lcom/nianticproject/ingress/gameentity/f;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->playerEntity:Lcom/nianticproject/ingress/gameentity/f;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->apGains:Ljava/util/List;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->apGains:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->energyGlobTimestamp:Ljava/lang/Long;

    iget-object v2, p1, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->energyGlobTimestamp:Ljava/lang/Long;

    invoke-static {v1, v2}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->deletedEntityGuids:Ljava/util/Collection;

    return-object v0
.end method

.method public final g()Lcom/google/a/a/aj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/a/aj",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->changeTimestamp:Ljava/lang/Long;

    invoke-static {v0}, Lcom/google/a/a/aj;->c(Ljava/lang/Object;)Lcom/google/a/a/aj;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/shared/model/PlayerDamage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->playerDamages:Ljava/util/Set;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 171
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->gameEntities:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->inventoryEntities:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->deletedEntityGuids:Ljava/util/Collection;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->energyGlobGuids:Ljava/util/Collection;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->changeTimestamp:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->authoritative:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->playerDamages:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->playerEntity:Lcom/nianticproject/ingress/gameentity/f;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->apGains:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->energyGlobTimestamp:Ljava/lang/Long;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i()Lcom/google/a/a/aj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/a/aj",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->playerEntity:Lcom/nianticproject/ingress/gameentity/f;

    invoke-static {v0}, Lcom/google/a/a/aj;->c(Ljava/lang/Object;)Lcom/google/a/a/aj;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/google/a/c/dc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dc",
            "<",
            "Lcom/nianticproject/ingress/shared/model/ApGain;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->apGains:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->apGains:Ljava/util/List;

    invoke-static {v0}, Lcom/google/a/c/dc;->a(Ljava/util/Collection;)Lcom/google/a/c/dc;

    move-result-object v0

    goto :goto_0
.end method

.method public final k()Lcom/google/a/a/aj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/a/aj",
            "<",
            "Lcom/nianticproject/ingress/shared/model/LevelUp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->levelUp:Lcom/nianticproject/ingress/shared/model/LevelUp;

    invoke-static {v0}, Lcom/google/a/a/aj;->c(Ljava/lang/Object;)Lcom/google/a/a/aj;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 186
    const-string/jumbo v0, "\'%s\' <%s> <%s> : <%s>"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->changeTimestamp:Ljava/lang/Long;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->gameEntities:Ljava/util/Set;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->energyGlobGuids:Ljava/util/Collection;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/model/SimpleGameStateUpdate;->deletedEntityGuids:Ljava/util/Collection;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

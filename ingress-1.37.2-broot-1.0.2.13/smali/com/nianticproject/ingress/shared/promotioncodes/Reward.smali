.class public final Lcom/nianticproject/ingress/shared/promotioncodes/Reward;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final apAward:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final inventoryAward:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final xmAward:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide v0, p0, Lcom/nianticproject/ingress/shared/promotioncodes/Reward;->apAward:J

    .line 50
    iput-wide v0, p0, Lcom/nianticproject/ingress/shared/promotioncodes/Reward;->xmAward:J

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/promotioncodes/Reward;->inventoryAward:Ljava/util/Collection;

    .line 52
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/nianticproject/ingress/shared/promotioncodes/Reward;->apAward:J

    return-wide v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/nianticproject/ingress/shared/promotioncodes/Reward;->xmAward:J

    return-wide v0
.end method

.method public final c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/promotioncodes/Reward;->inventoryAward:Ljava/util/Collection;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 68
    const-string/jumbo v0, "apAward: %d, xmAward: %d, inventoryAward: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/nianticproject/ingress/shared/promotioncodes/Reward;->apAward:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/nianticproject/ingress/shared/promotioncodes/Reward;->xmAward:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/promotioncodes/Reward;->inventoryAward:Ljava/util/Collection;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

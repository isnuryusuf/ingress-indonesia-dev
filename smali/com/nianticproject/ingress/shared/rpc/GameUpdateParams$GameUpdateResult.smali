.class public final Lcom/nianticproject/ingress/shared/rpc/GameUpdateParams$GameUpdateResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cellsTimestamp:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final inventorySequenceNumber:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-wide v0, p0, Lcom/nianticproject/ingress/shared/rpc/GameUpdateParams$GameUpdateResult;->inventorySequenceNumber:J

    .line 210
    iput-wide v0, p0, Lcom/nianticproject/ingress/shared/rpc/GameUpdateParams$GameUpdateResult;->cellsTimestamp:J

    .line 211
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 201
    const-string/jumbo v0, "inventorySequenceNumber: %s, cellsTimestamp: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/nianticproject/ingress/shared/rpc/GameUpdateParams$GameUpdateResult;->inventorySequenceNumber:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/nianticproject/ingress/shared/rpc/GameUpdateParams$GameUpdateResult;->cellsTimestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

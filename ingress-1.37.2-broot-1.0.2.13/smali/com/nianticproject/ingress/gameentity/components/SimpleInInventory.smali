.class public Lcom/nianticproject/ingress/gameentity/components/SimpleInInventory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/InInventory;
.implements Lcom/nianticproject/ingress/shared/s;


# instance fields
.field private acquisitionTimestampMs:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private transient dirty:Z

.field private playerId:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p2, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleInInventory;->acquisitionTimestampMs:J

    .line 31
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/gameentity/components/SimpleInInventory;->setPlayerId(Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleInInventory;->dirty:Z

    .line 33
    return-void
.end method


# virtual methods
.method public getAcquisitionTimestampMs()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleInInventory;->acquisitionTimestampMs:J

    return-wide v0
.end method

.method public getPlayerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleInInventory;->playerId:Ljava/lang/String;

    return-object v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleInInventory;->dirty:Z

    return v0
.end method

.method public setClean()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleInInventory;->dirty:Z

    .line 63
    return-void
.end method

.method public setPlayerId(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleInInventory;->playerId:Ljava/lang/String;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleInInventory;->dirty:Z

    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 67
    const-string/jumbo v1, "%s, timestamp: %s%s"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleInInventory;->playerId:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget-wide v3, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleInInventory;->acquisitionTimestampMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleInInventory;->dirty:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, " [dirty]"

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

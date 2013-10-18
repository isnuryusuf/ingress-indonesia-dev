.class public Lcom/nianticproject/ingress/gameentity/components/SimpleCaptured;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/Captured;


# instance fields
.field private final capturedTime:Ljava/lang/Long;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final capturingPlayerId:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleCaptured;->capturedTime:Ljava/lang/Long;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleCaptured;->capturingPlayerId:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleCaptured;->capturedTime:Ljava/lang/Long;

    .line 25
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleCaptured;->capturingPlayerId:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getCapturedTime()J
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleCaptured;->capturedTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCapturingPlayerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleCaptured;->capturingPlayerId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 40
    const-string/jumbo v0, "time: \'%s\', playerId: \'%s\'"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleCaptured;->capturedTime:Ljava/lang/Long;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleCaptured;->capturingPlayerId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/nianticproject/ingress/shared/rpc/SayParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams;


# instance fields
.field private final clientBasket:Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final factionOnly:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final message:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final playerLocation:Lcom/google/a/d/u;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    invoke-direct {v0}, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/SayParams;->clientBasket:Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    .line 82
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/SayParams;->message:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/SayParams;->playerLocation:Lcom/google/a/d/u;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/shared/rpc/SayParams;->factionOnly:Z

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/a/d/u;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    invoke-direct {v0}, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/SayParams;->clientBasket:Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    .line 54
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/SayParams;->message:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/nianticproject/ingress/shared/rpc/SayParams;->playerLocation:Lcom/google/a/d/u;

    .line 56
    iput-boolean p3, p0, Lcom/nianticproject/ingress/shared/rpc/SayParams;->factionOnly:Z

    .line 57
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/SayParams;->clientBasket:Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    return-object v0
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/rpc/SayParams;->message:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/rpc/SayParams;->playerLocation:Lcom/google/a/d/u;

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/b/a;->c(Lcom/google/a/d/u;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/nianticproject/ingress/shared/rpc/SayParams;->factionOnly:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

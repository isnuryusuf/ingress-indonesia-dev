.class public Lcom/nianticproject/ingress/server/FindNearbyPortalsParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams;
.implements Lcom/nianticproject/ingress/shared/rpc/l;


# instance fields
.field private clientBasket:Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final continuationToken:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private energyGlobGuids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private knobSyncTimestamp:Ljava/lang/Long;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final maxPortals:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private playerLocation:Lcom/google/a/d/u;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    invoke-direct {v0}, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/server/FindNearbyPortalsParams;->clientBasket:Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/nianticproject/ingress/server/FindNearbyPortalsParams;->maxPortals:I

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/server/FindNearbyPortalsParams;->continuationToken:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    invoke-direct {v0}, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/server/FindNearbyPortalsParams;->clientBasket:Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    .line 65
    iput-object p1, p0, Lcom/nianticproject/ingress/server/FindNearbyPortalsParams;->continuationToken:Ljava/lang/String;

    .line 66
    iput p2, p0, Lcom/nianticproject/ingress/server/FindNearbyPortalsParams;->maxPortals:I

    .line 67
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nianticproject/ingress/server/FindNearbyPortalsParams;->clientBasket:Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    return-object v0
.end method

.method public final a(J)V
    .locals 1
    .parameter

    .prologue
    .line 104
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/server/FindNearbyPortalsParams;->knobSyncTimestamp:Ljava/lang/Long;

    .line 105
    return-void
.end method

.method public final a(Lcom/google/a/d/u;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/nianticproject/ingress/server/FindNearbyPortalsParams;->playerLocation:Lcom/google/a/d/u;

    .line 85
    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    iput-object p1, p0, Lcom/nianticproject/ingress/server/FindNearbyPortalsParams;->energyGlobGuids:Ljava/util/Set;

    .line 95
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 121
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/nianticproject/ingress/server/FindNearbyPortalsParams;->maxPortals:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/server/FindNearbyPortalsParams;->continuationToken:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nianticproject/ingress/server/FindNearbyPortalsParams;->playerLocation:Lcom/google/a/d/u;

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/b/a;->c(Lcom/google/a/d/u;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

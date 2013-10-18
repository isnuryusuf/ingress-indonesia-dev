.class public final Lcom/nianticproject/ingress/shared/rpc/SingleItemParams;
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

.field private final itemGuid:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private knobSyncTimestamp:Ljava/lang/Long;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private playerLocation:Lcom/google/a/d/u;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    invoke-direct {v0}, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/SingleItemParams;->clientBasket:Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    .line 101
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/SingleItemParams;->itemGuid:Ljava/lang/String;

    .line 102
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/SingleItemParams;->playerLocation:Lcom/google/a/d/u;

    .line 103
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/SingleItemParams;->energyGlobGuids:Ljava/util/Set;

    .line 104
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/SingleItemParams;->knobSyncTimestamp:Ljava/lang/Long;

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    invoke-direct {v0}, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/SingleItemParams;->clientBasket:Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    .line 56
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/SingleItemParams;->itemGuid:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/SingleItemParams;->clientBasket:Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    return-object v0
.end method

.method public final a(J)V
    .locals 1
    .parameter

    .prologue
    .line 90
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/SingleItemParams;->knobSyncTimestamp:Ljava/lang/Long;

    .line 91
    return-void
.end method

.method public final a(Lcom/google/a/d/u;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/SingleItemParams;->playerLocation:Lcom/google/a/d/u;

    .line 71
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
    .line 80
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/SingleItemParams;->energyGlobGuids:Ljava/util/Set;

    .line 81
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/rpc/SingleItemParams;->itemGuid:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/rpc/SingleItemParams;->playerLocation:Lcom/google/a/d/u;

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/b/a;->c(Lcom/google/a/d/u;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

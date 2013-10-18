.class public Lcom/nianticproject/ingress/shared/rpc/DeployResonatorV2Params;
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

.field public itemGuids:Ljava/util/Set;
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

.field private location:Lcom/google/a/d/u;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public portalGuid:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public preferredSlot:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    invoke-direct {v0}, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/DeployResonatorV2Params;->clientBasket:Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    .line 114
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/DeployResonatorV2Params;->location:Lcom/google/a/d/u;

    .line 115
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/DeployResonatorV2Params;->itemGuids:Ljava/util/Set;

    .line 116
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/DeployResonatorV2Params;->portalGuid:Ljava/lang/String;

    .line 117
    const/4 v0, -0x2

    iput v0, p0, Lcom/nianticproject/ingress/shared/rpc/DeployResonatorV2Params;->preferredSlot:I

    .line 118
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/DeployResonatorV2Params;->energyGlobGuids:Ljava/util/Set;

    .line 119
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/DeployResonatorV2Params;->knobSyncTimestamp:Ljava/lang/Long;

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    invoke-direct {v0}, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/DeployResonatorV2Params;->clientBasket:Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/a/c/jc;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/DeployResonatorV2Params;->itemGuids:Ljava/util/Set;

    .line 70
    iput-object p2, p0, Lcom/nianticproject/ingress/shared/rpc/DeployResonatorV2Params;->portalGuid:Ljava/lang/String;

    .line 71
    iput p3, p0, Lcom/nianticproject/ingress/shared/rpc/DeployResonatorV2Params;->preferredSlot:I

    .line 72
    iput-object v2, p0, Lcom/nianticproject/ingress/shared/rpc/DeployResonatorV2Params;->energyGlobGuids:Ljava/util/Set;

    .line 73
    iput-object v2, p0, Lcom/nianticproject/ingress/shared/rpc/DeployResonatorV2Params;->knobSyncTimestamp:Ljava/lang/Long;

    .line 74
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/DeployResonatorV2Params;->clientBasket:Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    return-object v0
.end method

.method public final a(J)V
    .locals 1
    .parameter

    .prologue
    .line 103
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/DeployResonatorV2Params;->knobSyncTimestamp:Ljava/lang/Long;

    .line 104
    return-void
.end method

.method public final a(Lcom/google/a/d/u;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/DeployResonatorV2Params;->location:Lcom/google/a/d/u;

    .line 84
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
    .line 93
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/DeployResonatorV2Params;->energyGlobGuids:Ljava/util/Set;

    .line 94
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 124
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/rpc/DeployResonatorV2Params;->location:Lcom/google/a/d/u;

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/b/a;->c(Lcom/google/a/d/u;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/rpc/DeployResonatorV2Params;->itemGuids:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/rpc/DeployResonatorV2Params;->portalGuid:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/nianticproject/ingress/shared/rpc/DeployResonatorV2Params;->preferredSlot:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.class public final Lcom/nianticproject/ingress/shared/rpc/UpgradeResonatorV2Params;
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

.field public final emitterGuid:Ljava/lang/String;
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

.field private location:Lcom/google/a/d/u;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final portalGuid:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final resonatorSlotToUpgrade:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    invoke-direct {v0}, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/UpgradeResonatorV2Params;->clientBasket:Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    .line 123
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/UpgradeResonatorV2Params;->location:Lcom/google/a/d/u;

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/nianticproject/ingress/shared/rpc/UpgradeResonatorV2Params;->resonatorSlotToUpgrade:I

    .line 125
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/UpgradeResonatorV2Params;->emitterGuid:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/UpgradeResonatorV2Params;->portalGuid:Ljava/lang/String;

    .line 127
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/UpgradeResonatorV2Params;->energyGlobGuids:Ljava/util/Set;

    .line 128
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/UpgradeResonatorV2Params;->knobSyncTimestamp:Ljava/lang/Long;

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    invoke-direct {v0}, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/UpgradeResonatorV2Params;->clientBasket:Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    .line 77
    iput p3, p0, Lcom/nianticproject/ingress/shared/rpc/UpgradeResonatorV2Params;->resonatorSlotToUpgrade:I

    .line 78
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/UpgradeResonatorV2Params;->emitterGuid:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/nianticproject/ingress/shared/rpc/UpgradeResonatorV2Params;->portalGuid:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/UpgradeResonatorV2Params;->energyGlobGuids:Ljava/util/Set;

    .line 81
    if-ltz p3, :cond_0

    const/4 v0, 0x7

    if-gt p3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 83
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/UpgradeResonatorV2Params;->clientBasket:Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    return-object v0
.end method

.method public final a(J)V
    .locals 1
    .parameter

    .prologue
    .line 112
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/UpgradeResonatorV2Params;->knobSyncTimestamp:Ljava/lang/Long;

    .line 113
    return-void
.end method

.method public final a(Lcom/google/a/d/u;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/UpgradeResonatorV2Params;->location:Lcom/google/a/d/u;

    .line 93
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
    .line 102
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/UpgradeResonatorV2Params;->energyGlobGuids:Ljava/util/Set;

    .line 103
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 133
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/rpc/UpgradeResonatorV2Params;->location:Lcom/google/a/d/u;

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/b/a;->c(Lcom/google/a/d/u;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/nianticproject/ingress/shared/rpc/UpgradeResonatorV2Params;->resonatorSlotToUpgrade:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/rpc/UpgradeResonatorV2Params;->emitterGuid:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/rpc/UpgradeResonatorV2Params;->portalGuid:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

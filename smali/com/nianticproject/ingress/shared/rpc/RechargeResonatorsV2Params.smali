.class public final Lcom/nianticproject/ingress/shared/rpc/RechargeResonatorsV2Params;
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

.field public portalKeyGuid:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public resonatorSlots:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    invoke-direct {v0}, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/RechargeResonatorsV2Params;->clientBasket:Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    .line 134
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/RechargeResonatorsV2Params;->location:Lcom/google/a/d/u;

    .line 135
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/RechargeResonatorsV2Params;->portalKeyGuid:Ljava/lang/String;

    .line 136
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/RechargeResonatorsV2Params;->portalGuid:Ljava/lang/String;

    .line 137
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/RechargeResonatorsV2Params;->resonatorSlots:Ljava/util/Set;

    .line 138
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/RechargeResonatorsV2Params;->energyGlobGuids:Ljava/util/Set;

    .line 139
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/RechargeResonatorsV2Params;->knobSyncTimestamp:Ljava/lang/Long;

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x7

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    invoke-direct {v0}, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/RechargeResonatorsV2Params;->clientBasket:Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    .line 75
    invoke-static {p3}, Lcom/google/a/c/jc;->b(Ljava/lang/Iterable;)Ljava/util/TreeSet;

    move-result-object v3

    .line 76
    invoke-interface {v3}, Ljava/util/SortedSet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-interface {v3}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, v7, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    const-string/jumbo v4, "Should be empty, or between \'%s\' and \'%s\': %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v6, 0x2

    aput-object v3, v5, v6

    invoke-static {v0, v4, v5}, Lcom/google/a/a/an;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iput-object p2, p0, Lcom/nianticproject/ingress/shared/rpc/RechargeResonatorsV2Params;->portalGuid:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/nianticproject/ingress/shared/rpc/RechargeResonatorsV2Params;->resonatorSlots:Ljava/util/Set;

    .line 84
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/RechargeResonatorsV2Params;->portalKeyGuid:Ljava/lang/String;

    .line 85
    if-nez p2, :cond_3

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    invoke-static {v2}, Lcom/google/a/a/an;->a(Z)V

    .line 94
    :goto_2
    return-void

    :cond_1
    move v0, v1

    .line 76
    goto :goto_0

    :cond_2
    move v2, v1

    .line 87
    goto :goto_1

    .line 91
    :cond_3
    if-nez p1, :cond_4

    move v0, v2

    :goto_3
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 92
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    :goto_4
    invoke-static {v2}, Lcom/google/a/a/an;->a(Z)V

    goto :goto_2

    :cond_4
    move v0, v1

    .line 91
    goto :goto_3

    :cond_5
    move v2, v1

    .line 92
    goto :goto_4
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/RechargeResonatorsV2Params;->clientBasket:Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    return-object v0
.end method

.method public final a(J)V
    .locals 1
    .parameter

    .prologue
    .line 123
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/RechargeResonatorsV2Params;->knobSyncTimestamp:Ljava/lang/Long;

    .line 124
    return-void
.end method

.method public final a(Lcom/google/a/d/u;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/RechargeResonatorsV2Params;->location:Lcom/google/a/d/u;

    .line 104
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
    .line 113
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/RechargeResonatorsV2Params;->energyGlobGuids:Ljava/util/Set;

    .line 114
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 144
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/rpc/RechargeResonatorsV2Params;->location:Lcom/google/a/d/u;

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/b/a;->c(Lcom/google/a/d/u;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/rpc/RechargeResonatorsV2Params;->portalKeyGuid:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/rpc/RechargeResonatorsV2Params;->portalGuid:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/rpc/RechargeResonatorsV2Params;->resonatorSlots:Ljava/util/Set;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

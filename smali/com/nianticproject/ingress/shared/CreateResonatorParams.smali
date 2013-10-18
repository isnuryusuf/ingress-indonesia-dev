.class public Lcom/nianticproject/ingress/shared/CreateResonatorParams;
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

.field public latE6:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public lngE6:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public portalGuid:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    invoke-direct {v0}, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/CreateResonatorParams;->clientBasket:Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    .line 98
    iput v2, p0, Lcom/nianticproject/ingress/shared/CreateResonatorParams;->latE6:I

    .line 99
    iput v2, p0, Lcom/nianticproject/ingress/shared/CreateResonatorParams;->lngE6:I

    .line 100
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/CreateResonatorParams;->itemGuids:Ljava/util/Set;

    .line 101
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/CreateResonatorParams;->portalGuid:Ljava/lang/String;

    .line 102
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/CreateResonatorParams;->energyGlobGuids:Ljava/util/Set;

    .line 103
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/CreateResonatorParams;->knobSyncTimestamp:Ljava/lang/Long;

    .line 104
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/CreateResonatorParams;->clientBasket:Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    return-object v0
.end method

.method public final a(J)V
    .locals 1
    .parameter

    .prologue
    .line 88
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/CreateResonatorParams;->knobSyncTimestamp:Ljava/lang/Long;

    .line 89
    return-void
.end method

.method public final a(Lcom/google/a/d/u;)V
    .locals 4
    .parameter

    .prologue
    const-wide v2, 0x412e848000000000L

    .line 67
    invoke-virtual {p1}, Lcom/google/a/d/u;->c()D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/shared/CreateResonatorParams;->latE6:I

    .line 68
    invoke-virtual {p1}, Lcom/google/a/d/u;->f()D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/nianticproject/ingress/shared/CreateResonatorParams;->lngE6:I

    .line 69
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
    .line 78
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/CreateResonatorParams;->energyGlobGuids:Ljava/util/Set;

    .line 79
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 108
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/nianticproject/ingress/shared/CreateResonatorParams;->latE6:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/nianticproject/ingress/shared/CreateResonatorParams;->lngE6:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/CreateResonatorParams;->itemGuids:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/CreateResonatorParams;->portalGuid:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

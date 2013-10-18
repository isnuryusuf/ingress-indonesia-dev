.class public final Lcom/nianticproject/ingress/shared/AddModParams;
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

.field public final index:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private knobSyncTimestamp:Ljava/lang/Long;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final modResourceGuid:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final modableGuid:Ljava/lang/String;
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

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    invoke-direct {v0}, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/AddModParams;->clientBasket:Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    .line 128
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/AddModParams;->modableGuid:Ljava/lang/String;

    .line 129
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/AddModParams;->modResourceGuid:Ljava/lang/String;

    .line 130
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/AddModParams;->playerLocation:Lcom/google/a/d/u;

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/nianticproject/ingress/shared/AddModParams;->index:I

    .line 132
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/AddModParams;->energyGlobGuids:Ljava/util/Set;

    .line 133
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/AddModParams;->knobSyncTimestamp:Ljava/lang/Long;

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    invoke-direct {v0}, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/AddModParams;->clientBasket:Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    .line 83
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/AddModParams;->modableGuid:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/nianticproject/ingress/shared/AddModParams;->modResourceGuid:Ljava/lang/String;

    .line 85
    iput p3, p0, Lcom/nianticproject/ingress/shared/AddModParams;->index:I

    .line 86
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/AddModParams;->energyGlobGuids:Ljava/util/Set;

    .line 87
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/AddModParams;->knobSyncTimestamp:Ljava/lang/Long;

    .line 88
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/AddModParams;->clientBasket:Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    return-object v0
.end method

.method public final a(J)V
    .locals 1
    .parameter

    .prologue
    .line 117
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/AddModParams;->knobSyncTimestamp:Ljava/lang/Long;

    .line 118
    return-void
.end method

.method public final a(Lcom/google/a/d/u;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/AddModParams;->playerLocation:Lcom/google/a/d/u;

    .line 98
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
    .line 107
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/AddModParams;->energyGlobGuids:Ljava/util/Set;

    .line 108
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 138
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/AddModParams;->modableGuid:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/AddModParams;->modResourceGuid:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/AddModParams;->playerLocation:Lcom/google/a/d/u;

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/b/a;->c(Lcom/google/a/d/u;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/nianticproject/ingress/shared/AddModParams;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

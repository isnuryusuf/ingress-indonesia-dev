.class public Lcom/nianticproject/ingress/shared/rpc/NotificationSettingsParams;
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

.field private final notificationSettings:Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    invoke-direct {v0}, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettingsParams;->clientBasket:Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    .line 89
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettingsParams;->location:Lcom/google/a/d/u;

    .line 90
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettingsParams;->energyGlobGuids:Ljava/util/Set;

    .line 91
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettingsParams;->knobSyncTimestamp:Ljava/lang/Long;

    .line 92
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettingsParams;->notificationSettings:Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    invoke-direct {v0}, Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettingsParams;->clientBasket:Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    .line 44
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettingsParams;->notificationSettings:Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    .line 45
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettingsParams;->clientBasket:Lcom/nianticproject/ingress/shared/rpc/GameplayRpcParams$ClientBasket;

    return-object v0
.end method

.method public final a(J)V
    .locals 0
    .parameter

    .prologue
    .line 79
    return-void
.end method

.method public final a(Lcom/google/a/d/u;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettingsParams;->location:Lcom/google/a/d/u;

    .line 70
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
    .line 74
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettingsParams;->energyGlobGuids:Ljava/util/Set;

    .line 75
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettingsParams;->notificationSettings:Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->hashCode()I

    move-result v0

    return v0
.end method

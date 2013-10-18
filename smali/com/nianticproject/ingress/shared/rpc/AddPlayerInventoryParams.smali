.class public Lcom/nianticproject/ingress/shared/rpc/AddPlayerInventoryParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final itemsToAdd:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/shared/af;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final level:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private playerGuid:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/shared/rpc/AddPlayerInventoryParams;->level:I

    .line 44
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/AddPlayerInventoryParams;->itemsToAdd:Ljava/util/Map;

    .line 45
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/AddPlayerInventoryParams;->playerGuid:Ljava/lang/String;

    .line 46
    return-void
.end method

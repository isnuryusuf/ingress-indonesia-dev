.class public Lcom/nianticproject/ingress/shared/rpc/ThinnedEntitiesParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final boundsParamsList:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/BoundsParams;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final minLevelOfDetail:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/nianticproject/ingress/shared/rpc/ThinnedEntitiesParams;->minLevelOfDetail:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/ThinnedEntitiesParams;->boundsParamsList:Ljava/util/Collection;

    .line 60
    return-void
.end method

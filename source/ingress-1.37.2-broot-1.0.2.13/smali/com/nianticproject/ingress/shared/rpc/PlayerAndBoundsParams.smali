.class public final Lcom/nianticproject/ingress/shared/rpc/PlayerAndBoundsParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final maxLatE6:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final maxLngE6:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final minLatE6:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final minLngE6:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final playerGuid:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final timestampMs:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/PlayerAndBoundsParams;->playerGuid:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/nianticproject/ingress/shared/rpc/PlayerAndBoundsParams;->minLatE6:I

    .line 55
    iput v1, p0, Lcom/nianticproject/ingress/shared/rpc/PlayerAndBoundsParams;->minLngE6:I

    .line 56
    iput v1, p0, Lcom/nianticproject/ingress/shared/rpc/PlayerAndBoundsParams;->maxLatE6:I

    .line 57
    iput v1, p0, Lcom/nianticproject/ingress/shared/rpc/PlayerAndBoundsParams;->maxLngE6:I

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/shared/rpc/PlayerAndBoundsParams;->timestampMs:J

    .line 59
    return-void
.end method

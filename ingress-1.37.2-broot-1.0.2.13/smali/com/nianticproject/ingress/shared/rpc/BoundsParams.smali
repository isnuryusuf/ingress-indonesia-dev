.class public Lcom/nianticproject/ingress/shared/rpc/BoundsParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final id:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

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

.field public final timestampMs:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/BoundsParams;->id:Ljava/lang/String;

    .line 63
    iput v1, p0, Lcom/nianticproject/ingress/shared/rpc/BoundsParams;->minLatE6:I

    .line 64
    iput v1, p0, Lcom/nianticproject/ingress/shared/rpc/BoundsParams;->minLngE6:I

    .line 65
    iput v1, p0, Lcom/nianticproject/ingress/shared/rpc/BoundsParams;->maxLatE6:I

    .line 66
    iput v1, p0, Lcom/nianticproject/ingress/shared/rpc/BoundsParams;->maxLngE6:I

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/shared/rpc/BoundsParams;->timestampMs:J

    .line 68
    return-void
.end method

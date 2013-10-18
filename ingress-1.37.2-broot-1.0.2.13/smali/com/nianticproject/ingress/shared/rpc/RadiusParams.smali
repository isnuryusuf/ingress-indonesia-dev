.class public final Lcom/nianticproject/ingress/shared/rpc/RadiusParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final dateMs:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final latE6:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final lngE6:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final radius:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/shared/rpc/RadiusParams;->dateMs:J

    .line 64
    iput v2, p0, Lcom/nianticproject/ingress/shared/rpc/RadiusParams;->latE6:I

    .line 65
    iput v2, p0, Lcom/nianticproject/ingress/shared/rpc/RadiusParams;->lngE6:I

    .line 66
    iput v2, p0, Lcom/nianticproject/ingress/shared/rpc/RadiusParams;->radius:I

    .line 67
    return-void
.end method

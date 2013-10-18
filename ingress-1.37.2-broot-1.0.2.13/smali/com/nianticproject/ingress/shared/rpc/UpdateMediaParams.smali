.class public Lcom/nianticproject/ingress/shared/rpc/UpdateMediaParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final isViewed:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final mediaId:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final playerGuid:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/UpdateMediaParams;->mediaId:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/UpdateMediaParams;->playerGuid:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/shared/rpc/UpdateMediaParams;->isViewed:Z

    .line 39
    return-void
.end method

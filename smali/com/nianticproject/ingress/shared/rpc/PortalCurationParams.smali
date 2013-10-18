.class public final Lcom/nianticproject/ingress/shared/rpc/PortalCurationParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final curationReason:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final curationType:Lcom/nianticproject/ingress/shared/rpc/b;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final description:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final location:Lcom/google/a/d/u;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final photoRequestId:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final portalGuid:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final title:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/PortalCurationParams;->portalGuid:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/PortalCurationParams;->title:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/PortalCurationParams;->location:Lcom/google/a/d/u;

    .line 94
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/PortalCurationParams;->description:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/PortalCurationParams;->curationType:Lcom/nianticproject/ingress/shared/rpc/b;

    .line 96
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/PortalCurationParams;->curationReason:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/PortalCurationParams;->photoRequestId:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/d/u;Lcom/nianticproject/ingress/shared/rpc/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/PortalCurationParams;->portalGuid:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/nianticproject/ingress/shared/rpc/PortalCurationParams;->title:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/nianticproject/ingress/shared/rpc/PortalCurationParams;->description:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/nianticproject/ingress/shared/rpc/PortalCurationParams;->location:Lcom/google/a/d/u;

    .line 55
    invoke-static {p5}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/rpc/b;

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/PortalCurationParams;->curationType:Lcom/nianticproject/ingress/shared/rpc/b;

    .line 56
    iput-object p6, p0, Lcom/nianticproject/ingress/shared/rpc/PortalCurationParams;->curationReason:Ljava/lang/String;

    .line 57
    iput-object p7, p0, Lcom/nianticproject/ingress/shared/rpc/PortalCurationParams;->photoRequestId:Ljava/lang/String;

    .line 58
    return-void
.end method

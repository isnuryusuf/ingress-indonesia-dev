.class public final Lcom/nianticproject/ingress/shared/rpc/PortalImagesParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final maxItemsPerPage:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final portalGuid:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final portalImageCursor:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/PortalImagesParams;->portalGuid:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/shared/rpc/PortalImagesParams;->maxItemsPerPage:I

    .line 47
    iput-object v1, p0, Lcom/nianticproject/ingress/shared/rpc/PortalImagesParams;->portalImageCursor:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 35
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/PortalImagesParams;->portalGuid:Ljava/lang/String;

    .line 36
    if-lez p2, :cond_1

    move v0, v1

    :goto_1
    const-string/jumbo v3, "maxItemsPerPage must be positive: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/a/a/an;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iput p2, p0, Lcom/nianticproject/ingress/shared/rpc/PortalImagesParams;->maxItemsPerPage:I

    .line 39
    iput-object p3, p0, Lcom/nianticproject/ingress/shared/rpc/PortalImagesParams;->portalImageCursor:Ljava/lang/String;

    .line 40
    return-void

    :cond_0
    move v0, v2

    .line 34
    goto :goto_0

    :cond_1
    move v0, v2

    .line 36
    goto :goto_1
.end method

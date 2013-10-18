.class public final Lcom/nianticproject/ingress/shared/rpc/PortalPhotoByUrlParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final imageUrl:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final portalGuid:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final requestId:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/PortalPhotoByUrlParams;->requestId:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/PortalPhotoByUrlParams;->portalGuid:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/PortalPhotoByUrlParams;->imageUrl:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/PortalPhotoByUrlParams;->requestId:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/nianticproject/ingress/shared/rpc/PortalPhotoByUrlParams;->portalGuid:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/nianticproject/ingress/shared/rpc/PortalPhotoByUrlParams;->imageUrl:Ljava/lang/String;

    .line 33
    return-void
.end method

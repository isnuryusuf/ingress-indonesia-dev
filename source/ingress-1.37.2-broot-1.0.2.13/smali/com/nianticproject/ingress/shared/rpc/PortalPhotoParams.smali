.class public final Lcom/nianticproject/ingress/shared/rpc/PortalPhotoParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final encodedImage:Ljava/lang/String;
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

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/PortalPhotoParams;->requestId:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/PortalPhotoParams;->portalGuid:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/PortalPhotoParams;->encodedImage:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/rpc/PortalPhotoParams;->requestId:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/nianticproject/ingress/shared/rpc/PortalPhotoParams;->portalGuid:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/nianticproject/ingress/shared/rpc/PortalPhotoParams;->encodedImage:Ljava/lang/String;

    .line 37
    return-void
.end method

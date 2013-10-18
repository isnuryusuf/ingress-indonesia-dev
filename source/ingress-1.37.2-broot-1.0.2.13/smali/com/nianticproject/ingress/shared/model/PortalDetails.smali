.class public final Lcom/nianticproject/ingress/shared/model/PortalDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final description:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final imageUrl:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final location:Lcom/google/a/d/u;
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

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/model/PortalDetails;->portalGuid:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/model/PortalDetails;->title:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/model/PortalDetails;->location:Lcom/google/a/d/u;

    .line 72
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/model/PortalDetails;->description:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/model/PortalDetails;->imageUrl:Ljava/lang/String;

    .line 74
    return-void
.end method

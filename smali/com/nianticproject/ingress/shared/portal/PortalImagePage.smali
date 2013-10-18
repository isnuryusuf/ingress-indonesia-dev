.class public final Lcom/nianticproject/ingress/shared/portal/PortalImagePage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final cursor:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final portalImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;->cursor:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;->portalImages:Ljava/util/List;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;->portalImages:Ljava/util/List;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;->cursor:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    if-ne p0, p1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 56
    :cond_3
    check-cast p1, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;

    .line 57
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;->cursor:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 58
    iget-object v2, p1, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;->cursor:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 59
    :cond_4
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;->cursor:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;->cursor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 60
    :cond_5
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;->portalImages:Ljava/util/List;

    if-nez v2, :cond_6

    .line 61
    iget-object v2, p1, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;->portalImages:Ljava/util/List;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 62
    :cond_6
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;->portalImages:Ljava/util/List;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;->portalImages:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 44
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;->cursor:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 47
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;->portalImages:Ljava/util/List;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 48
    return v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;->cursor:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/nianticproject/ingress/shared/portal/PortalImagePage;->portalImages:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

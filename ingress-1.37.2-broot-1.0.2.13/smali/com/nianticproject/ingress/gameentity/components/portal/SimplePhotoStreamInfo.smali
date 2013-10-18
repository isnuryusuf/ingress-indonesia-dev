.class public final Lcom/nianticproject/ingress/gameentity/components/portal/SimplePhotoStreamInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/portal/PhotoStreamInfo;
.implements Lcom/nianticproject/ingress/shared/s;


# instance fields
.field private coverPhoto:Lcom/nianticproject/ingress/shared/portal/PortalImage;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private transient dirty:Z

.field private photoCount:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/shared/portal/PortalImage;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePhotoStreamInfo;->checkPhotoCount(I)V

    .line 34
    iput-object p1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePhotoStreamInfo;->coverPhoto:Lcom/nianticproject/ingress/shared/portal/PortalImage;

    .line 35
    iput p2, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePhotoStreamInfo;->photoCount:I

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePhotoStreamInfo;->dirty:Z

    .line 37
    return-void
.end method

.method private checkPhotoCount(I)V
    .locals 1
    .parameter

    .prologue
    .line 59
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 60
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getCoverPhoto()Lcom/nianticproject/ingress/shared/portal/PortalImage;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePhotoStreamInfo;->coverPhoto:Lcom/nianticproject/ingress/shared/portal/PortalImage;

    return-object v0
.end method

.method public final getPhotoCount()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePhotoStreamInfo;->photoCount:I

    return v0
.end method

.method public final isDirty()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePhotoStreamInfo;->dirty:Z

    return v0
.end method

.method public final setClean()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePhotoStreamInfo;->dirty:Z

    .line 91
    return-void
.end method

.method public final setCoverPhoto(Lcom/nianticproject/ingress/shared/portal/PortalImage;)V
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePhotoStreamInfo;->coverPhoto:Lcom/nianticproject/ingress/shared/portal/PortalImage;

    invoke-static {v0, p1}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    iput-object p1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePhotoStreamInfo;->coverPhoto:Lcom/nianticproject/ingress/shared/portal/PortalImage;

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePhotoStreamInfo;->dirty:Z

    .line 68
    :cond_0
    return-void
.end method

.method public final setPhotoCount(I)V
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePhotoStreamInfo;->checkPhotoCount(I)V

    .line 52
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePhotoStreamInfo;->photoCount:I

    if-eq v0, p1, :cond_0

    .line 53
    iput p1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePhotoStreamInfo;->photoCount:I

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePhotoStreamInfo;->dirty:Z

    .line 56
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/ag;->a(Ljava/lang/Class;)Lcom/google/a/a/ah;

    move-result-object v0

    const-string/jumbo v1, "coverPhoto"

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePhotoStreamInfo;->coverPhoto:Lcom/nianticproject/ingress/shared/portal/PortalImage;

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/ah;

    move-result-object v0

    const-string/jumbo v1, "photoCount"

    iget v2, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePhotoStreamInfo;->photoCount:I

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;I)Lcom/google/a/a/ah;

    move-result-object v0

    const-string/jumbo v1, "dirty"

    iget-boolean v2, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimplePhotoStreamInfo;->dirty:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Z)Lcom/google/a/a/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

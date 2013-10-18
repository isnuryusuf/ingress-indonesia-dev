.class public final Lcom/nianticproject/ingress/shared/portal/PortalImage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/shared/portal/a;


# instance fields
.field private final attributionMarkup:Lcom/nianticproject/ingress/shared/plext/c;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final imageUrl:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final portalImageGuid:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final voteCount:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/portal/PortalImage;->portalImageGuid:Ljava/lang/String;

    .line 143
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/portal/PortalImage;->imageUrl:Ljava/lang/String;

    .line 144
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/portal/PortalImage;->attributionMarkup:Lcom/nianticproject/ingress/shared/plext/c;

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/shared/portal/PortalImage;->voteCount:I

    .line 146
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/shared/plext/c;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/portal/PortalImage;->attributionMarkup:Lcom/nianticproject/ingress/shared/plext/c;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/portal/PortalImage;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/portal/PortalImage;->portalImageGuid:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/nianticproject/ingress/shared/portal/PortalImage;->voteCount:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    if-ne p0, p1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 106
    goto :goto_0

    .line 108
    :cond_2
    instance-of v2, p1, Lcom/nianticproject/ingress/shared/portal/PortalImage;

    if-nez v2, :cond_3

    move v0, v1

    .line 109
    goto :goto_0

    .line 111
    :cond_3
    check-cast p1, Lcom/nianticproject/ingress/shared/portal/PortalImage;

    .line 112
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/portal/PortalImage;->attributionMarkup:Lcom/nianticproject/ingress/shared/plext/c;

    if-nez v2, :cond_4

    .line 113
    iget-object v2, p1, Lcom/nianticproject/ingress/shared/portal/PortalImage;->attributionMarkup:Lcom/nianticproject/ingress/shared/plext/c;

    if-eqz v2, :cond_5

    move v0, v1

    .line 114
    goto :goto_0

    .line 116
    :cond_4
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/portal/PortalImage;->attributionMarkup:Lcom/nianticproject/ingress/shared/plext/c;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/portal/PortalImage;->attributionMarkup:Lcom/nianticproject/ingress/shared/plext/c;

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/shared/plext/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 117
    goto :goto_0

    .line 119
    :cond_5
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/portal/PortalImage;->imageUrl:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 120
    iget-object v2, p1, Lcom/nianticproject/ingress/shared/portal/PortalImage;->imageUrl:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    .line 121
    goto :goto_0

    .line 123
    :cond_6
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/portal/PortalImage;->imageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/portal/PortalImage;->imageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 124
    goto :goto_0

    .line 126
    :cond_7
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/portal/PortalImage;->portalImageGuid:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 127
    iget-object v2, p1, Lcom/nianticproject/ingress/shared/portal/PortalImage;->portalImageGuid:Ljava/lang/String;

    if-eqz v2, :cond_9

    move v0, v1

    .line 128
    goto :goto_0

    .line 130
    :cond_8
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/portal/PortalImage;->portalImageGuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/portal/PortalImage;->portalImageGuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    .line 131
    goto :goto_0

    .line 133
    :cond_9
    iget v2, p0, Lcom/nianticproject/ingress/shared/portal/PortalImage;->voteCount:I

    iget v3, p1, Lcom/nianticproject/ingress/shared/portal/PortalImage;->voteCount:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 134
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/portal/PortalImage;->attributionMarkup:Lcom/nianticproject/ingress/shared/plext/c;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 94
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nianticproject/ingress/shared/portal/PortalImage;->imageUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 95
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/portal/PortalImage;->portalImageGuid:Ljava/lang/String;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 96
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nianticproject/ingress/shared/portal/PortalImage;->voteCount:I

    add-int/2addr v0, v1

    .line 97
    return v0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/portal/PortalImage;->attributionMarkup:Lcom/nianticproject/ingress/shared/plext/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/plext/c;->hashCode()I

    move-result v0

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/portal/PortalImage;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/nianticproject/ingress/shared/portal/PortalImage;->portalImageGuid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PortalImage [portalImageGuid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/portal/PortalImage;->portalImageGuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/portal/PortalImage;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", attributionMarkup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/portal/PortalImage;->attributionMarkup:Lcom/nianticproject/ingress/shared/plext/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", voteCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/shared/portal/PortalImage;->voteCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

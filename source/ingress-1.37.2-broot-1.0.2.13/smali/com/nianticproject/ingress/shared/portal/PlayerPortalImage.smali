.class public final Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/shared/portal/a;


# instance fields
.field private final attributionMarkup:Lcom/nianticproject/ingress/shared/plext/c;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final hasVoteByPlayer:Z
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
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->portalImageGuid:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->imageUrl:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->attributionMarkup:Lcom/nianticproject/ingress/shared/plext/c;

    .line 101
    iput-boolean v1, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->hasVoteByPlayer:Z

    .line 102
    iput v1, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->voteCount:I

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/nianticproject/ingress/shared/plext/c;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->portalImageGuid:Ljava/lang/String;

    .line 50
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->imageUrl:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->attributionMarkup:Lcom/nianticproject/ingress/shared/plext/c;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->hasVoteByPlayer:Z

    .line 53
    iput p4, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->voteCount:I

    .line 54
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/shared/plext/c;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->attributionMarkup:Lcom/nianticproject/ingress/shared/plext/c;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->portalImageGuid:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->voteCount:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 119
    if-ne p0, p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 120
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 122
    :cond_3
    check-cast p1, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;

    .line 123
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->attributionMarkup:Lcom/nianticproject/ingress/shared/plext/c;

    if-nez v2, :cond_4

    .line 124
    iget-object v2, p1, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->attributionMarkup:Lcom/nianticproject/ingress/shared/plext/c;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 125
    :cond_4
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->attributionMarkup:Lcom/nianticproject/ingress/shared/plext/c;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->attributionMarkup:Lcom/nianticproject/ingress/shared/plext/c;

    invoke-virtual {v2, v3}, Lcom/nianticproject/ingress/shared/plext/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 126
    :cond_5
    iget-boolean v2, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->hasVoteByPlayer:Z

    iget-boolean v3, p1, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->hasVoteByPlayer:Z

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 127
    :cond_6
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->imageUrl:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 128
    iget-object v2, p1, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->imageUrl:Ljava/lang/String;

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_0

    .line 129
    :cond_7
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->imageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->imageUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    .line 130
    :cond_8
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->portalImageGuid:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 131
    iget-object v2, p1, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->portalImageGuid:Ljava/lang/String;

    if-eqz v2, :cond_a

    move v0, v1

    goto :goto_0

    .line 132
    :cond_9
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->portalImageGuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->portalImageGuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    goto :goto_0

    .line 133
    :cond_a
    iget v2, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->voteCount:I

    iget v3, p1, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->voteCount:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->hasVoteByPlayer:Z

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->attributionMarkup:Lcom/nianticproject/ingress/shared/plext/c;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 110
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->hasVoteByPlayer:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v2

    .line 111
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->imageUrl:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 112
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->portalImageGuid:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 113
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->voteCount:I

    add-int/2addr v0, v1

    .line 114
    return v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->attributionMarkup:Lcom/nianticproject/ingress/shared/plext/c;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/shared/plext/c;->hashCode()I

    move-result v0

    goto :goto_0

    .line 110
    :cond_1
    const/16 v0, 0x4d5

    goto :goto_1

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 112
    :cond_3
    iget-object v1, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->portalImageGuid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PortalImage [portalImageGuid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->portalImageGuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", attributionMarkup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->attributionMarkup:Lcom/nianticproject/ingress/shared/plext/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", hasVoteByPlayer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->hasVoteByPlayer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", voteCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/shared/portal/PlayerPortalImage;->voteCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

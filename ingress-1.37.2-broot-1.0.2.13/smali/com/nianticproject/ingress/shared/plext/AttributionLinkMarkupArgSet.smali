.class public final Lcom/nianticproject/ingress/shared/plext/AttributionLinkMarkupArgSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/shared/plext/a;


# instance fields
.field private final attributionLink:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final plain:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/plext/AttributionLinkMarkupArgSet;->plain:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/plext/AttributionLinkMarkupArgSet;->attributionLink:Ljava/lang/String;

    .line 105
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/plext/AttributionLinkMarkupArgSet;->attributionLink:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/plext/AttributionLinkMarkupArgSet;->plain:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    if-ne p0, p1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 66
    goto :goto_0

    .line 68
    :cond_2
    instance-of v2, p1, Lcom/nianticproject/ingress/shared/plext/AttributionLinkMarkupArgSet;

    if-nez v2, :cond_3

    move v0, v1

    .line 69
    goto :goto_0

    .line 71
    :cond_3
    check-cast p1, Lcom/nianticproject/ingress/shared/plext/AttributionLinkMarkupArgSet;

    .line 72
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/plext/AttributionLinkMarkupArgSet;->attributionLink:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 73
    iget-object v2, p1, Lcom/nianticproject/ingress/shared/plext/AttributionLinkMarkupArgSet;->attributionLink:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 74
    goto :goto_0

    .line 76
    :cond_4
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/plext/AttributionLinkMarkupArgSet;->attributionLink:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/plext/AttributionLinkMarkupArgSet;->attributionLink:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 77
    goto :goto_0

    .line 79
    :cond_5
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/plext/AttributionLinkMarkupArgSet;->plain:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 80
    iget-object v2, p1, Lcom/nianticproject/ingress/shared/plext/AttributionLinkMarkupArgSet;->plain:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 81
    goto :goto_0

    .line 83
    :cond_6
    iget-object v2, p0, Lcom/nianticproject/ingress/shared/plext/AttributionLinkMarkupArgSet;->plain:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/shared/plext/AttributionLinkMarkupArgSet;->plain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 84
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/plext/AttributionLinkMarkupArgSet;->attributionLink:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 56
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nianticproject/ingress/shared/plext/AttributionLinkMarkupArgSet;->plain:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 57
    return v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/plext/AttributionLinkMarkupArgSet;->attributionLink:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/nianticproject/ingress/shared/plext/AttributionLinkMarkupArgSet;->plain:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "plain: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/plext/AttributionLinkMarkupArgSet;->plain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", attributionLink: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/plext/AttributionLinkMarkupArgSet;->attributionLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

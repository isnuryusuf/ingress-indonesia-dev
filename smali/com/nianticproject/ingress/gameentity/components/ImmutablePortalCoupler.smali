.class public final Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/ImageByUrl;
.implements Lcom/nianticproject/ingress/gameentity/components/PortalCoupler;
.implements Lcom/nianticproject/ingress/shared/s;


# instance fields
.field private transient dirty:Z

.field private final portalAddress:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final portalGuid:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final portalImageUrl:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final portalLocation:Lcom/google/a/d/u;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final portalTitle:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalGuid:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalImageUrl:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalLocation:Lcom/google/a/d/u;

    .line 63
    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalTitle:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "[Unknown Location]"

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalAddress:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->dirty:Z

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/a/d/u;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalGuid:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalLocation:Lcom/google/a/d/u;

    .line 52
    iput-object p3, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalImageUrl:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalTitle:Ljava/lang/String;

    .line 54
    invoke-static {p5}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalAddress:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->dirty:Z

    .line 56
    return-void
.end method


# virtual methods
.method public final approxEquals(Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 133
    if-nez p1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalGuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalGuid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalTitle:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalImageUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalImageUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalLocation:Lcom/google/a/d/u;

    iget-object v3, p1, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalLocation:Lcom/google/a/d/u;

    if-nez v2, :cond_3

    if-nez v3, :cond_2

    move v2, v1

    :goto_1
    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    move v2, v0

    goto :goto_1

    :cond_4
    const-wide v4, 0x3e55798ee2308c3aL

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/a/d/u;->a(Lcom/google/a/d/u;D)Z

    move-result v2

    goto :goto_1
.end method

.method public final getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getPortalAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getPortalGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalGuid:Ljava/lang/String;

    return-object v0
.end method

.method public final getPortalLocation()Lcom/google/a/d/u;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalLocation:Lcom/google/a/d/u;

    return-object v0
.end method

.method public final getPortalTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final isDirty()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->dirty:Z

    return v0
.end method

.method public final setClean()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->dirty:Z

    .line 120
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ImmutablePortalCoupler [portalGuid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalGuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", portalLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalLocation:Lcom/google/a/d/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", portalImageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", portalTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", portalAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->portalAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", dirty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/gameentity/components/ImmutablePortalCoupler;->dirty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

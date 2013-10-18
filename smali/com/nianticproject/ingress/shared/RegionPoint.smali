.class public Lcom/nianticproject/ingress/shared/RegionPoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/nianticproject/ingress/shared/RegionPoint;",
        ">;"
    }
.end annotation


# instance fields
.field private final guid:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final location:Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/RegionPoint;->guid:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/RegionPoint;->location:Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    .line 44
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/components/LocationE6;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/RegionPoint;->guid:Ljava/lang/String;

    .line 48
    invoke-static {p2}, Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;->copyOf(Lcom/nianticproject/ingress/gameentity/components/LocationE6;)Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/RegionPoint;->location:Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    .line 49
    return-void
.end method

.method public static a(Lcom/nianticproject/ingress/gameentity/f;)Lcom/nianticproject/ingress/shared/RegionPoint;
    .locals 3
    .parameter

    .prologue
    .line 34
    const-class v0, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    invoke-interface {p0, v0}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/gameentity/components/LocationE6;

    .line 35
    const-string/jumbo v1, "Entity does not have a location component"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v1, Lcom/nianticproject/ingress/shared/RegionPoint;

    invoke-interface {p0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/nianticproject/ingress/shared/RegionPoint;-><init>(Ljava/lang/String;Lcom/nianticproject/ingress/gameentity/components/LocationE6;)V

    return-object v1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/RegionPoint;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/nianticproject/ingress/gameentity/components/LocationE6;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/RegionPoint;->location:Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2
    .parameter

    .prologue
    .line 21
    check-cast p1, Lcom/nianticproject/ingress/shared/RegionPoint;

    iget-object v0, p0, Lcom/nianticproject/ingress/shared/RegionPoint;->guid:Ljava/lang/String;

    iget-object v1, p1, Lcom/nianticproject/ingress/shared/RegionPoint;->guid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 66
    if-ne p0, p1, :cond_1

    .line 67
    const/4 v0, 0x1

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    if-eqz p1, :cond_0

    .line 72
    instance-of v1, p1, Lcom/nianticproject/ingress/shared/RegionPoint;

    if-eqz v1, :cond_0

    .line 75
    check-cast p1, Lcom/nianticproject/ingress/shared/RegionPoint;

    .line 76
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/RegionPoint;->guid:Ljava/lang/String;

    iget-object v1, p1, Lcom/nianticproject/ingress/shared/RegionPoint;->guid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/RegionPoint;->guid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/RegionPoint;->guid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/shared/RegionPoint;->location:Lcom/nianticproject/ingress/gameentity/components/ImmutableLocationE6;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

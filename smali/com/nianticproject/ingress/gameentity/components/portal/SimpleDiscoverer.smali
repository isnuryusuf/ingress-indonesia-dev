.class public Lcom/nianticproject/ingress/gameentity/components/portal/SimpleDiscoverer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/portal/Discoverer;


# instance fields
.field private final playerMarkupArgSet:Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleDiscoverer;->playerMarkupArgSet:Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleDiscoverer;->playerMarkupArgSet:Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;

    .line 28
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 43
    instance-of v0, p1, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleDiscoverer;

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0

    .line 46
    :cond_0
    check-cast p1, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleDiscoverer;

    .line 47
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleDiscoverer;->playerMarkupArgSet:Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;

    iget-object v1, p1, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleDiscoverer;->playerMarkupArgSet:Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;

    invoke-static {v0, v1}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDiscoverer()Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleDiscoverer;->playerMarkupArgSet:Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleDiscoverer;->playerMarkupArgSet:Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 57
    const-string/jumbo v0, "playerMarkupArgSet: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/gameentity/components/portal/SimpleDiscoverer;->playerMarkupArgSet:Lcom/nianticproject/ingress/shared/plext/PlayerMarkupArgSet;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

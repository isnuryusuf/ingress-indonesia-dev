.class public Lcom/nianticproject/ingress/server/FindNearbyPortalsFail;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final continuationToken:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final failureKind:Lcom/nianticproject/ingress/server/a;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final partialResult:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
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

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/nianticproject/ingress/server/FindNearbyPortalsFail;->failureKind:Lcom/nianticproject/ingress/server/a;

    .line 45
    iput-object v0, p0, Lcom/nianticproject/ingress/server/FindNearbyPortalsFail;->continuationToken:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/nianticproject/ingress/server/FindNearbyPortalsFail;->partialResult:Ljava/util/Set;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/server/a;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/nianticproject/ingress/server/a;->a:Lcom/nianticproject/ingress/server/a;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 52
    iput-object p1, p0, Lcom/nianticproject/ingress/server/FindNearbyPortalsFail;->failureKind:Lcom/nianticproject/ingress/server/a;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/server/FindNearbyPortalsFail;->continuationToken:Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/google/a/c/jc;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/server/FindNearbyPortalsFail;->partialResult:Ljava/util/Set;

    .line 55
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nianticproject/ingress/server/FindNearbyPortalsFail;->failureKind:Lcom/nianticproject/ingress/server/a;

    sget-object v1, Lcom/nianticproject/ingress/server/a;->a:Lcom/nianticproject/ingress/server/a;

    if-eq v0, v1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "This method is only applicable for TIMEOUT failures."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/server/FindNearbyPortalsFail;->continuationToken:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/nianticproject/ingress/server/a;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nianticproject/ingress/server/FindNearbyPortalsFail;->failureKind:Lcom/nianticproject/ingress/server/a;

    return-object v0
.end method

.method public final c()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/server/FindNearbyPortalsFail;->failureKind:Lcom/nianticproject/ingress/server/a;

    sget-object v1, Lcom/nianticproject/ingress/server/a;->a:Lcom/nianticproject/ingress/server/a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 95
    iget-object v0, p0, Lcom/nianticproject/ingress/server/FindNearbyPortalsFail;->partialResult:Ljava/util/Set;

    return-object v0

    .line 94
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    const-string/jumbo v0, "kind: %s, token: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/server/FindNearbyPortalsFail;->failureKind:Lcom/nianticproject/ingress/server/a;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/server/FindNearbyPortalsFail;->continuationToken:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

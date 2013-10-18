.class final Lcom/nianticproject/ingress/common/missions/a/s;
.super Lcom/nianticproject/ingress/common/ui/d/e;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/a/r;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/a/r;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/a/s;->a:Lcom/nianticproject/ingress/common/missions/a/r;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/d/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final tap(FFIII)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/s;->a:Lcom/nianticproject/ingress/common/missions/a/r;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/a/r;->a(Lcom/nianticproject/ingress/common/missions/a/r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/missions/cn;

    .line 82
    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/a/s;->a:Lcom/nianticproject/ingress/common/missions/a/r;

    invoke-virtual {v2, p1, p2}, Lcom/nianticproject/ingress/common/missions/a/r;->a(FF)Lcom/google/a/d/u;

    move-result-object v2

    .line 83
    if-eqz v2, :cond_0

    .line 84
    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/common/missions/cn;->a(Lcom/google/a/d/u;)V

    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/a/s;->a:Lcom/nianticproject/ingress/common/missions/a/r;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/a/r;->a(Lcom/nianticproject/ingress/common/missions/a/r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

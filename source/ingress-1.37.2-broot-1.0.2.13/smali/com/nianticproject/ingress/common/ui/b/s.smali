.class public abstract Lcom/nianticproject/ingress/common/ui/b/s;
.super Lcom/nianticproject/ingress/common/ui/b/b;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/ui/ad;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/ui/ac;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public varargs constructor <init>(Lcom/nianticproject/ingress/common/ui/ad;[Lcom/nianticproject/ingress/common/ui/ac;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/b/b;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/b/s;->c:Z

    .line 27
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/ad;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/s;->a:Lcom/nianticproject/ingress/common/ui/ad;

    .line 28
    invoke-static {p2}, Lcom/google/a/c/eq;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/s;->b:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/ui/ac;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/s;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/b/s;->c:Z

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/s;->a:Lcom/nianticproject/ingress/common/ui/ad;

    invoke-virtual {v0, p1}, Lcom/nianticproject/ingress/common/ui/ad;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 36
    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0}, Lcom/nianticproject/ingress/common/ui/b/b;->c()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/b/s;->c:Z

    .line 42
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/s;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/ac;

    .line 43
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/b/s;->a:Lcom/nianticproject/ingress/common/ui/ad;

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/common/ui/ad;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/b/s;->c:Z

    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/b/s;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/ui/ac;

    .line 51
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/b/s;->a:Lcom/nianticproject/ingress/common/ui/ad;

    invoke-virtual {v2, v0}, Lcom/nianticproject/ingress/common/ui/ad;->b(Lcom/nianticproject/ingress/common/ui/ac;)Z

    goto :goto_0

    .line 53
    :cond_0
    invoke-super {p0}, Lcom/nianticproject/ingress/common/ui/b/b;->f()V

    .line 54
    return-void
.end method

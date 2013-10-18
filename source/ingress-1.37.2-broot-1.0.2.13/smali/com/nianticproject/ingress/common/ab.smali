.class public final Lcom/nianticproject/ingress/common/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/aa;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/aa;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ab;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/aa;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ab;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ab;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ab;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 49
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/aa;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/aa;->b()V

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public final b(Lcom/nianticproject/ingress/common/aa;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ab;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 25
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ab;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/ab;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 31
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/aa;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/aa;->c()V

    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ab;->b:Z

    .line 35
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ab;->b:Z

    return v0
.end method

.method public final f_()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ab;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/aa;

    .line 40
    invoke-interface {v0}, Lcom/nianticproject/ingress/common/aa;->f_()V

    goto :goto_0

    .line 42
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ab;->b:Z

    .line 43
    return-void
.end method

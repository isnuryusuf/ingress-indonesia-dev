.class public final Lcom/nianticproject/ingress/common/j/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/w/ab;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nianticproject/ingress/common/w/ab",
            "<",
            "Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/nianticproject/ingress/common/j/u;",
            "Lcom/nianticproject/ingress/common/j/x;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/v;->b:Ljava/util/Map;

    .line 37
    new-instance v0, Lcom/nianticproject/ingress/common/j/w;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/j/w;-><init>(Lcom/nianticproject/ingress/common/j/v;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/v;->a:Lcom/nianticproject/ingress/common/w/ab;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/j/v;)Lcom/nianticproject/ingress/common/w/ab;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/v;->a:Lcom/nianticproject/ingress/common/w/ab;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/j/v;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/v;->b:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/j/u;)Lcom/nianticproject/ingress/common/j/d;
    .locals 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/v;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/x;

    .line 65
    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/nianticproject/ingress/common/j/x;

    invoke-direct {v0, p0, p1}, Lcom/nianticproject/ingress/common/j/x;-><init>(Lcom/nianticproject/ingress/common/j/v;Lcom/nianticproject/ingress/common/j/u;)V

    .line 67
    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/v;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/x;->e()V

    .line 71
    return-object v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/v;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/x;

    .line 59
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/x;->g()V

    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method public final dispose()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/v;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/x;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/x;->f()V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/v;->a:Lcom/nianticproject/ingress/common/w/ab;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/ab;->c()V

    .line 88
    return-void
.end method

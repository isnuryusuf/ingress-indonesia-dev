.class public abstract Lcom/google/a/c/ec;
.super Lcom/google/a/c/ah;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/ah",
        "<TR;TC;TV;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/a/c/ec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/ec",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 49
    new-instance v0, Lcom/google/a/c/kg;

    invoke-static {}, Lcom/google/a/c/dc;->d()Lcom/google/a/c/dc;

    move-result-object v1

    invoke-static {}, Lcom/google/a/c/du;->g()Lcom/google/a/c/du;

    move-result-object v2

    invoke-static {}, Lcom/google/a/c/du;->g()Lcom/google/a/c/du;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/a/c/kg;-><init>(Lcom/google/a/c/dc;Lcom/google/a/c/du;Lcom/google/a/c/du;)V

    sput-object v0, Lcom/google/a/c/ec;->a:Lcom/google/a/c/ec;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/google/a/c/ah;-><init>()V

    return-void
.end method

.method public static final a(Lcom/google/a/c/kr;)Lcom/google/a/c/ec;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/c/kr",
            "<+TR;+TC;+TV;>;)",
            "Lcom/google/a/c/ec",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 82
    instance-of v0, p0, Lcom/google/a/c/ec;

    if-eqz v0, :cond_0

    .line 84
    check-cast p0, Lcom/google/a/c/ec;

    .line 109
    :goto_0
    return-object p0

    .line 88
    :cond_0
    invoke-interface {p0}, Lcom/google/a/c/kr;->l()I

    move-result v0

    .line 89
    packed-switch v0, :pswitch_data_0

    .line 98
    invoke-static {}, Lcom/google/a/c/du;->h()Lcom/google/a/c/dv;

    move-result-object v1

    .line 101
    invoke-interface {p0}, Lcom/google/a/c/kr;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/ks;

    .line 106
    invoke-interface {v0}, Lcom/google/a/c/ks;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/a/c/ks;->b()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/a/c/ks;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/google/a/c/ec;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ks;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/a/c/dv;->c(Ljava/lang/Object;)Lcom/google/a/c/dv;

    goto :goto_1

    .line 91
    :pswitch_0
    sget-object p0, Lcom/google/a/c/ec;->a:Lcom/google/a/c/ec;

    goto :goto_0

    .line 93
    :pswitch_1
    invoke-interface {p0}, Lcom/google/a/c/kr;->d()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/ee;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/ks;

    .line 95
    invoke-interface {v0}, Lcom/google/a/c/ks;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/a/c/ks;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/a/c/ks;->c()Ljava/lang/Object;

    move-result-object v0

    new-instance p0, Lcom/google/a/c/jm;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/a/c/jm;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v1}, Lcom/google/a/c/dv;->a()Lcom/google/a/c/du;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/iu;->a(Ljava/lang/Iterable;)Lcom/google/a/c/iu;

    move-result-object p0

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ks;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TR;TC;TV;)",
            "Lcom/google/a/c/ks",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/a/c/kt;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/a/c/ks;

    move-result-object v0

    return-object v0
.end method

.method public static final n()Lcom/google/a/c/ec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/a/c/ec",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lcom/google/a/c/ec;->a:Lcom/google/a/c/ec;

    return-object v0
.end method

.method public static final o()Lcom/google/a/c/ed;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/a/c/ed",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Lcom/google/a/c/ed;

    invoke-direct {v0}, Lcom/google/a/c/ed;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 352
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final synthetic a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/a/c/ec;->k()Lcom/google/a/c/dh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/dh;->g()Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/a/c/ah;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 327
    invoke-virtual {p0, p1, p2}, Lcom/google/a/c/ec;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Lcom/google/a/c/ah;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b()Z
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/google/a/c/ah;->b()Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 332
    invoke-super {p0}, Lcom/google/a/c/ah;->g()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/ct;

    invoke-virtual {v0, p1}, Lcom/google/a/c/ct;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final synthetic c(Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .parameter

    .prologue
    .line 46
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/a/c/ec;->k()Lcom/google/a/c/dh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/a/c/dh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/dh;

    invoke-static {}, Lcom/google/a/c/dh;->i()Lcom/google/a/c/dh;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/a/ag;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/dh;

    return-object v0
.end method

.method public final c()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 342
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final bridge synthetic d()Ljava/util/Set;
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/google/a/c/ah;->d()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/du;

    return-object v0
.end method

.method synthetic e()Ljava/util/Set;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/a/c/ec;->p()Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/a/c/ah;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final synthetic f()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final bridge synthetic g()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/google/a/c/ah;->g()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/ct;

    return-object v0
.end method

.method synthetic h()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/a/c/ec;->q()Lcom/google/a/c/ct;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/google/a/c/ah;->hashCode()I

    move-result v0

    return v0
.end method

.method final i()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 274
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public abstract j()Lcom/google/a/c/dh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dh",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation
.end method

.method public abstract k()Lcom/google/a/c/dh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dh",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation
.end method

.method public synthetic m()Ljava/util/Map;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/a/c/ec;->k()Lcom/google/a/c/dh;

    move-result-object v0

    return-object v0
.end method

.method abstract p()Lcom/google/a/c/du;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/du",
            "<",
            "Lcom/google/a/c/ks",
            "<TR;TC;TV;>;>;"
        }
    .end annotation
.end method

.method abstract q()Lcom/google/a/c/ct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/ct",
            "<TV;>;"
        }
    .end annotation
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lcom/google/a/c/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

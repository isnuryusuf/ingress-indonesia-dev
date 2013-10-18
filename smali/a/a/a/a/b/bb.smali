.class final La/a/a/a/b/bb;
.super La/a/a/a/b/bc;
.source "SourceFile"

# interfaces
.implements La/a/a/a/c/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/a/a/b/ap",
        "<TV;>.a/a/a/a/b/ax.a/a/a/a/b/bc;",
        "La/a/a/a/c/o",
        "<",
        "La/a/a/a/b/bj",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:La/a/a/a/b/ax;


# direct methods
.method constructor <init>(La/a/a/a/b/ax;)V
    .locals 0
    .parameter

    .prologue
    .line 1588
    iput-object p1, p0, La/a/a/a/b/bb;->a:La/a/a/a/b/ax;

    invoke-direct {p0, p1}, La/a/a/a/b/bc;-><init>(La/a/a/a/b/ax;)V

    return-void
.end method


# virtual methods
.method public final synthetic add(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 1587
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1587
    invoke-virtual {p0}, La/a/a/a/b/bb;->e()La/a/a/a/b/at;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1587
    invoke-virtual {p0}, La/a/a/a/b/bb;->f()La/a/a/a/b/at;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic set(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 1587
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

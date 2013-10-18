.class final La/a/a/a/b/au;
.super La/a/a/a/b/bf;
.source "SourceFile"

# interfaces
.implements La/a/a/a/c/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/a/a/b/ap",
        "<TV;>.a/a/a/a/b/bf;",
        "La/a/a/a/c/o",
        "<",
        "La/a/a/a/b/bj",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:La/a/a/a/b/ap;


# direct methods
.method constructor <init>(La/a/a/a/b/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 1166
    iput-object p1, p0, La/a/a/a/b/au;->a:La/a/a/a/b/ap;

    invoke-direct {p0, p1}, La/a/a/a/b/bf;-><init>(La/a/a/a/b/ap;)V

    return-void
.end method


# virtual methods
.method public final synthetic add(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 1165
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1165
    invoke-virtual {p0}, La/a/a/a/b/au;->e()La/a/a/a/b/at;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1165
    invoke-virtual {p0}, La/a/a/a/b/au;->f()La/a/a/a/b/at;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic set(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 1165
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

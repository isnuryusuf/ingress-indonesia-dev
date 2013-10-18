.class final La/a/a/a/b/bg;
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
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:La/a/a/a/b/ap;


# direct methods
.method private constructor <init>(La/a/a/a/b/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 1257
    iput-object p1, p0, La/a/a/a/b/bg;->a:La/a/a/a/b/ap;

    invoke-direct {p0, p1}, La/a/a/a/b/bf;-><init>(La/a/a/a/b/ap;)V

    return-void
.end method

.method synthetic constructor <init>(La/a/a/a/b/ap;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1257
    invoke-direct {p0, p1}, La/a/a/a/b/bg;-><init>(La/a/a/a/b/ap;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 1261
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1258
    invoke-virtual {p0}, La/a/a/a/b/bg;->e()La/a/a/a/b/at;

    move-result-object v0

    iget-object v0, v0, La/a/a/a/b/at;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1259
    invoke-virtual {p0}, La/a/a/a/b/bg;->f()La/a/a/a/b/at;

    move-result-object v0

    iget-object v0, v0, La/a/a/a/b/at;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 1260
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

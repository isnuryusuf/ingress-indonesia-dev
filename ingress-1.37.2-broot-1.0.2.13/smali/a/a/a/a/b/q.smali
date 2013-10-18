.class public final La/a/a/a/b/q;
.super La/a/a/a/c/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/a/a/c/b",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:La/a/a/a/b/n;


# direct methods
.method protected constructor <init>(La/a/a/a/b/n;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, La/a/a/a/b/q;->a:La/a/a/a/b/n;

    invoke-direct {p0}, La/a/a/a/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()La/a/a/a/c/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/c/l",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, La/a/a/a/b/r;

    iget-object v1, p0, La/a/a/a/b/q;->a:La/a/a/a/b/n;

    invoke-virtual {v1}, La/a/a/a/b/n;->g()La/a/a/a/c/q;

    move-result-object v1

    invoke-interface {v1}, La/a/a/a/c/q;->b()La/a/a/a/c/i;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/a/b/r;-><init>(La/a/a/a/c/i;)V

    return-object v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, La/a/a/a/b/q;->a:La/a/a/a/b/n;

    invoke-virtual {v0}, La/a/a/a/b/n;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, La/a/a/a/b/q;->a:La/a/a/a/b/n;

    invoke-virtual {v0, p1}, La/a/a/a/b/n;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, La/a/a/a/b/q;->a()La/a/a/a/c/l;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, La/a/a/a/b/q;->a:La/a/a/a/b/n;

    invoke-virtual {v0}, La/a/a/a/b/n;->size()I

    move-result v0

    return v0
.end method

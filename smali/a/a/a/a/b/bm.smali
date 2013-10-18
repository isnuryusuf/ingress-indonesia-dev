.class final La/a/a/a/b/bm;
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
.field final synthetic a:La/a/a/a/b/bl;


# direct methods
.method constructor <init>(La/a/a/a/b/bl;)V
    .locals 0
    .parameter

    .prologue
    .line 550
    iput-object p1, p0, La/a/a/a/b/bm;->a:La/a/a/a/b/bl;

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
    .line 552
    new-instance v0, La/a/a/a/b/bu;

    iget-object v1, p0, La/a/a/a/b/bm;->a:La/a/a/a/b/bl;

    invoke-direct {v0, v1}, La/a/a/a/b/bu;-><init>(La/a/a/a/b/bl;)V

    return-object v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, La/a/a/a/b/bm;->a:La/a/a/a/b/bl;

    invoke-virtual {v0}, La/a/a/a/b/bl;->clear()V

    .line 562
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 558
    iget-object v0, p0, La/a/a/a/b/bm;->a:La/a/a/a/b/bl;

    invoke-virtual {v0, p1}, La/a/a/a/b/bl;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 550
    invoke-virtual {p0}, La/a/a/a/b/bm;->a()La/a/a/a/c/l;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, La/a/a/a/b/bm;->a:La/a/a/a/b/bl;

    iget v0, v0, La/a/a/a/b/bl;->i:I

    return v0
.end method

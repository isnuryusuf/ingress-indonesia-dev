.class final La/a/a/a/b/az;
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
.field final synthetic a:La/a/a/a/b/ax;


# direct methods
.method constructor <init>(La/a/a/a/b/ax;)V
    .locals 0
    .parameter

    .prologue
    .line 1410
    iput-object p1, p0, La/a/a/a/b/az;->a:La/a/a/a/b/ax;

    invoke-direct {p0}, La/a/a/a/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()La/a/a/a/c/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/c/l",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1412
    new-instance v0, La/a/a/a/b/be;

    iget-object v1, p0, La/a/a/a/b/az;->a:La/a/a/a/b/ax;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/a/a/a/b/be;-><init>(La/a/a/a/b/ax;B)V

    return-object v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 1421
    iget-object v0, p0, La/a/a/a/b/az;->a:La/a/a/a/b/ax;

    invoke-virtual {v0}, La/a/a/a/b/ax;->clear()V

    .line 1422
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1415
    iget-object v0, p0, La/a/a/a/b/az;->a:La/a/a/a/b/ax;

    invoke-virtual {v0, p1}, La/a/a/a/b/ax;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1410
    invoke-virtual {p0}, La/a/a/a/b/az;->a()La/a/a/a/c/l;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 1418
    iget-object v0, p0, La/a/a/a/b/az;->a:La/a/a/a/b/ax;

    invoke-virtual {v0}, La/a/a/a/b/ax;->size()I

    move-result v0

    return v0
.end method

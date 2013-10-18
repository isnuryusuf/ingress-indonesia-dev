.class final La/a/a/a/b/ah;
.super La/a/a/a/b/t;
.source "SourceFile"


# instance fields
.field final synthetic a:La/a/a/a/b/ag;


# direct methods
.method constructor <init>(La/a/a/a/b/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 586
    iput-object p1, p0, La/a/a/a/b/ah;->a:La/a/a/a/b/ag;

    invoke-direct {p0}, La/a/a/a/b/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()La/a/a/a/b/ce;
    .locals 2

    .prologue
    .line 588
    new-instance v0, La/a/a/a/b/ao;

    iget-object v1, p0, La/a/a/a/b/ah;->a:La/a/a/a/b/ag;

    invoke-direct {v0, v1}, La/a/a/a/b/ao;-><init>(La/a/a/a/b/ag;)V

    return-object v0
.end method

.method public final a(J)Z
    .locals 1
    .parameter

    .prologue
    .line 594
    iget-object v0, p0, La/a/a/a/b/ah;->a:La/a/a/a/b/ag;

    invoke-virtual {v0, p1, p2}, La/a/a/a/b/ag;->b(J)Z

    move-result v0

    return v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, La/a/a/a/b/ah;->a:La/a/a/a/b/ag;

    invoke-virtual {v0}, La/a/a/a/b/ag;->clear()V

    .line 598
    return-void
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 586
    invoke-virtual {p0}, La/a/a/a/b/ah;->a()La/a/a/a/b/ce;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, La/a/a/a/b/ah;->a:La/a/a/a/b/ag;

    iget v0, v0, La/a/a/a/b/ag;->i:I

    return v0
.end method

.class final La/a/a/a/b/ak;
.super La/a/a/a/b/aa;
.source "SourceFile"


# instance fields
.field final synthetic a:La/a/a/a/b/ag;


# direct methods
.method private constructor <init>(La/a/a/a/b/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, La/a/a/a/b/ak;->a:La/a/a/a/b/ag;

    invoke-direct {p0}, La/a/a/a/b/aa;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La/a/a/a/b/ag;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 551
    invoke-direct {p0, p1}, La/a/a/a/b/ak;-><init>(La/a/a/a/b/ag;)V

    return-void
.end method


# virtual methods
.method public final a()La/a/a/a/b/ce;
    .locals 2

    .prologue
    .line 553
    new-instance v0, La/a/a/a/b/aj;

    iget-object v1, p0, La/a/a/a/b/ak;->a:La/a/a/a/b/ag;

    invoke-direct {v0, v1}, La/a/a/a/b/aj;-><init>(La/a/a/a/b/ag;)V

    return-object v0
.end method

.method public final a(J)Z
    .locals 1
    .parameter

    .prologue
    .line 559
    iget-object v0, p0, La/a/a/a/b/ak;->a:La/a/a/a/b/ag;

    invoke-virtual {v0, p1, p2}, La/a/a/a/b/ag;->c(J)Z

    move-result v0

    return v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, La/a/a/a/b/ak;->a:La/a/a/a/b/ag;

    invoke-virtual {v0}, La/a/a/a/b/ag;->clear()V

    .line 568
    return-void
.end method

.method public final f(J)Z
    .locals 2
    .parameter

    .prologue
    .line 562
    iget-object v0, p0, La/a/a/a/b/ak;->a:La/a/a/a/b/ag;

    iget v0, v0, La/a/a/a/b/ag;->i:I

    .line 563
    iget-object v1, p0, La/a/a/a/b/ak;->a:La/a/a/a/b/ag;

    invoke-virtual {v1, p1, p2}, La/a/a/a/b/ag;->a(J)J

    .line 564
    iget-object v1, p0, La/a/a/a/b/ak;->a:La/a/a/a/b/ag;

    iget v1, v1, La/a/a/a/b/ag;->i:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0}, La/a/a/a/b/ak;->a()La/a/a/a/b/ce;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, La/a/a/a/b/ak;->a:La/a/a/a/b/ag;

    iget v0, v0, La/a/a/a/b/ag;->i:I

    return v0
.end method

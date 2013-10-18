.class final La/a/a/a/b/bq;
.super La/a/a/a/b/aa;
.source "SourceFile"


# instance fields
.field final synthetic a:La/a/a/a/b/bl;


# direct methods
.method private constructor <init>(La/a/a/a/b/bl;)V
    .locals 0
    .parameter

    .prologue
    .line 516
    iput-object p1, p0, La/a/a/a/b/bq;->a:La/a/a/a/b/bl;

    invoke-direct {p0}, La/a/a/a/b/aa;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La/a/a/a/b/bl;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 516
    invoke-direct {p0, p1}, La/a/a/a/b/bq;-><init>(La/a/a/a/b/bl;)V

    return-void
.end method


# virtual methods
.method public final a()La/a/a/a/b/ce;
    .locals 2

    .prologue
    .line 518
    new-instance v0, La/a/a/a/b/bp;

    iget-object v1, p0, La/a/a/a/b/bq;->a:La/a/a/a/b/bl;

    invoke-direct {v0, v1}, La/a/a/a/b/bp;-><init>(La/a/a/a/b/bl;)V

    return-object v0
.end method

.method public final a(J)Z
    .locals 1
    .parameter

    .prologue
    .line 524
    iget-object v0, p0, La/a/a/a/b/bq;->a:La/a/a/a/b/bl;

    invoke-virtual {v0, p1, p2}, La/a/a/a/b/bl;->b(J)Z

    move-result v0

    return v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, La/a/a/a/b/bq;->a:La/a/a/a/b/bl;

    invoke-virtual {v0}, La/a/a/a/b/bl;->clear()V

    .line 533
    return-void
.end method

.method public final f(J)Z
    .locals 2
    .parameter

    .prologue
    .line 527
    iget-object v0, p0, La/a/a/a/b/bq;->a:La/a/a/a/b/bl;

    iget v0, v0, La/a/a/a/b/bl;->i:I

    .line 528
    iget-object v1, p0, La/a/a/a/b/bq;->a:La/a/a/a/b/bl;

    invoke-virtual {v1, p1, p2}, La/a/a/a/b/bl;->a(J)Ljava/lang/Object;

    .line 529
    iget-object v1, p0, La/a/a/a/b/bq;->a:La/a/a/a/b/bl;

    iget v1, v1, La/a/a/a/b/bl;->i:I

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
    .line 516
    invoke-virtual {p0}, La/a/a/a/b/bq;->a()La/a/a/a/b/ce;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, La/a/a/a/b/bq;->a:La/a/a/a/b/bl;

    iget v0, v0, La/a/a/a/b/bl;->i:I

    return v0
.end method

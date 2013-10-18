.class final La/a/a/a/b/i;
.super La/a/a/a/b/aa;
.source "SourceFile"


# instance fields
.field final synthetic a:La/a/a/a/b/h;


# direct methods
.method constructor <init>(La/a/a/a/b/h;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, La/a/a/a/b/i;->a:La/a/a/a/b/h;

    invoke-direct {p0}, La/a/a/a/b/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()La/a/a/a/b/ce;
    .locals 1

    .prologue
    .line 177
    new-instance v0, La/a/a/a/b/j;

    invoke-direct {v0, p0}, La/a/a/a/b/j;-><init>(La/a/a/a/b/i;)V

    return-object v0
.end method

.method public final a(J)Z
    .locals 1
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, La/a/a/a/b/i;->a:La/a/a/a/b/h;

    invoke-virtual {v0, p1, p2}, La/a/a/a/b/h;->b(J)Z

    move-result v0

    return v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, La/a/a/a/b/i;->a:La/a/a/a/b/h;

    invoke-virtual {v0}, La/a/a/a/b/h;->clear()V

    return-void
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, La/a/a/a/b/i;->a()La/a/a/a/b/ce;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, La/a/a/a/b/i;->a:La/a/a/a/b/h;

    invoke-virtual {v0}, La/a/a/a/b/h;->size()I

    move-result v0

    return v0
.end method

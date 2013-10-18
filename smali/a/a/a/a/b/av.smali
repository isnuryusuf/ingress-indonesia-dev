.class final La/a/a/a/b/av;
.super La/a/a/a/b/bf;
.source "SourceFile"

# interfaces
.implements La/a/a/a/b/ci;


# instance fields
.field final synthetic a:La/a/a/a/b/ap;


# direct methods
.method public constructor <init>(La/a/a/a/b/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 1223
    iput-object p1, p0, La/a/a/a/b/av;->a:La/a/a/a/b/ap;

    invoke-direct {p0, p1}, La/a/a/a/b/bf;-><init>(La/a/a/a/b/ap;)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 1225
    invoke-virtual {p0}, La/a/a/a/b/av;->e()La/a/a/a/b/at;

    move-result-object v0

    iget-wide v0, v0, La/a/a/a/b/at;->a:J

    return-wide v0
.end method

.method public final synthetic add(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 1222
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 1226
    invoke-virtual {p0}, La/a/a/a/b/av;->f()La/a/a/a/b/at;

    move-result-object v0

    iget-wide v0, v0, La/a/a/a/b/at;->a:J

    return-wide v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1222
    invoke-virtual {p0}, La/a/a/a/b/av;->e()La/a/a/a/b/at;

    move-result-object v0

    iget-wide v0, v0, La/a/a/a/b/at;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic previous()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1222
    invoke-virtual {p0}, La/a/a/a/b/av;->f()La/a/a/a/b/at;

    move-result-object v0

    iget-wide v0, v0, La/a/a/a/b/at;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic set(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 1222
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

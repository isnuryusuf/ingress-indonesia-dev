.class final La/a/a/a/b/bd;
.super La/a/a/a/b/bc;
.source "SourceFile"

# interfaces
.implements La/a/a/a/b/ci;


# instance fields
.field final synthetic a:La/a/a/a/b/ax;


# direct methods
.method public constructor <init>(La/a/a/a/b/ax;)V
    .locals 0
    .parameter

    .prologue
    .line 1606
    iput-object p1, p0, La/a/a/a/b/bd;->a:La/a/a/a/b/ax;

    invoke-direct {p0, p1}, La/a/a/a/b/bc;-><init>(La/a/a/a/b/ax;)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 1608
    invoke-virtual {p0}, La/a/a/a/b/bd;->e()La/a/a/a/b/at;

    move-result-object v0

    iget-wide v0, v0, La/a/a/a/b/at;->a:J

    return-wide v0
.end method

.method public final synthetic add(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 1605
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 1609
    invoke-virtual {p0}, La/a/a/a/b/bd;->f()La/a/a/a/b/at;

    move-result-object v0

    iget-wide v0, v0, La/a/a/a/b/at;->a:J

    return-wide v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1605
    invoke-virtual {p0}, La/a/a/a/b/bd;->e()La/a/a/a/b/at;

    move-result-object v0

    iget-wide v0, v0, La/a/a/a/b/at;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic previous()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1605
    invoke-virtual {p0}, La/a/a/a/b/bd;->f()La/a/a/a/b/at;

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
    .line 1605
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

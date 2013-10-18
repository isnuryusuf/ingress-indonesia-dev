.class final La/a/a/a/b/e;
.super La/a/a/a/b/t;
.source "SourceFile"


# instance fields
.field final synthetic a:La/a/a/a/b/b;


# direct methods
.method constructor <init>(La/a/a/a/b/b;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, La/a/a/a/b/e;->a:La/a/a/a/b/b;

    invoke-direct {p0}, La/a/a/a/b/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()La/a/a/a/b/ce;
    .locals 1

    .prologue
    .line 230
    new-instance v0, La/a/a/a/b/f;

    invoke-direct {v0, p0}, La/a/a/a/b/f;-><init>(La/a/a/a/b/e;)V

    return-object v0
.end method

.method public final a(J)Z
    .locals 1
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, La/a/a/a/b/e;->a:La/a/a/a/b/b;

    invoke-virtual {v0, p1, p2}, La/a/a/a/b/b;->b(J)Z

    move-result v0

    return v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, La/a/a/a/b/e;->a:La/a/a/a/b/b;

    invoke-virtual {v0}, La/a/a/a/b/b;->clear()V

    return-void
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, La/a/a/a/b/e;->a()La/a/a/a/b/ce;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, La/a/a/a/b/e;->a:La/a/a/a/b/b;

    invoke-virtual {v0}, La/a/a/a/b/b;->size()I

    move-result v0

    return v0
.end method

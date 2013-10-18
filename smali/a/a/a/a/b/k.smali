.class final La/a/a/a/b/k;
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
.field final synthetic a:La/a/a/a/b/h;


# direct methods
.method constructor <init>(La/a/a/a/b/h;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, La/a/a/a/b/k;->a:La/a/a/a/b/h;

    invoke-direct {p0}, La/a/a/a/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()La/a/a/a/c/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/a/a/a/c/l",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, La/a/a/a/b/l;

    invoke-direct {v0, p0}, La/a/a/a/b/l;-><init>(La/a/a/a/b/k;)V

    return-object v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, La/a/a/a/b/k;->a:La/a/a/a/b/h;

    invoke-virtual {v0}, La/a/a/a/b/h;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, La/a/a/a/b/k;->a:La/a/a/a/b/h;

    invoke-virtual {v0, p1}, La/a/a/a/b/h;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, La/a/a/a/b/k;->a()La/a/a/a/c/l;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, La/a/a/a/b/k;->a:La/a/a/a/b/h;

    invoke-virtual {v0}, La/a/a/a/b/h;->size()I

    move-result v0

    return v0
.end method

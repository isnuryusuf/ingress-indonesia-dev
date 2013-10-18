.class final La/a/a/a/b/l;
.super La/a/a/a/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/a/a/c/c",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final a:La/a/a/a/c/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/c/l",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Long;",
            "TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic b:La/a/a/a/b/k;


# direct methods
.method constructor <init>(La/a/a/a/b/k;)V
    .locals 1
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, La/a/a/a/b/l;->b:La/a/a/a/b/k;

    invoke-direct {p0}, La/a/a/a/c/c;-><init>()V

    .line 203
    iget-object v0, p0, La/a/a/a/b/l;->b:La/a/a/a/b/k;

    iget-object v0, v0, La/a/a/a/b/k;->a:La/a/a/a/b/h;

    invoke-virtual {v0}, La/a/a/a/b/h;->c()La/a/a/a/c/p;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/c/p;->a()La/a/a/a/c/l;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/b/l;->a:La/a/a/a/c/l;

    .line 202
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, La/a/a/a/b/l;->a:La/a/a/a/c/l;

    invoke-interface {v0}, La/a/a/a/c/l;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, La/a/a/a/b/l;->a:La/a/a/a/c/l;

    invoke-interface {v0}, La/a/a/a/c/l;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/b/bj;

    invoke-interface {v0}, La/a/a/a/b/bj;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

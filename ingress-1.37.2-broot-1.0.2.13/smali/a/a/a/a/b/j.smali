.class final La/a/a/a/b/j;
.super La/a/a/a/b/u;
.source "SourceFile"


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

.field final synthetic b:La/a/a/a/b/i;


# direct methods
.method constructor <init>(La/a/a/a/b/i;)V
    .locals 1
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, La/a/a/a/b/j;->b:La/a/a/a/b/i;

    invoke-direct {p0}, La/a/a/a/b/u;-><init>()V

    .line 178
    iget-object v0, p0, La/a/a/a/b/j;->b:La/a/a/a/b/i;

    iget-object v0, v0, La/a/a/a/b/i;->a:La/a/a/a/b/h;

    invoke-virtual {v0}, La/a/a/a/b/h;->c()La/a/a/a/c/p;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/c/p;->a()La/a/a/a/c/l;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/b/j;->a:La/a/a/a/c/l;

    .line 177
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, La/a/a/a/b/j;->a:La/a/a/a/c/l;

    invoke-interface {v0}, La/a/a/a/c/l;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/b/bj;

    invoke-interface {v0}, La/a/a/a/b/bj;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, La/a/a/a/b/j;->a:La/a/a/a/c/l;

    invoke-interface {v0}, La/a/a/a/c/l;->hasNext()Z

    move-result v0

    return v0
.end method

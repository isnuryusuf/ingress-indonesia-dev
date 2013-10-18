.class final La/a/a/a/b/f;
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
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic b:La/a/a/a/b/e;


# direct methods
.method constructor <init>(La/a/a/a/b/e;)V
    .locals 1
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, La/a/a/a/b/f;->b:La/a/a/a/b/e;

    invoke-direct {p0}, La/a/a/a/b/u;-><init>()V

    .line 231
    iget-object v0, p0, La/a/a/a/b/f;->b:La/a/a/a/b/e;

    iget-object v0, v0, La/a/a/a/b/e;->a:La/a/a/a/b/b;

    invoke-virtual {v0}, La/a/a/a/b/b;->d()La/a/a/a/c/p;

    move-result-object v0

    invoke-interface {v0}, La/a/a/a/c/p;->a()La/a/a/a/c/l;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/b/f;->a:La/a/a/a/c/l;

    .line 230
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, La/a/a/a/b/f;->a:La/a/a/a/c/l;

    invoke-interface {v0}, La/a/a/a/c/l;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/a/b/ae;

    invoke-interface {v0}, La/a/a/a/b/ae;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, La/a/a/a/b/f;->a:La/a/a/a/c/l;

    invoke-interface {v0}, La/a/a/a/c/l;->hasNext()Z

    move-result v0

    return v0
.end method

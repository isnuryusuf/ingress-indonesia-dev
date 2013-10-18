.class public final La/a/a/a/b/p;
.super La/a/a/a/b/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "La/a/a/a/b/s;"
    }
.end annotation


# instance fields
.field protected final a:La/a/a/a/c/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a/a/c/i",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Long;",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La/a/a/a/c/i;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a/a/c/i",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Long;",
            "TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0}, La/a/a/a/b/s;-><init>()V

    .line 116
    iput-object p1, p0, La/a/a/a/b/p;->a:La/a/a/a/c/i;

    .line 117
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, La/a/a/a/b/p;->a:La/a/a/a/c/i;

    invoke-interface {v0}, La/a/a/a/c/i;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, La/a/a/a/b/p;->a:La/a/a/a/c/i;

    invoke-interface {v0}, La/a/a/a/c/i;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, La/a/a/a/b/p;->a:La/a/a/a/c/i;

    invoke-interface {v0}, La/a/a/a/c/i;->hasNext()Z

    move-result v0

    return v0
.end method

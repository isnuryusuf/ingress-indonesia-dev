.class public final La/a/a/a/b/r;
.super La/a/a/a/c/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "La/a/a/a/c/c",
        "<TV;>;"
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
    .line 162
    invoke-direct {p0}, La/a/a/a/c/c;-><init>()V

    .line 163
    iput-object p1, p0, La/a/a/a/b/r;->a:La/a/a/a/c/i;

    .line 164
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, La/a/a/a/b/r;->a:La/a/a/a/c/i;

    invoke-interface {v0}, La/a/a/a/c/i;->hasNext()Z

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
    .line 166
    iget-object v0, p0, La/a/a/a/b/r;->a:La/a/a/a/c/i;

    invoke-interface {v0}, La/a/a/a/c/i;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

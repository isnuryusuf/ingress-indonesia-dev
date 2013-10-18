.class public final La/a/a/a/b/cg;
.super La/a/a/a/b/z;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, La/a/a/a/b/z;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final b()J
    .locals 1

    .prologue
    .line 63
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    sget-object v0, La/a/a/a/b/cf;->a:La/a/a/a/b/cg;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public final nextIndex()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public final previousIndex()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, -0x1

    return v0
.end method

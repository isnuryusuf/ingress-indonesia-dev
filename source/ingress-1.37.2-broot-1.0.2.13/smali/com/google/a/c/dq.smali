.class public abstract Lcom/google/a/c/dq;
.super Lcom/google/a/c/ct;
.source "SourceFile"

# interfaces
.implements Lcom/google/a/c/ht;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/a/c/ct",
        "<TE;>;",
        "Lcom/google/a/c/ht",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/a/c/dq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/dq",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient b:Lcom/google/a/c/du;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/du",
            "<",
            "Lcom/google/a/c/hu",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/google/a/c/io;

    invoke-static {}, Lcom/google/a/c/dh;->i()Lcom/google/a/c/dh;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/c/io;-><init>(Lcom/google/a/c/dh;)V

    sput-object v0, Lcom/google/a/c/dq;->a:Lcom/google/a/c/dq;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/google/a/c/ct;-><init>()V

    return-void
.end method

.method private c()Lcom/google/a/c/du;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/du",
            "<",
            "Lcom/google/a/c/hu",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/a/c/dq;->b:Lcom/google/a/c/du;

    .line 347
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/c/dq;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/a/c/du;->g()Lcom/google/a/c/du;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/a/c/dq;->b:Lcom/google/a/c/du;

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/a/c/ds;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/a/c/ds;-><init>(Lcom/google/a/c/dq;B)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 281
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method final a([Ljava/lang/Object;I)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/google/a/c/dq;->c()Lcom/google/a/c/du;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/du;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/hu;

    .line 324
    invoke-interface {v0}, Lcom/google/a/c/hu;->b()I

    move-result v2

    add-int/2addr v2, p2

    invoke-interface {v0}, Lcom/google/a/c/hu;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, p2, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 325
    invoke-interface {v0}, Lcom/google/a/c/hu;->b()I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    .line 327
    :cond_0
    return p2
.end method

.method abstract a(I)Lcom/google/a/c/hu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/a/c/hu",
            "<TE;>;"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/Object;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 317
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final b(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 293
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final b()Lcom/google/a/c/lj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/lj",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/google/a/c/dq;->c()Lcom/google/a/c/du;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/du;->b()Lcom/google/a/c/lj;

    move-result-object v0

    .line 240
    new-instance v1, Lcom/google/a/c/dr;

    invoke-direct {v1, p0, v0}, Lcom/google/a/c/dr;-><init>(Lcom/google/a/c/dq;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final c(Ljava/lang/Object;I)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 305
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lcom/google/a/c/dq;->a(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/google/a/c/dq;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final synthetic e_()Ljava/util/Set;
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/a/c/dq;->c()Lcom/google/a/c/du;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 331
    invoke-static {p0, p1}, Lcom/google/a/c/hv;->a(Lcom/google/a/c/ht;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/google/a/c/dq;->c()Lcom/google/a/c/du;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/jc;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/google/a/c/dq;->b()Lcom/google/a/c/lj;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/google/a/c/dq;->c()Lcom/google/a/c/du;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/du;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

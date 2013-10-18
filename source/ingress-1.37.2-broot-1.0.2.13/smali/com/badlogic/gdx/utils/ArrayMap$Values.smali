.class public Lcom/badlogic/gdx/utils/ArrayMap$Values;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TV;>;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field index:I

.field private final map:Lcom/badlogic/gdx/utils/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ArrayMap",
            "<",
            "Ljava/lang/Object;",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ArrayMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ArrayMap",
            "<",
            "Ljava/lang/Object;",
            "TV;>;)V"
        }
    .end annotation

    .prologue
    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->map:Lcom/badlogic/gdx/utils/ArrayMap;

    .line 464
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 467
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->map:Lcom/badlogic/gdx/utils/ArrayMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 471
    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 475
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->map:Lcom/badlogic/gdx/utils/ArrayMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->map:Lcom/badlogic/gdx/utils/ArrayMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 480
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    .line 481
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->map:Lcom/badlogic/gdx/utils/ArrayMap;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    .line 482
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap$Values;->index:I

    .line 486
    return-void
.end method

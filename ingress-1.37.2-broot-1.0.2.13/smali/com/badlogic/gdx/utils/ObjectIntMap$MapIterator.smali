.class Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field currentIndex:I

.field public hasNext:Z

.field final map:Lcom/badlogic/gdx/utils/ObjectIntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap",
            "<TK;>;"
        }
    .end annotation
.end field

.field nextIndex:I


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectIntMap",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    .line 532
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->reset()V

    .line 533
    return-void
.end method


# virtual methods
.method findNextIndex()V
    .locals 3

    .prologue
    .line 542
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->hasNext:Z

    .line 543
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 544
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    add-int/2addr v1, v2

    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->nextIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->nextIndex:I

    if-ge v2, v1, :cond_1

    .line 545
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->nextIndex:I

    aget-object v2, v0, v2

    if-eqz v2, :cond_0

    .line 546
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->hasNext:Z

    .line 547
    :cond_1
    return-void
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 553
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->currentIndex:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->currentIndex:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    if-lt v0, v1, :cond_1

    .line 555
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->removeStashIndex(I)V

    .line 559
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->currentIndex:I

    .line 560
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget v1, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    .line 561
    return-void

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->currentIndex:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 536
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->currentIndex:I

    .line 537
    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->nextIndex:I

    .line 538
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->findNextIndex()V

    .line 539
    return-void
.end method

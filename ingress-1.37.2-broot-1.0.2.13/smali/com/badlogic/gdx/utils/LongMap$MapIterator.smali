.class Lcom/badlogic/gdx/utils/LongMap$MapIterator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final INDEX_ILLEGAL:I = -0x2

.field static final INDEX_ZERO:I = -0x1


# instance fields
.field currentIndex:I

.field public hasNext:Z

.field final map:Lcom/badlogic/gdx/utils/LongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/LongMap",
            "<TV;>;"
        }
    .end annotation
.end field

.field nextIndex:I


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/LongMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/LongMap",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iput-object p1, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    .line 580
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->reset()V

    .line 581
    return-void
.end method


# virtual methods
.method findNextIndex()V
    .locals 6

    .prologue
    .line 593
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->hasNext:Z

    .line 594
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 595
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int/2addr v1, v2

    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->nextIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->nextIndex:I

    if-ge v2, v1, :cond_1

    .line 596
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->nextIndex:I

    aget-wide v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 597
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->hasNext:Z

    .line 598
    :cond_1
    return-void
.end method

.method public remove()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 604
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->currentIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iput-object v4, v0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 606
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 615
    :goto_0
    const/4 v0, -0x2

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->currentIndex:I

    .line 616
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget v1, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 617
    return-void

    .line 607
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->currentIndex:I

    if-gez v0, :cond_1

    .line 608
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "next must be called before remove."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->currentIndex:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    if-lt v0, v1, :cond_2

    .line 610
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->currentIndex:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/LongMap;->removeStashIndex(I)V

    goto :goto_0

    .line 612
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->currentIndex:I

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 613
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->currentIndex:I

    aput-object v4, v0, v1

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 584
    const/4 v0, -0x2

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->currentIndex:I

    .line 585
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->nextIndex:I

    .line 586
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v0, :cond_0

    .line 587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->hasNext:Z

    .line 590
    :goto_0
    return-void

    .line 589
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->findNextIndex()V

    goto :goto_0
.end method

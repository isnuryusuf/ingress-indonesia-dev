.class public Lcom/badlogic/gdx/utils/ObjectIntMap$Values;
.super Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectIntMap",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 593
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    .line 594
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 597
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->hasNext:Z

    return v0
.end method

.method public next()I
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->nextIndex:I

    aget v0, v0, v1

    .line 602
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->currentIndex:I

    .line 603
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->findNextIndex()V

    .line 604
    return v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .prologue
    .line 591
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .prologue
    .line 591
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/IntArray;
    .locals 3

    .prologue
    .line 609
    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/IntArray;-><init>(ZI)V

    .line 610
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->hasNext:Z

    if-eqz v1, :cond_0

    .line 611
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->next()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_0

    .line 612
    :cond_0
    return-object v0
.end method

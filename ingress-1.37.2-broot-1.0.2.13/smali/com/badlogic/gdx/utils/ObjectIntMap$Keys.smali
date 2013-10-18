.class public Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;
.super Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator",
        "<TK;>;",
        "Ljava/lang/Iterable",
        "<TK;>;",
        "Ljava/util/Iterator",
        "<TK;>;"
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
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 618
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    .line 619
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 622
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->hasNext:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 633
    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 626
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->nextIndex:I

    aget-object v0, v0, v1

    .line 627
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->currentIndex:I

    .line 628
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->findNextIndex()V

    .line 629
    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .prologue
    .line 616
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .prologue
    .line 616
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/Array;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 638
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    .line 639
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->hasNext:Z

    if-eqz v1, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 641
    :cond_0
    return-object v0
.end method

.class public Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;
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
        "<",
        "Lcom/badlogic/gdx/utils/ObjectIntMap$Entry",
        "<TK;>;>;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/badlogic/gdx/utils/ObjectIntMap$Entry",
        "<TK;>;>;"
    }
.end annotation


# instance fields
.field private entry:Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectIntMap$Entry",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectIntMap",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 568
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    .line 565
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;

    .line 569
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->hasNext:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/badlogic/gdx/utils/ObjectIntMap$Entry",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 587
    return-object p0
.end method

.method public next()Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectIntMap$Entry",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->hasNext:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 575
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->nextIndex:I

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;->key:Ljava/lang/Object;

    .line 576
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->map:Lcom/badlogic/gdx/utils/ObjectIntMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->nextIndex:I

    aget v1, v1, v2

    iput v1, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;->value:I

    .line 577
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->nextIndex:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->currentIndex:I

    .line 578
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->findNextIndex()V

    .line 579
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->entry:Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->next()Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .prologue
    .line 564
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .prologue
    .line 564
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;->reset()V

    return-void
.end method

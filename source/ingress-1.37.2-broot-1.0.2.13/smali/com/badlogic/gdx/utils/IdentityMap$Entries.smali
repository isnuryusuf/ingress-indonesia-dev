.class public Lcom/badlogic/gdx/utils/IdentityMap$Entries;
.super Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/IdentityMap$MapIterator",
        "<TK;TV;>;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/badlogic/gdx/utils/IdentityMap$Entry",
        "<TK;TV;>;>;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/badlogic/gdx/utils/IdentityMap$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private entry:Lcom/badlogic/gdx/utils/IdentityMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IdentityMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IdentityMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/IdentityMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 581
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/IdentityMap;)V

    .line 578
    new-instance v0, Lcom/badlogic/gdx/utils/IdentityMap$Entry;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IdentityMap$Entry;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->entry:Lcom/badlogic/gdx/utils/IdentityMap$Entry;

    .line 582
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 596
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->hasNext:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/badlogic/gdx/utils/IdentityMap$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 600
    return-object p0
.end method

.method public next()Lcom/badlogic/gdx/utils/IdentityMap$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IdentityMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->hasNext:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->map:Lcom/badlogic/gdx/utils/IdentityMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 588
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->entry:Lcom/badlogic/gdx/utils/IdentityMap$Entry;

    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->nextIndex:I

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/badlogic/gdx/utils/IdentityMap$Entry;->key:Ljava/lang/Object;

    .line 589
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->entry:Lcom/badlogic/gdx/utils/IdentityMap$Entry;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->map:Lcom/badlogic/gdx/utils/IdentityMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->nextIndex:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/badlogic/gdx/utils/IdentityMap$Entry;->value:Ljava/lang/Object;

    .line 590
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->nextIndex:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->currentIndex:I

    .line 591
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->findNextIndex()V

    .line 592
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->entry:Lcom/badlogic/gdx/utils/IdentityMap$Entry;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->next()Lcom/badlogic/gdx/utils/IdentityMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .prologue
    .line 577
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .prologue
    .line 577
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->reset()V

    return-void
.end method

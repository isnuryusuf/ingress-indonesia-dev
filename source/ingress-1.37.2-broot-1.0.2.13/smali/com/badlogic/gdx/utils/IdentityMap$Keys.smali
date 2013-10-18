.class public Lcom/badlogic/gdx/utils/IdentityMap$Keys;
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
        ">",
        "Lcom/badlogic/gdx/utils/IdentityMap$MapIterator",
        "<TK;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Iterable",
        "<TK;>;",
        "Ljava/util/Iterator",
        "<TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/IdentityMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/IdentityMap",
            "<TK;*>;)V"
        }
    .end annotation

    .prologue
    .line 641
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/IdentityMap;)V

    .line 642
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 645
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->hasNext:Z

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
    .line 656
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
    .line 649
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->map:Lcom/badlogic/gdx/utils/IdentityMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->nextIndex:I

    aget-object v0, v0, v1

    .line 650
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->currentIndex:I

    .line 651
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->findNextIndex()V

    .line 652
    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .prologue
    .line 639
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .prologue
    .line 639
    invoke-super {p0}, Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;->reset()V

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
    .line 661
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->map:Lcom/badlogic/gdx/utils/IdentityMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    .line 662
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->hasNext:Z

    if-eqz v1, :cond_0

    .line 663
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 664
    :cond_0
    return-object v0
.end method

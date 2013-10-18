.class public Lcom/badlogic/gdx/utils/ObjectMap$Values;
.super Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;
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
        "Lcom/badlogic/gdx/utils/ObjectMap$MapIterator",
        "<",
        "Ljava/lang/Object;",
        "TV;>;",
        "Ljava/lang/Iterable",
        "<TV;>;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<*TV;>;)V"
        }
    .end annotation

    .prologue
    .line 602
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    .line 603
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->hasNext:Z

    return v0
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
    .line 617
    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 610
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->nextIndex:I

    aget-object v0, v0, v1

    .line 611
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->nextIndex:I

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->currentIndex:I

    .line 612
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->advance()V

    .line 613
    return-object v0
.end method

.method public bridge synthetic remove()V
    .locals 0

    .prologue
    .line 600
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    .prologue
    .line 600
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;->reset()V

    return-void
.end method

.method public toArray()Lcom/badlogic/gdx/utils/Array;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 622
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v2, v2, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    .line 623
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->hasNext:Z

    if-eqz v1, :cond_0

    .line 624
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 625
    :cond_0
    return-object v0
.end method

.method public toArray(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 630
    :goto_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->hasNext:Z

    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 632
    :cond_0
    return-void
.end method

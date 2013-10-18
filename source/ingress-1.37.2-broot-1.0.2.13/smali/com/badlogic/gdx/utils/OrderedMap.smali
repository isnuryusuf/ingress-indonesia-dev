.class public Lcom/badlogic/gdx/utils/OrderedMap;
.super Lcom/badlogic/gdx/utils/ObjectMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/ObjectMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final keys:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    .line 28
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(I)V

    .line 33
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    .line 34
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(IF)V

    .line 38
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    .line 39
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 53
    invoke-super {p0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 54
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap$Entries",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap$1;

    invoke-direct {v0, p0, p0}, Lcom/badlogic/gdx/utils/OrderedMap$1;-><init>(Lcom/badlogic/gdx/utils/OrderedMap;Lcom/badlogic/gdx/utils/ObjectMap;)V

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap$Keys",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap$2;

    invoke-direct {v0, p0, p0}, Lcom/badlogic/gdx/utils/OrderedMap$2;-><init>(Lcom/badlogic/gdx/utils/OrderedMap;Lcom/badlogic/gdx/utils/ObjectMap;)V

    return-object v0
.end method

.method public orderedKeys()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/OrderedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 43
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 48
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 119
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedMap;->size:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "{}"

    .line 131
    :goto_0
    return-object v0

    .line 120
    :cond_0
    new-instance v1, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 121
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 122
    iget-object v2, p0, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    .line 123
    const/4 v0, 0x0

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_1
    if-ge v0, v3, :cond_2

    .line 124
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 125
    if-lez v0, :cond_1

    const-string/jumbo v5, ", "

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 126
    :cond_1
    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 127
    const/16 v5, 0x3d

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 128
    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    :cond_2
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 131
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public values()Lcom/badlogic/gdx/utils/ObjectMap$Values;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap$Values",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lcom/badlogic/gdx/utils/OrderedMap$3;

    invoke-direct {v0, p0, p0}, Lcom/badlogic/gdx/utils/OrderedMap$3;-><init>(Lcom/badlogic/gdx/utils/OrderedMap;Lcom/badlogic/gdx/utils/ObjectMap;)V

    return-object v0
.end method

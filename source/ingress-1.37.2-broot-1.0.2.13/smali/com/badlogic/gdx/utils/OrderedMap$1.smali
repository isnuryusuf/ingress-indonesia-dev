.class Lcom/badlogic/gdx/utils/OrderedMap$1;
.super Lcom/badlogic/gdx/utils/ObjectMap$Entries;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/utils/OrderedMap;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/utils/OrderedMap;Lcom/badlogic/gdx/utils/ObjectMap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/badlogic/gdx/utils/OrderedMap$1;->this$0:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    return-void
.end method


# virtual methods
.method advance()V
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$1;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$1;->nextIndex:I

    .line 64
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$1;->nextIndex:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$1;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$1;->hasNext:Z

    .line 65
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/badlogic/gdx/utils/ObjectMap$Entry;
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$1;->entry:Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$1;->this$0:Lcom/badlogic/gdx/utils/OrderedMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    iget v2, p0, Lcom/badlogic/gdx/utils/OrderedMap$1;->nextIndex:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$1;->entry:Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$1;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/OrderedMap$1;->entry:Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    .line 70
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/OrderedMap$1;->advance()V

    .line 71
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$1;->entry:Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/OrderedMap$1;->next()Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$1;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$1;->entry:Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method

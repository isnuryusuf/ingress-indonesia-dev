.class Lcom/badlogic/gdx/utils/OrderedMap$3;
.super Lcom/badlogic/gdx/utils/ObjectMap$Values;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/utils/OrderedMap;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/utils/OrderedMap;Lcom/badlogic/gdx/utils/ObjectMap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/badlogic/gdx/utils/OrderedMap$3;->this$0:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/utils/ObjectMap$Values;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    return-void
.end method


# virtual methods
.method advance()V
    .locals 2

    .prologue
    .line 102
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$3;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$3;->nextIndex:I

    .line 103
    iget v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$3;->nextIndex:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$3;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget v1, v1, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$3;->hasNext:Z

    .line 104
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$3;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$3;->this$0:Lcom/badlogic/gdx/utils/OrderedMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    iget v2, p0, Lcom/badlogic/gdx/utils/OrderedMap$3;->nextIndex:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/OrderedMap$3;->advance()V

    .line 109
    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/utils/OrderedMap$3;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/OrderedMap$3;->this$0:Lcom/badlogic/gdx/utils/OrderedMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/OrderedMap;->keys:Lcom/badlogic/gdx/utils/Array;

    iget v2, p0, Lcom/badlogic/gdx/utils/OrderedMap$3;->nextIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

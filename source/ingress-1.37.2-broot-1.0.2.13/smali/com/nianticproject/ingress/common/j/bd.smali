.class public final Lcom/nianticproject/ingress/common/j/bd;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/badlogic/gdx/graphics/VertexAttributes;)Lcom/badlogic/gdx/graphics/VertexAttribute;
    .locals 3
    .parameter

    .prologue
    .line 18
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 19
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/VertexAttributes;->get(I)Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-result-object v1

    .line 20
    iget v2, v1, Lcom/badlogic/gdx/graphics/VertexAttribute;->usage:I

    if-nez v2, :cond_0

    move-object v0, v1

    .line 25
    :goto_1
    return-object v0

    .line 18
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

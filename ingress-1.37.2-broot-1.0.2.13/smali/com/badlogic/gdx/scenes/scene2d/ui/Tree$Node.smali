.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field children:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;"
        }
    .end annotation
.end field

.field expanded:Z

.field parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 181
    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 4
    .parameter

    .prologue
    .line 214
    iput-object p0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 215
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 217
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-nez v0, :cond_2

    .line 223
    :cond_1
    return-void

    .line 218
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    .line 219
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    if-eqz v1, :cond_1

    .line 220
    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    .line 221
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 222
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->addToTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    .line 221
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method addToTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V
    .locals 3
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 201
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-nez v0, :cond_1

    .line 204
    :cond_0
    return-void

    .line 202
    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 203
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->addToTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    .line 202
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getChildren()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getParent()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    return-object v0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    return v0
.end method

.method public remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 2
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 228
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    .line 230
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    if-eqz v1, :cond_0

    .line 231
    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    .line 232
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    .line 233
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    goto :goto_0
.end method

.method removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V
    .locals 3
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    .line 208
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-nez v0, :cond_1

    .line 211
    :cond_0
    return-void

    .line 209
    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 210
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    .line 209
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method setExpanded(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 184
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    .line 186
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    .line 187
    instance-of v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    if-eqz v2, :cond_0

    .line 188
    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;

    .line 189
    if-eqz p1, :cond_2

    .line 190
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_3

    .line 191
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->addToTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    .line 190
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 193
    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_3

    .line 194
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    .line 193
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 196
    :cond_3
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->invalidateHierarchy()V

    goto :goto_0
.end method

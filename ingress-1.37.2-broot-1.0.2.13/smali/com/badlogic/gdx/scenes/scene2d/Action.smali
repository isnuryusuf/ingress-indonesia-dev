.class public abstract Lcom/badlogic/gdx/scenes/scene2d/Action;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# instance fields
.field protected actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private pool:Lcom/badlogic/gdx/utils/Pool;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract act(F)Z
.end method

.method public getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getPool()Lcom/badlogic/gdx/utils/Pool;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->pool:Lcom/badlogic/gdx/utils/Pool;

    return-object v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->restart()V

    .line 73
    return-void
.end method

.method public restart()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 56
    if-nez p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->pool:Lcom/badlogic/gdx/utils/Pool;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->pool:Lcom/badlogic/gdx/utils/Pool;

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->reset()V

    goto :goto_0
.end method

.method public setPool(Lcom/badlogic/gdx/utils/Pool;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->pool:Lcom/badlogic/gdx/utils/Pool;

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 87
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 88
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    :cond_0
    const-string/jumbo v1, "Action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_1
    return-object v0
.end method

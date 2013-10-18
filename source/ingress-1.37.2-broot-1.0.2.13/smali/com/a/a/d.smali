.class public abstract Lcom/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "T:TC;",
        "L:Lcom/a/a/a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static instance:Lcom/a/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addChild(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TC;)V"
        }
    .end annotation
.end method

.method public abstract addDebugRectangle(Lcom/a/a/a;Lcom/a/a/b;FFFF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "Lcom/a/a/b;",
            "FFFF)V"
        }
    .end annotation
.end method

.method public abstract clearDebugRectangles(Lcom/a/a/a;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getHeight(Ljava/lang/Object;)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)F"
        }
    .end annotation
.end method

.method public abstract getMaxHeight(Ljava/lang/Object;)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)F"
        }
    .end annotation
.end method

.method public abstract getMaxWidth(Ljava/lang/Object;)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)F"
        }
    .end annotation
.end method

.method public abstract getMinHeight(Ljava/lang/Object;)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)F"
        }
    .end annotation
.end method

.method public abstract getMinWidth(Ljava/lang/Object;)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)F"
        }
    .end annotation
.end method

.method public abstract getPrefHeight(Ljava/lang/Object;)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)F"
        }
    .end annotation
.end method

.method public abstract getPrefWidth(Ljava/lang/Object;)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)F"
        }
    .end annotation
.end method

.method public abstract getWidth(Ljava/lang/Object;)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)F"
        }
    .end annotation
.end method

.method public height(F)F
    .locals 0
    .parameter

    .prologue
    .line 82
    return p1
.end method

.method public abstract removeChild(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TC;)V"
        }
    .end annotation
.end method

.method public setWidget(Lcom/a/a/a;Lcom/a/a/c;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "Lcom/a/a/c;",
            "TC;)V"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p1, Lcom/a/a/a;->table:Ljava/lang/Object;

    iget-object v1, p2, Lcom/a/a/c;->x:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/a/a/d;->removeChild(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    iput-object p3, p2, Lcom/a/a/c;->x:Ljava/lang/Object;

    .line 66
    iget-object v0, p1, Lcom/a/a/a;->table:Ljava/lang/Object;

    invoke-virtual {p0, v0, p3}, Lcom/a/a/d;->addChild(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public width(F)F
    .locals 0
    .parameter

    .prologue
    .line 74
    return p1
.end method

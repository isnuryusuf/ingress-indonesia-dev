.class final Lcom/nianticproject/ingress/common/ui/widget/ab;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/ui/widget/aa;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/ui/widget/aa;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/widget/ab;->a:Lcom/nianticproject/ingress/common/ui/widget/aa;

    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    return-void
.end method


# virtual methods
.method public final getMinHeight()F
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->getPrefHeight()F

    move-result v0

    return v0
.end method

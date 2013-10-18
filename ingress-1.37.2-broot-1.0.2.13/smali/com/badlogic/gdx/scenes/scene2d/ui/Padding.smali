.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bottomPadding:F

.field public leftPadding:F

.field public rightPadding:F

.field public topPadding:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;->leftPadding:F

    .line 25
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;->topPadding:F

    .line 26
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;->rightPadding:F

    .line 27
    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Padding;->bottomPadding:F

    .line 28
    return-void
.end method

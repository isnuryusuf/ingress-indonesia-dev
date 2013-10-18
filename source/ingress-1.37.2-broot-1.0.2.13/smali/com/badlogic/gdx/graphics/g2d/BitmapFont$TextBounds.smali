.class public Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public height:F

.field public width:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 973
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)V
    .locals 0
    .parameter

    .prologue
    .line 975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 976
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->set(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)V

    .line 977
    return-void
.end method


# virtual methods
.method public set(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;)V
    .locals 1
    .parameter

    .prologue
    .line 980
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->width:F

    .line 981
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$TextBounds;->height:F

    .line 982
    return-void
.end method

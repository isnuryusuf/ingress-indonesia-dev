.class public Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public depth:F

.field public normal:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1008
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->normal:Lcom/badlogic/gdx/math/Vector2;

    .line 1009
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/math/Intersector$MinimumTranslationVector;->depth:F

    return-void
.end method

.class Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache$ColorChange;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final color:Lcom/badlogic/gdx/graphics/Color;

.field lastVertexIndex:I


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache$ColorChange;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 41
    const v0, 0x7fffffff

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache$ColorChange;->lastVertexIndex:I

    .line 42
    return-void
.end method

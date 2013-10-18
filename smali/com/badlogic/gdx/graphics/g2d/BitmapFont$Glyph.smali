.class public Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public height:I

.field public kerning:[[B

.field public srcX:I

.field public srcY:I

.field public u:F

.field public u2:F

.field public v:F

.field public v2:F

.field public width:I

.field public xadvance:I

.field public xoffset:I

.field public yoffset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKerning(C)I
    .locals 2
    .parameter

    .prologue
    .line 934
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->kerning:[[B

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->kerning:[[B

    ushr-int/lit8 v1, p1, 0x9

    aget-object v0, v0, v1

    .line 936
    if-eqz v0, :cond_0

    and-int/lit16 v1, p1, 0x1ff

    aget-byte v0, v0, v1

    .line 938
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setKerning(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 942
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->kerning:[[B

    if-nez v0, :cond_0

    const/16 v0, 0x80

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->kerning:[[B

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->kerning:[[B

    ushr-int/lit8 v1, p1, 0x9

    aget-object v0, v0, v1

    .line 944
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->kerning:[[B

    ushr-int/lit8 v2, p1, 0x9

    const/16 v0, 0x200

    new-array v0, v0, [B

    aput-object v0, v1, v2

    .line 945
    :cond_1
    and-int/lit16 v1, p1, 0x1ff

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 946
    return-void
.end method

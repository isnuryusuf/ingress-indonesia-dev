.class public final Lcom/nianticproject/ingress/common/scanner/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/scanner/a/af;


# static fields
.field static final a:Lcom/badlogic/gdx/graphics/Color;

.field static b:Lcom/badlogic/gdx/graphics/VertexAttributes;


# instance fields
.field private final c:Lcom/nianticproject/ingress/common/scanner/a/n;

.field private final d:I

.field private final e:S

.field private final f:[S


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const v2, 0x3f666666

    .line 110
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3eb33333

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/a/d;->a:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method private constructor <init>(Lcom/nianticproject/ingress/common/scanner/a/n;I[S)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/a/d;->c:Lcom/nianticproject/ingress/common/scanner/a/n;

    .line 134
    iput p2, p0, Lcom/nianticproject/ingress/common/scanner/a/d;->d:I

    .line 135
    iput-object p3, p0, Lcom/nianticproject/ingress/common/scanner/a/d;->f:[S

    .line 136
    array-length v0, p3

    div-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    iput-short v0, p0, Lcom/nianticproject/ingress/common/scanner/a/d;->e:S

    .line 137
    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/scanner/a/n;I[SB)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/scanner/a/d;-><init>(Lcom/nianticproject/ingress/common/scanner/a/n;I[S)V

    return-void
.end method

.method static a()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 123
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/a/d;->b:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/badlogic/gdx/graphics/VertexAttributes;

    new-array v1, v5, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const-string/jumbo v3, "a_position"

    invoke-direct {v2, v4, v5, v3}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v2, v1, v4

    const/4 v2, 0x1

    new-instance v3, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v4, 0x5

    const/4 v5, 0x4

    const-string/jumbo v6, "a_color"

    invoke-direct {v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/VertexAttributes;-><init>([Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/a/d;->b:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 129
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/a/d;->b:Lcom/badlogic/gdx/graphics/VertexAttributes;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/nio/FloatBuffer;Ljava/nio/ShortBuffer;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x437f

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/high16 v6, 0x3f80

    .line 146
    iget-short v0, p0, Lcom/nianticproject/ingress/common/scanner/a/d;->e:S

    rem-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    .line 192
    :cond_0
    return-void

    .line 150
    :cond_1
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/a/d;->a()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v3, v0, 0x4

    .line 152
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->position()I

    move-result v0

    iget-short v1, p0, Lcom/nianticproject/ingress/common/scanner/a/d;->e:S

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 153
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 156
    :cond_2
    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->position()I

    move-result v0

    iget-short v1, p0, Lcom/nianticproject/ingress/common/scanner/a/d;->e:S

    add-int/2addr v0, v1

    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 157
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 160
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/d;->c:Lcom/nianticproject/ingress/common/scanner/a/n;

    iget v1, p0, Lcom/nianticproject/ingress/common/scanner/a/d;->d:I

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/scanner/a/n;->a(I)Lcom/nianticproject/ingress/common/q/a/t;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/a/t;->a()I

    move-result v1

    if-lez v1, :cond_5

    .line 164
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/a/t;->a()I

    move-result v1

    if-le v1, v4, :cond_4

    .line 165
    invoke-virtual {v0, v4}, Lcom/nianticproject/ingress/common/q/a/t;->a(I)I

    move-result v1

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/a/f;->a(I)F

    move-result v1

    .line 166
    invoke-virtual {v0, v4}, Lcom/nianticproject/ingress/common/q/a/t;->a(I)I

    move-result v0

    ushr-int/lit8 v0, v0, 0x18

    int-to-float v0, v0

    div-float/2addr v0, v5

    .line 171
    :goto_0
    sget-object v4, Lcom/nianticproject/ingress/common/scanner/a/d;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v0, v4

    .line 176
    :goto_1
    const/4 v4, 0x0

    sub-float v5, v6, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 177
    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 178
    invoke-static {v0, v0, v0}, Lcom/nianticproject/ingress/common/scanner/a/f;->b(FFF)I

    .line 179
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e051eb8

    const v4, 0x3e23d70a

    const v5, 0x3e2e147b

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v4

    .line 181
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->position()I

    move-result v0

    div-int/2addr v0, v3

    int-to-short v0, v0

    .line 182
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/a/d;->c:Lcom/nianticproject/ingress/common/scanner/a/n;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/scanner/a/n;->a()F

    move-result v3

    move v1, v0

    move v0, v2

    .line 183
    :goto_2
    iget-short v2, p0, Lcom/nianticproject/ingress/common/scanner/a/d;->e:S

    if-ge v0, v2, :cond_0

    .line 184
    mul-int/lit8 v2, v0, 0x2

    .line 185
    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/a/d;->f:[S

    aget-short v5, v5, v2

    rsub-int v5, v5, 0x1000

    int-to-float v5, v5

    mul-float/2addr v5, v3

    invoke-virtual {p1, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 187
    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/a/d;->f:[S

    add-int/lit8 v2, v2, 0x1

    aget-short v2, v5, v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 188
    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 190
    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    invoke-virtual {p2, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 183
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_2

    .line 168
    :cond_4
    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/q/a/t;->a(I)I

    move-result v1

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/a/f;->a(I)F

    move-result v1

    const/high16 v4, 0x3f40

    mul-float/2addr v1, v4

    .line 169
    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/q/a/t;->a(I)I

    move-result v0

    ushr-int/lit8 v0, v0, 0x18

    int-to-float v0, v0

    div-float/2addr v0, v5

    goto :goto_0

    .line 173
    :cond_5
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/a/d;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v1, Lcom/nianticproject/ingress/common/scanner/a/d;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Lcom/nianticproject/ingress/common/scanner/a/d;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-static {v0, v1, v4}, Lcom/nianticproject/ingress/common/scanner/a/f;->a(FFF)F

    move-result v1

    .line 174
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/a/d;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto/16 :goto_1
.end method

.method public final b()S
    .locals 1

    .prologue
    .line 141
    iget-short v0, p0, Lcom/nianticproject/ingress/common/scanner/a/d;->e:S

    return v0
.end method

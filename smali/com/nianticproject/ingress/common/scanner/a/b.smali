.class final Lcom/nianticproject/ingress/common/scanner/a/b;
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

.field private final e:[S

.field private final f:S


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    .line 93
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3e80

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/a/b;->a:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method private constructor <init>(Lcom/nianticproject/ingress/common/scanner/a/n;I[S)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/a/b;->c:Lcom/nianticproject/ingress/common/scanner/a/n;

    .line 117
    iput p2, p0, Lcom/nianticproject/ingress/common/scanner/a/b;->d:I

    .line 118
    iput-object p3, p0, Lcom/nianticproject/ingress/common/scanner/a/b;->e:[S

    .line 119
    array-length v0, p3

    div-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    iput-short v0, p0, Lcom/nianticproject/ingress/common/scanner/a/b;->f:S

    .line 120
    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/ingress/common/scanner/a/n;I[SB)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/nianticproject/ingress/common/scanner/a/b;-><init>(Lcom/nianticproject/ingress/common/scanner/a/n;I[S)V

    return-void
.end method

.method static a()Lcom/badlogic/gdx/graphics/VertexAttributes;
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 106
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/a/b;->b:Lcom/badlogic/gdx/graphics/VertexAttributes;

    if-nez v0, :cond_0

    .line 107
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

    sput-object v0, Lcom/nianticproject/ingress/common/scanner/a/b;->b:Lcom/badlogic/gdx/graphics/VertexAttributes;

    .line 112
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/a/b;->b:Lcom/badlogic/gdx/graphics/VertexAttributes;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/nio/FloatBuffer;Ljava/nio/ShortBuffer;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v7, 0x3f80

    .line 129
    iget-short v0, p0, Lcom/nianticproject/ingress/common/scanner/a/b;->f:S

    rem-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    .line 167
    :cond_0
    return-void

    .line 133
    :cond_1
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/a/b;->a()Lcom/badlogic/gdx/graphics/VertexAttributes;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/graphics/VertexAttributes;->vertexSize:I

    div-int/lit8 v2, v0, 0x4

    .line 135
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->position()I

    move-result v0

    iget-short v3, p0, Lcom/nianticproject/ingress/common/scanner/a/b;->f:S

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v3

    if-le v0, v3, :cond_2

    .line 136
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 139
    :cond_2
    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->position()I

    move-result v0

    iget-short v3, p0, Lcom/nianticproject/ingress/common/scanner/a/b;->f:S

    add-int/2addr v0, v3

    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v3

    if-le v0, v3, :cond_3

    .line 140
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/b;->c:Lcom/nianticproject/ingress/common/scanner/a/n;

    iget v3, p0, Lcom/nianticproject/ingress/common/scanner/a/b;->d:I

    invoke-virtual {v0, v3}, Lcom/nianticproject/ingress/common/scanner/a/n;->a(I)Lcom/nianticproject/ingress/common/q/a/t;

    move-result-object v0

    .line 144
    sget-object v3, Lcom/nianticproject/ingress/common/scanner/a/b;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 145
    const/4 v4, 0x0

    sub-float v5, v7, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 147
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/a/t;->a()I

    move-result v5

    if-lez v5, :cond_4

    .line 148
    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/q/a/t;->a(I)I

    move-result v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/a/f;->a(I)F

    move-result v0

    .line 153
    :goto_0
    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 154
    invoke-static {v0, v0, v0}, Lcom/nianticproject/ingress/common/scanner/a/f;->b(FFF)I

    .line 155
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v3

    .line 157
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->position()I

    move-result v0

    div-int/2addr v0, v2

    int-to-short v0, v0

    .line 158
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/b;->c:Lcom/nianticproject/ingress/common/scanner/a/n;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/scanner/a/n;->a()F

    move-result v4

    move v8, v1

    move v1, v0

    move v0, v8

    .line 159
    :goto_1
    iget-short v2, p0, Lcom/nianticproject/ingress/common/scanner/a/b;->f:S

    if-ge v0, v2, :cond_0

    .line 160
    mul-int/lit8 v2, v0, 0x2

    .line 161
    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/a/b;->e:[S

    aget-short v5, v5, v2

    rsub-int v5, v5, 0x1000

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-virtual {p1, v5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 162
    iget-object v5, p0, Lcom/nianticproject/ingress/common/scanner/a/b;->e:[S

    add-int/lit8 v2, v2, 0x1

    aget-short v2, v5, v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 163
    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 165
    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    invoke-virtual {p2, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 159
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    .line 150
    :cond_4
    sget-object v0, Lcom/nianticproject/ingress/common/scanner/a/b;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v5, Lcom/nianticproject/ingress/common/scanner/a/b;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v6, Lcom/nianticproject/ingress/common/scanner/a/b;->a:Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-static {v0, v5, v6}, Lcom/nianticproject/ingress/common/scanner/a/f;->a(FFF)F

    move-result v0

    goto :goto_0
.end method

.method public final b()S
    .locals 1

    .prologue
    .line 124
    iget-short v0, p0, Lcom/nianticproject/ingress/common/scanner/a/b;->f:S

    return v0
.end method
